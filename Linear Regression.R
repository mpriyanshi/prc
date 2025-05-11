# Create a simple linear regression  model using lm() function
# (i) Load Data
# Create a simple dataset
experience<-c(1,2,3,4,5,6,7,8,9,10)    # Independent variable (X)
salary<-c(30,35,40,45,50,55,60,65,70,75)  # Dependent Variable (Y)
# Combine them into a dataframe
data<-data.frame(experience,salary)

# (ii) Visualise the Data
# Scatter Plot of experience vs salary
plot(data$experience,data$salary,main="Experience Vs Salary",
     xlab="Years of Experience", ylab="Salary(in 1000s)",
     pch=16, col="blue")

# (iii) Fit the Linear Regression
model<-lm(salary~ experience, data= data)
model

# (iv) Analyse the model
# Summary of the model
summary(model)

# (v) Visualize the regression line
# Add the regression line to the plot
abline(model, col="red", lwd=2)

# (vi) Make Predictions
# Predict the salary for someone with 12 years of experience
new_data<-data.frame(experience=12)
predicted_salary<-predict(model, new_data)
print(predicted_salary)

# Example 2: Predicting HousePrices based on size
# (i) Load the data
# Sample data: House size(in sq.feet) and prices in (in 1000s dollars)
house_size<-c(1400,1600,1700,1875,1100,1550,2350,2450,1425,1700)
house_price<-c(245,312,279,308,199,219,405,324,319,255)
# Combine into a data frame
data<-data.frame(house_size,house_price)

# (ii) Visualize the data
# Scatter Plot of House Size Vs House Price
plot(data$house_size, data$house_price,
     main="House Size Vs House Price",
     xlab="House Size(sq.feet)",
     ylab="House Price(in 1000s USD)",
     pch=16 ,col="blue")
# (iii) Fit the linear regression model
model<-lm(house_price~ house_size, data=data)
print(model)
# (iv) Analyze  the model
summary(model)

# (v) Visualize the regression Line
#plotting the regression line on the scatter plot
abline(model, col="red", lwd=2)

# (vi) Make Predictions
# Predict the price for a house of size 2000 sq feet 
new_data<-data.frame(house_size=2000)
predicted_price<-predict(model,new_data)
predicted_price

# (vii) Evaluate the Model
# the summary(model) function displays the following 
# (i) Intercept(98.24): When house size is zero, this house price is 
# estimated which is not relevant
# (ii) Slope(0.1097): For every additional sq. feet of house size,the
# price increases by about 0.1097 thousand USD(or $109.7)
# (iii) R-Squared :(0.5808):This means that about 58.08% variation in
# house price is explained by the size of the house
# (iv) p-value(0.010):the small p-value indicates that the house size
# is a significant predictor of the house price
# the coefficient of house_size is significant at 0.05 level



# Multiple Linear Regression
# Example: Predict House Prices based on Size,Bedrooms, and Age,
# Use a  dataset where house price is the dependent variable and,
# house size,number of bedrooms and age of the house are independent variables
#(i) Load the data
# House size in (sq feet), Bedrooms, Age of the house(yrs),
# price(in 1000s USD)
house_size<-c(2100,1600,2400,1416,3000,1985,1530,2200,2600,2100)
bedrooms<-c(5,3,4,2,4,3,3,4,4,5)
house_age<-c(10,15,5,20,2,7,25,8,3,12)
house_price<-c(460,315,420,210,560,410,315,450,525,490)
# combine into a data frame
data<-data.frame(house_size,bedrooms,house_age,house_price)
data
# (ii) Fit the Multiple Regression Model 
model1<-lm(house_price~house_size+bedrooms+house_age,
           data=data)
# (iii) Analyze the model
summary(model1)
# Make Predictions
# Predict the price for a house with 2500 sq.feet, 4 bedrooms, and 10 years old
new_data<-data.frame(house_size=2500, bedrooms=4, house_age=10)
predicted_price<-predict(model1,new_data)
print(predicted_price)

#Evaluate the model
#(i) Intercept_(-35.28) This is baseline house price when all predictor variables are zero(which is not meaninful in our context)
# (ii) House_size coefficient (0.1381):for every a

