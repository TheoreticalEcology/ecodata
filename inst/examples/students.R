students_df <- students
head(students_df)


# factorize variables -------------------------------------------------
students_df$school = as.factor(students_df$school)
students_df$sex = as.factor(students_df$sex)
students_df$age = as.factor(students_df$age)



# plotting variables -------------------------------------------------
plot(students_df$G1.x, students_df$G1.y)
abline(a = 1, b = 1, col = "red")

plot(students_df$G2.x, students_df$G2.y)
abline(a = 1, b = 1, col = "red")

plot(students_df$G3.x, students_df$G3.y)
abline(a = 1, b = 1, col = "red")


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(G2.x ~  school + sex + age, family = gaussian ,data = students_df)
summary(fit)


library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testQuantiles(res)
