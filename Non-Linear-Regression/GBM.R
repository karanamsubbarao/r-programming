## Gradient Boosted Machine \\\\

# load the package
library(gbm)
# load data
data(longley)
# fit model
fit <- gbm(Employed~., data=longley, distribution="gaussian")
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, longley)
# summarize accuracy
rmse <- mean((longley$Employed - predictions)^2)
print(rmse)