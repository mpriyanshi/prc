# Sample Data

house_size<-c(2100,1600,2400,1416,3000,1985,1530,2200,2600,2100)
bedrooms<-c(5,3,4,2,4,3,3,4,4,5)
house_age<-c(10,15,5,20,2,7,25,8,3,12)
house_price<-c(460,315,420,210,560,410,315,450,525,490)

# Combine Data
data<-data.frame(house_size,bedrooms,house_age,house_price)

# Fit model
model<-lm(house_price~house_size+bedrooms+house_age,data=data)

# View Summary
summary(model)

# Predict the house with 2500 sq feet,4 bedrooms and 10 years old
new_data<-data.frame(house_size=2500,bedrooms=4,house_age=10)
predicted_price<-predict(model,new_data)
print(predicted_price)

## Confidence Interval
conf_interval<-predict(model,new_data,interval="confidence")
print(conf_interval)

## Prediction Interval
pred_interval<-predict(model,new_data,interval="prediction")
print(pred_interval)


## Customizing the confidence level
conf_interval_99<-predict(model,new_data,interval = "confidence", level = 0.99)
pred_interval_99<-predict(model,new_data,interval = "prediction", level = 0.99)

print(conf_interval_99)
print(pred_interval_99)
