# Load the data
data(mtcars)
View(mtcars)

# fit the model
model<-lm(mpg~wt+hp+cyl,data= mtcars)

# Summary
summary(model)

# Plot residuals vs fitted values
plot(model$fitted.values, residuals(model), main = "Residual vs Fitted values",
     xlab= "fitted values", ylab = "residuals")

abline(h=0, col="red")

# Breusch-Pagan Test
install.packages("lmtest")
library(lmtest)

# Perform Test
bptest(model)

#  Correcting Heteroscedacity 
# Log-transform the dependent variable (mpg)
model_log<- lm(log(mpg)~wt+hp,data=mtcars)

# Summary of the new model
summary(model_log)

# Correlation matrix for selected variables
cor_matrix<-cor(mtcars[, c("wt","hp","cyl")])

# Variance Inflation Factor
# Install  & load car package

# Calculate VIF values for the model
vif_values<- vif(model)
print(vif_values)

# Addressing the Multicollinearity
# i. Remove highly correlated predictors
# refit the model without hp 
model_reduced<-lm(mpg~wt+cyl, data = mtcars)

# Summary of new model
summary(model_reduced)

# Check VIF 
vif(model_reduced)

# ii. Combining Variables
# Create a new variable as combination of cyl and hp
mtcars$cyl_hp_index<-mtcars$cyl*mtcars$hp

# Fit a model using new variable
model_combined<-lm(mpg~cyl_hp_index+wt,data = mtcars)

# Summary
summary(model_combined)

# Check Vif
vif(model_combined)



