## APPLY FUNCTIONS
# APPLY()
mymatrix<-matrix(1:9,3,3)
print(mymatrix)
rowsums<-apply(mymatrix,1,sum)
print(rowsums)

# lapply()
mylist<-list(1,2,3,4,5)
print(mylist)
squaredlist<-lapply(mylist,function(x)x^2)
print(squaredlist)

# tapply()
x<-1:10
print(x)
f<-factor(rep(c("A","B"),5))
print(f)
means<-tapply(x,f,mean)
print(means)
