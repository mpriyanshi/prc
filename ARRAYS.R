### ARRAY
## AN ARRAY IS A DATA structure which can store data of same type in more than 2 dimensions. The only difference between vectors matrices and arrays are as follows
## 1 vectors are uni-dimensional arrays.
## 2 matrices are 2 dimensional arrays.
## 3 arrays can have more than 2 dimensions.

## Creating an array - array(vector, dim=c(nrow, ncol, nmat))
## nmat is the number of matrices nrow*ncol dimensions

# Eg  create two 2 by 3 matrix
array1<-array(c(1:12),dim=c(2,3,2))
print(array1)

## Accessing array elements []- array[n1,n2,mat_level] = n1=row, n2=column, mat_level=which matrix
array1<-array(c(1:12),dim=c(2,3,2))
print(array1)  

print(array1[1,3,2])

# OR
cat("\nDesired Element:",array1[1,3,2])

## Accessing entire row or column - [c(n),,matlevel], [,c(n),matlevel]
array1<-array(c(1:12),dim=c(2,3,2))
print(array1) 

print(array1[c(1),,2])
## OR
cat("\n1st Row Elements of 2nd Matrix:", array1[c(1),,2])

print(array1[,c(2),1])
## OR
cat("\n2nd column Elements of 1st Matrix;", array1[,c(2),1])

## check if Elements exists - using %in% operator
array1<- array(c(1:12),dim=c(2,3,2))
print(array1)   

11 %in% array1
13 %in% array1

## Length of Array
array1<- array(c(1:12),dim=c(2,3,2))
print(array1)   
print(length(array1))

## OR
cat("Total Elements:", length(array1))
      
    