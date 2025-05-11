install.packages(TTR)
library(TTR)

# Simple Moving Averages
data<-c(11,15,13,14,18,16,14,18,19,23)
s<-3                      # Number of periods (or span) for moving average
sma<-SMA(data,n=s)
print(sma)

# Exponential Moving Average (EMA)
data<-c(11,15,13,14,18,16,14,18,19,23)
ema<-EMA(data,n=3)          # Number of periods or span           
results<-signif(ema,4)      # result limited to significant numbers  
print(results)

# Question
data<-c(34,39,77,52,66,98,67,72,98,73,81,101)
# 3 year span
s=3
sma<-SMA(data,n=s)
print(sma)
# 4 year span
s=4
sma<-SMA(data,n=s)
print(sma)

# Plotting moving averages in R
data<-c(34,39,77,52,66,98,67,72,98,73,81,101)
s<-4
sma<-SMA(data,n=4)
print(sma)

plot(data,type = "l",col="blue",main="simple moving average",
     xlab = "Time",ylab = "value")

lines(sma,col="red")
legend("topleft",legend = c("Data","SMA"),col = c("blue",
                                                  "red"))

# Weighted Moving Averages
data<-c(11,18,25,36,42,49,54,62,70)
weights<-c(0.2,0.3,0.5)
wma<-stats::filter(data,filter=weights,sides=1)
print(wma)

