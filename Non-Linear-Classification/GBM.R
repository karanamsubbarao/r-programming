## Gradient Boosted Machine \\\\

# load the package
library(gbm)
# load data
data(iris)
# fit model
fit <- gbm(Species~., data=iris, distribution="multinomial")
# summarize the fit
print(fit)
# make predictions
predictions <- predict(fit, iris)
# summarize accuracy
table(predictions, iris$Species)