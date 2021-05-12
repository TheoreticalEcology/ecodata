data = titanic_ml

# ml model with test and training dataset -------------------------------------------------
summary(data)
length(unique(data$name))



# preparing dataset -------------------------------------------------
first_split = sapply(data$name, function(x) stringr::str_split(x, pattern = ",")[[1]][2])
titles = sapply(first_split, function(x) strsplit(x, ".",fixed = TRUE)[[1]][1])

table(titles)

library(stringr)
library(forcats)
library(dplyr)
titles = stringr::str_trim((titles))
titles %>%
  fct_count()

# minimizing name parameter "optional" -------------------------------------------------
""
titles2 =
  forcats::fct_collapse(titles,
                        officer = c("Capt", "Col", "Major", "Dr", "Rev"),
                        royal = c("Jonkheer", "Don", "Sir", "the Countess", "Dona", "Lady"),
                        miss = c("Miss", "Mlle"),
                        mrs = c("Mrs", "Mme", "Ms"))
titles2 %>%
  fct_count()

data =
  data %>%
  mutate(title = titles2)
(sum(is.na(data$age))/nrow(data))
""

# removing NAs in dataframe ----------------------------------------------------
data =
  data %>%
  group_by(sex, pclass, title) %>%
  mutate(age2 = ifelse(is.na(age), median(age, na.rm = TRUE), age)) %>%
  mutate(fare2 = ifelse(is.na(fare), median(fare, na.rm = TRUE), fare)) %>%
  mutate(body2 = ifelse(is.na(body), median(body, na.rm = TRUE), body)) %>%
  ungroup()


summary(data)
data <- data %>% mutate(boat2 = ifelse(boat=="", "noboat", "boat"))



# bilding dataset for ml-model -------------------------------------------------
library(keras)
library(tensorflow)
data_sub =
  data %>%
  select(survived, sex, age2, fare2, title, pclass, boat2) %>%
  mutate(age2 = scales::rescale(age2, c(0,1)), fare2 = scales::rescale(fare2, c(0,1))) %>%
  mutate(sex = as.integer(as.factor(sex)) - 1L, title = as.integer(title) - 1L, boat2 = as.integer(as.factor(boat2))-1L,
         pclass = as.integer(pclass - 1L))


# k one hot encoding -----------------------------------------------------------
one_boat2 = k_one_hot(data_sub$boat2,  length(unique(data$boat2)))$numpy()
colnames(one_boat2) = paste0(1:length(unique(data$boat2)), "boat")


one_title = k_one_hot(data_sub$title, length(unique(data$title)))$numpy()
colnames(one_title) = levels(data$title)

one_sex = k_one_hot(data_sub$sex, length(unique(data$sex)))$numpy()
colnames(one_sex) = levels(data$sex)

one_pclass = k_one_hot(data_sub$pclass,  length(unique(data$pclass)))$numpy()
colnames(one_pclass) = paste0(1:length(unique(data$pclass)), "pclass")

data_sub = cbind(data.frame(survived= data_sub$survived), one_title, one_sex, age = data_sub$age2, fare = data_sub$fare2, one_pclass, one_boat2)




# splitting data ---------------------------------------------------------------
#' splitting into survived is NA/ not NA
train = data_sub[!is.na(data_sub$survived),]
test = data_sub[is.na(data_sub$survived),]

indices = sample.int(nrow(train), 0.7*nrow(train))
sub_train = train[indices,]
sub_test = train[-indices,]


# building the model -----------------------------------------------------------
#' adding multipli hidden layers and neurons
#' L1 & L2 regularization
model = keras_model_sequential()
model %>%
  layer_dense(units = 20L, input_shape = ncol(sub_train) - 1L, activation = "relu", kernel_regularizer = regularizer_l1_l2(0.05)) %>%
  layer_dense(units = 20L, activation = "gelu") %>%
  layer_dense(units = 20L, activation = "sigmoid") %>%
  layer_dense(units = 20L, activation = "relu") %>%
  layer_dense(units = 20L, activation = "softmax") %>%
  layer_dense(units = 20L, activation = "gelu") %>%
  layer_dense(units = 20L, activation = "relu") %>%
  layer_dense(units = 2L, activation = "softmax")
summary(model)


# compiling the model ----------------------------------------------------------
model_history =
  model %>%
  compile(loss = loss_categorical_crossentropy, optimizer = keras::optimizer_adamax(0.01))

# fitting the model ------------------------------------------------------------
model_history =
  model %>%
  fit(x = as.matrix(sub_train[,-1]), y = to_categorical(as.integer(unlist(sub_train[,1])),num_classes = 2L), epochs = 100L, batch_size = 32L, validation_split = 0.2, shuffle = TRUE)


# evaluating the model on sub-test-data -------------------------------------------
preds =
  model %>%
  predict(x = as.matrix(sub_test[,-1]))

predicted = ifelse(preds[,2] < 0.5, 0, 1)
observed = sub_test[,1]
(accuracy = mean(predicted == observed))


# evaluating the model on test-data -------------------------------------------
test
submit =
  test %>%
  select(-survived)

pred = model %>%
  predict(as.matrix(submit))


summary(pred)
