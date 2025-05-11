## PACKAGES AND LIBRARIES

## defining functions
MyFunc<-function(a,b){
  result<-a+b
  return(result)
}
x=MyFunc(3,5)
print(x)
x

## ANONYMOUS FUNCTION
y=(function(x)x^3)(4)
print(y)

### BASIC MATHEMatical function

x<- c(1:10)
print(x)

sum(x)
prod(x)
diff(x)

## Logarithmic and Exponential Functions
x<-10
log(x)
log10(x)
exp(x)

## POWER AND ROOTS
x<-16
sqrt(x)
x^2


## BASIC GRAPHICS
vec<-c(20,30,40,50)
print(vec)
plot(vec)
hist(vec)

## CREATING A CHART
x<-c(60,80,100,120,140,150)     # income in laks
y<-c(15,22,28,35,45,50)         # direct taxes in lakhs
z=cbind(x,y)
plot(x,y,
     main="Scatterplot of Income and direct tax",
     xlab="Income(lakh of rupees)",
     ylab="Direct Tax (lakh of rupess)",
     col="blue",
     pch=19)
     abline(1m(y~x),col="red")
print(z)
plot(x,y)

## BOX PLOT
boxplot(x, col="green")
## BAR PLOT
barplot(x, col="yellow")

