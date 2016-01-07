## Conditional Decision Trees \\\\

# load the package
library(party)
# load data
data(longley)
# fit model
fit <- ctree(Employed~., data=longley, controls=ctree_control(minsplit=2,minbucket=2,testtype="Univariate"))
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, longley[,1:6])
# summarize accuracy
rmse <- mean((longley$Employed - predictions)^2)
print(rmse)
