### MATRIX
# SYNTEX TO CREATE MATRIX
# matrix(data, nrow, ncol, byrow, dimnames)

a<-matrix
#Eg
xmat<- matrix(1:15, nrow=3, ncol=5)
print(xmat)
xmat<- matrix(1:15, nrow=3, ncol=5, TRUE)
print(xmat)
xmat<- matrix(1:15, nrow=3, ncol=5, TRUE, dimnames = list(c("row 1", "row2", "row3"),c("A","B","C","D","E")))
print(xmat)

## COMBINING OR JOINING MATRICES = cbind(), rbind()

x<- matrix(1:10,5,2)
print(x)

y<- matrix(11:20,5)
print(y)

z<- cbind(x,y)
print(z)

q<-rbind(x,y)
print(q)

## REMOVING ROWS OF A MATRIX
x<-matrix(1:25,5,5)
print(x)

x<- x[-2,]
print(x)

## REMOVING COLUMN OF A MATRIX
x<-matrix(1:36,6,6)
print(x)

x<-x[,-3]
print(x)

## REMOVING ROWS OR COLUMN USING COMBINE FUNCTION
x<-matrix(1:36,6,6)
print(x)

x<-x[,-c(2,5)]
print(x)

x<-x[-c(1,3),]
print(x)

## REMOVING ROWS AND COLUMNS
# 1 row & column 
x<-matrix(1:36,6,6)
print(x)
x<-x[-2,-3]
print(x)

# removing multiple rows and columns
x<-matrix(1:36,6,6)
print(x)

x<-x[-c(1,3,5),-c(2,5)]
print(x)


## ARITHMETIC OPERATIONS
# ADDITION AND SUBTRACTION
x<-matrix(1:9,3,3)
print(x)
y<-matrix(10:18,3,3)
print(y)

z<-x+y
print(z)

z<-x-y
print(z)

z<-y-x
print(z)

#scalar multiplication
x<-matrix(1:9,3,3)
print(x)
x<-3*x
print(x)

# MULTIPLICATION OF TWO MATRICES ELEMENT WISE - SAME ORDER OR DIMENSION
x<-matrix(1:8,2,4)
print(x)
y<-matrix(8:15,2,4)
print(y)
z<-x*y
print(z)


# MULTIPLICATION between MATRICES USING %*% OPERATOR
x<-matrix(1:12,3,4)
print(x)

y<- matrix(13:24,4,3)
print(y)

z<- x%*%y
print(z)

# MATRIX MULTIPLICATION WITH VECTOR
x<-matrix(1:9,3,3)
print(x)

vector<- c(2:4)
print(vector)

z<- vector*x
print(z)

# MATRIX TRANSPOSE t()
x<-matrix(1:12,3,4)
print(x)

z<-t(x)
print(z)

# MATRIX INVERSION - solve()
x<-matrix(1:4,2,2)
print(x)

install.packages("matlib")
library(matlib)

XINV= inv(t(x))
print(XINV)

# or creating matrix by combining vectors - for linear equations
x1<- c(1,2)
x2<- c(0,1)

x3<- rbind(x1,x2)
print(x3)

XInv<- solve(x3)
print(XInv)

# FINDING DETERMINANTS
x<- matrix(1:9,3,3)
print(x)

D = det(x)
print(D)

