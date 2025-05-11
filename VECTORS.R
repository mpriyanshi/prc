### VECTORS c() function
#Eg
X<- c(11, 22, 25, 36, 45)

## TYPES
# NUMERIC
X<- c(3, 15, 26, 17)
typeof(X)
class(X)
Y<- c(1L, 7L, 9L, 6L)
typeof(Y)
class(Y)

# CHARACTER
x<- c("ankt", 45, "sahil", "anil", 56)
typeof(x)
class(x)

# LOGICAL VECTOR
x<- c(TRUE, FALSE, TRUE, NA)
typeof(x)

# LENGTH OF A VECTOR
x<- c(1,2,3,4,5)
length(x)

x<- c("oranges", "apples", "mangoes")
length(x)

z<- c(TRUE, FALSE, TRUE, NA)
length(z)

## ACCESSING VECTOR ELEMENTS - [ ]
x<- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 5, 2, 5, 4, 5)
print(x[5])
print(x[5])
## ACCESSING USING COMBINE FUNCTION
print(x[c(7,10)])

## Modifying a vector
x<-c(2,7,9,7,8,2)
x[3]<- 4
print(x)
x[5]<- 10
print(x)
x[7:15]<-10
x

# Modify using different logics
x<- 11:50
print(x)
x[4:7]<- 0
print(x)

# Modify by specifying the position
x<- 11:20
print(x)
x[c(1,3,5,7,9)]<- 0
print(x)
x[c(1,3,5)]<- 0
print(x)

## Deleting a vector
x<- c(8,10,2,5,6)
print(x)
x<-NULL
print(x)

## Sorting elements of a vector
x<- c(9,3,6,2,12,3)
print(x)
a<- sort(x)
print(a)

# to sort in decreasing oreder
x<- c(9,3,6,2,12,3)
print(x)
b<- sort(x, decreasing= TRUE)
print(b)
