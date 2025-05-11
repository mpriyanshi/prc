###   MEASURES OF DISPERSION
##  DISTANT MEASURES
#   1. RANGE
data<-c(3,7,8,5,12,10,15)
# Calculate Range
range_value<-range(data)
print(range_value)

range_diff<-diff(range_value)
print(range_diff)

max_value<-max(data)
min_value<-min(data)
coef_range<-range_diff/(max_value+min_value)
print(coef_range)

#   2. Inter-Quartile Range
data<-c(3,7,8,5,12,10,15)
# Calculate IQR
iqr_value<-IQR(data)
print(iqr_value)

Quartiles<-quantile(data)
print(Quartiles)

# Measures of quartile deviation
Q1<- quantile(data,0.25)
print(Q1)

Q3<- quantile(data,0.75)
print(Q3)

coef_QD<- iqr_value/(Q1+Q3)
print(coef_QD)

# Import Dataset
Data1<-read_excel("E:/UNIT - 4 ANALYTICS/Descriptive Statistics Question.xlsx")

# Calculate range
range<-sapply(Data,max,na.rm=TRUE)-
  sapply(Data,min,na.rm=TRUE)
print(range)

Sum_Quartiles<-sapply(Data,max,na.rm=TRUE)+
  sapply(Data,min,na.rm=TRUE)
print(Sum_Quartiles)

Coef_range<-Sum_Quartiles/range
print(Coef_range)


# Calculate IQR
iqr_value<-sapply(Data,IQR)
Quartiles<-sapply(Data,quantile)
print(iqr_value)
print(Quartiles)

# Measures of quartile deviation
Q1<-sapply(Data,quantile,0.25)
Q3<-sapply(Data,quantile,0.75)
iqr_value<-sapply(Data,IQR)
Coef_QD<-iqr_value/(Q1+Q3)

# Print measures of range and quartiles
print("Ranges for all companies")
print(range)
print("Coeeficients of all companies")
print(Coef_range)
print("IQR=")
print(iqr_value)
print("Quartiles are:=")
print(Quartiles)
print("Quartiles-1")
print(Q1)




## Average Deviation Measures
# 1. Variance
data<-c(3,8,7,5,10,12,15)
# Calculate Variance
var_value<-var(data)
print(var_value)

# 2. Standard deviation
data<-c(3,8,7,5,10,12,15)
# Calculate Standard deviation
sd_value<-sd(data)
print(sd_value)

# Coefficient of Variation
data<-c(3,8,7,5,10,12,15)
# Calculate coefficient of variation
sd_value<-sd(data)
mean_value<-mean(data)
coef_var<-sd_value/mean_value
print(sd_value)




#  3. Mean Absolute Deviation
data<-data<-c(3,7,8,5,12,10,15)
# Compute the Mean Absolute Deviation
mean_data<-mean(data)
abs_deviations<-abs(data-mean_data)
MAD<-mean(abs_deviations)
print(MAD)

#  4. Median Absolute Deviation
data<-c(3,7,8,5,12,10,15)
# Compute the Median Absolute Deviation
median_data<-median(data)
abs_deviations<-abs(data-median_data)
median_deviation<-abs_deviations
print(median_deviation)

# Compute the Median Absolute Deviation using mad() function
mad_scaled<-mad(data)    # Scale factor- 1.4826
print(mad_scaled)

mad_unscaled<- mad(data,constant=1)
print(mad_unscaled)


# Question 7.1

sd_value<-sapply(Data1,sd)
print(sd_value)

mean_value<-sapply(Data1,mean)
print(mean_value)

coef_var<-sd_value/mean_value
print(coef_var)

mad_value<-sapply(Data1,mad)
print(mad_value)
