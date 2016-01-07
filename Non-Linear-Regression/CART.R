## Classification and Regression Trees \\\\

# load the package
library(rpart)
# load data
data(longley)
# fit model
fit <- rpart(Employed~., data=longley, control=rpart.control(minsplit=5))
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, longley[,1:6])
# summarize accuracy
rmse <- mean((longley$Employed - predictions)^2)
print(rmse)