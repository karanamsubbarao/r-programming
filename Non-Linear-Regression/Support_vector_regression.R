## Support vector Regression \\\\

# load the package
library(kernlab)
# load data
data(longley)
# fit model
fit <- ksvm(Employed~., longley)
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, longley)
# summarize accuracy
rmse <- mean((longley$Employed - predictions)^2)
print(rmse)