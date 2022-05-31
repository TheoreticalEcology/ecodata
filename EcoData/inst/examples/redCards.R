redCards_df <- redCards
head(redCards_df)

str(redCards_df)

# preparing data -------------------------------------------------

redCards_df$mrater <- apply(FUN=mean, X=redCards_df[,which(grepl(
                  x=colnames(redCards_df),pattern = "rater"))], MARGIN = 1)

redCards_df <- redCards_df[which(!is.na(redCards_df$mrater)),]
redCards_df$refNum = as.factor(redCards_df$refNum)

## ..................................
library(glmmTMB)
fit <- glmmTMB(redCards ~ scale(mrater) + (1|playerShort)  + (1|refNum),
               data = redCards_df, family= nbinom2,
               dispformula = ~ 1,
               ziformula = ~ 1)

summary(fit)


## ..................................
library(DHARMa)
res <- simulateResiduals(fit)
res


testQuantiles(res)
testOutliers(res)
testZeroInflation(res)
