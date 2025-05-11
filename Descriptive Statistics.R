# Example 7.1
library(readxl)

Data<-read_excel("E:/UNIT - 4 ANALYTICS/Descriptive Statistics Question.xlsx")
View(Data)

# Central Tendency measures

mean_value<-mean(Data)
print(mean_value)

weighted_AM<-weighted.mean(Data)
print(weighted_AM)

hm<-harmonic.mean(Data)
print(hm)

# Arithmetic mean (sapply function)
AM_values<-sapply(Data,mean,na.rm=TRUE)
print(AM_values)

# Harmonic mean
HM_values<-sapply(Data,harmonic.mean,na.rm=TRUE)
print(HM_values)

# Geometric mean
GM_values<-sapply(Data,geometric.mean,na.rm=TRUE)
print(GM_values)

# Quartile
Quartile<-sapply(data,quantile,na.rm=TRUE)
print(Quartile)

# Median
Median<-sapply(data,median,na.rm=TRUE)
print(Median)


# Script code- Summary statistics, skewness, kurtosis and standard deviation
install.packages("e1071")
library(e1071)

# Summary
Summary<-summary(Data)
print(Summary)

# Skewness
Skew_values<-sapply(Data,skewness,na.rm=TRUE)
print(Skew_values)

# Kurtosis
Kurt_values<-sapply(Data,kurtosis,na.rm=TRUE)
print(Kurt_values)

# Standard Deviation
sd_values<-sapply(Data,sd,na.rm=TRUE)
print(sd_values)
