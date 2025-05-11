### MATHEMATICAL AVERAGES
## MEASURES OF CENTRAL TENDENCY
## ARITHMETIC MEAN
data<-c(13,17,31,35,44)
print(data)

mean_value<-mean(data)
print(mean_value)

## WEIGHTED MEAN
values<- c(13,17,31,35,44)
weights<-c(2,3,3,1,1)

weighted_AM<- weighted.mean(values,weights)
print(weighted_AM)

## GEOMETRIC MEAN
data<-c(1,4,16)
print(data)
# Formula
GM_value<-prod(data)^(1/length(data))
print(GM_value)

install.packages("psych")
library("psych")
# psych
GM_value<-geometric.mean(data)
print(GM_value)

Dataset_CreditLimit<-read_excel("E:/221281/Dataset-CreditLimit.xlsx")
View(Dataset_CreditLimit)

## Harmonic Mean
# It is a reciprocal of arithmetic mean of reciprocals of the data set values.
# m/1x
# psych
Data<-c(1,5,5,10)
HM_value<-harmonic.mean(Data)
print(HM_value)
# Formula
harmonic_mean<- length(Data)/sum(1/Data)
print(harmonic_mean)

