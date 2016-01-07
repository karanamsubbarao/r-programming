## K nearest neighbour \\\\

# load the package
library(caret)
# load data
data(longley)
# fit model
fit <- knnreg(longley[,1:6], longley[,7], k=3)
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, longley[,1:6])
# summarize accuracy
rmse <- mean((longley$Employed - predictions)^2)
print(rmse)

