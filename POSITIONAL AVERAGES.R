## POSITIONAL AVERAGES
# Illustrations
# Median
data<-c(11,14,18,22,23)
median_value<-median(data)
print(median_value)

# Quartiles
data<-c(11,14,18,22,25,29,33,37)
Quartiles<-quantile(data,probs=c(0.25,0.50,0.75)) 
print(Quartiles)

# Percentiles
data<-c(11,14,18,22,25,29,33,37)
percentiles<-quantile(data,probs=c(0.1,0.5,0.9))
print(percentiles)

# Deciles
data<-c(11,14,18,22,25,29,33,37)
Deciles<-quantile(data,probs=c(seq(0.1:0.9,by=0.1)))
print(Deciles)

# Mode
x<-c(13,17,17,18,18,18,15,12,22,26,29,35)
Mode<-function(x) {
  unique_x<-unique(x)
  freq<-tabulate(match(x, unique_x))
  Mode<- unique_x[freq==max(freq)]
  return(Mode)
}

Mode<- Mode(x)
print(Mode)
