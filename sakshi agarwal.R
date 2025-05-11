# Basics of R

#ASSIGNING THE VALUES
x<-22
y<-54

# BASIC OPERATORS
sum <- x+y
diff <- x-y
product <- x*y
quotient <- x/y
rem <- x%%y

rem <- x%y # syntax error- due to incorrect operator

#DATA TYPES IN R

#1 NUMERIC
num <- 10.5
#TO CHECK THE DATA TYPE
class(num)
typeof(num)
class(NUM) # SYNATX ERROR AS R STORED NUM IN lower case

#2 INTEGER
int<- 100L
class(int)
typeof(int)

#3 CHARACTER
text<- "Business"
class(text)
typeof(text)

#4 LOGICAL
logical<- TRUE
class(logical)
typeof(logical)

#5 COMPLEX- 4+3i
comp<- 4+3i
class(comp)
typeof(comp)

# DATA STRUCTURES IN R

#1 VECTOR
X<- c(10, 20, 30, 40, 50)

#USING SEQ FUNCTION
seq(1, 20, by=3)  #A.O.
seq(20, 1, by=-3)  #D.o.

seq(1, 20 by=3)  # syntax error

# seq function default
seq(1, 20)   #A.O.
seq(20,1)    #D.O.

#SEQUENCE FUNCTION WITH DEFINED LENGTH
L<- seq(1, 20, length=6)

#TYPES OF VECTORS
#1 NUMERIC VECTOR
Y<- c(2,3,4,5,8,9)

#CHARACTER VECTOR
P<- c("BUSINESS", "ANALYTICS", "BCOM", "DU")

#LOGICAL VECTOR
W<- c(TRUE, FALSE)

Q<- c("ABC", "PQR")

#IMPORTANT VECTOR COMMANDS

#1 TO DATA TYPE 
class(Y)
class(P)
class(W)

#2 LENGTH OF VECTOR
length(Y)

#3 ACCESS SPECIFIC ELEMENTS IN VECTOR
print(Y[3])

print(Y[2, 5]) #syntax error

print(Y[c(2, 5)])

print(Y[c(2:5)])

#modify vector
Y[3]<-10
print(Y)

#DELETE A VECTOR
Q<- NULL
print(Q)

#SORTING THE VECTOR
Z<- c(9, 12, 14, 15, 19, 5, 6)

#a.o.
ZZ<- sort(Z)

#D.O.
YY<- sort(Z, decreasing = TRUE)



#2 LIST
#creating a list

mylist<- list(name="RAM", age= 24, scores=c(94, 54, 12, 63))
print(mylist)


#ADDING ELEMENTS
 #creating a new list
mylist<- list(1, "NEW", TRUE)

newlist<- append(mylist, "ANALYTICS")
print(newlist)

# adding elements in existing list at specific position
updatedlist<- append(mylist, "business", after=2)

#remove elements from list 
print(mylist)

alist<- mylist[-2]
print(alist)

blist<- mylist[-c(2, 3)]
print(blist)

#3 DATA FRAME

dr<- data.frame(
  Name= c("RAM", "MOHAN", "SITA", "ROHAN"),
  Age= c(24, 26, 28, 30),
  Gender= c("male", "male", "female", "male")
)

print(dr)

#ACESSING SPECIFIC ELEMENT FROM DATA FRAME
p<- dr$Gender
print(p)

# TO ADD ROWS IN EXISTING DATAFRAME- rbind
dr<- rbind(dr, c("amit", 30, "male"))
print(dr)

#TO ADD COLUMNS IN EXISTING DATAFRAME- cbind
dr<- cbind(dr, Zone= c("east", "west", "north", "south", "east"))
print(dr)

#REMOVE A ROW AND COLUMN
dr<- dr[-1, -1]
print(dr)

#DATA FRAME INFO

# SIZE OF DATAFRAME
dim(dr)
# TO know no. of rows in dataframe
nrow(dr)
# TO know no. of columns in dataframe
ncol(dr)
#length of data frame
length(dr)

# TO COMBINE TWO OR MORE DATA FRAMES

df1<- data.frame(
  Name= c("RAM", "SHYAM", "MOHAN", "SITA"),
  Age= c(24, 25, 47, 36),
  Zone= c("east", "west", "north", "south")
)

df2<- data.frame(
  Name= c("Megha", "Aman"),
  Age= c(24, 32),
  Zone= c("East", "north")
)

#Combining vertically- rbind function

df<- rbind(df1, df2)
print(df)

df1<- data.frame(
  Name= c("RAM", "SHYAM", "MOHAN", "SITA"),
  Age= c(24, 25, 47, 36),
  Zone= c("east", "west", "north", "south")
)

df3<- data.frame(
  Class= c("ug", "pg", "phd", "ug"),
  gender= c("male", "male", "male", "female")
)
#combine horizontally - cbind

newdf<- cbind(df1, df3)
print(newdf)


#FACTORS

colors <- c("red", "blue", "green", "red", "green", "blue", "red")
# creating a factor variable from character vector
colorfactor<- factor(colors)
print(colorfactor)

#checking levels
levels(colorfactor)


#specifying levels manually
colorfactor1<- factor(colors, levels= c("red", "blue", "green"))
print(colorfactor1)


#ORDERED FACTOR
education<- c("bachelor", "masters", "phd", "highschool", "masters", "bachelor")

#ORDERED FACTOR 
edufactor<- factor(education, levels = c("highschool", "bachelor", "masters", "phd"), ordered= TRUE)
print(edufactor)

#length of factor
length(edufactor)

# access specifc item
print(edufactor[2])
print(edufactor[4])


# Modifying values in factor
#4th element replace with intermediate
edufactor[4]<-"Intermediate"
print(edufactor)

edufactor[4]<-"phd"
print(edufactor)

#5 MATRICES
SYNTAX- matrix(data, nrow, ncol, byrow = TRUE, dimnames)

amatrix<- matrix(1:20, nrow = 4, ncol = 5)
bmatrix<- matrix(1:20, nrow = 4, ncol = 5, byrow = TRUE)
print(amatrix)
print(bmatrix)

#combining two or more matrices
#combining matrices row-wise- rbind function
rmatrix<- rbind(amatrix, bmatrix)
print(rmatrix)

#combining matrices column-wise- cbind function
cmatrix<- cbind(amatrix, bmatrix)
print(cmatrix)

#removing rows in matrix
W<- matrix(1:16, 4, 4)
print(W)

#DELETING 3RD ROW IN MATRIX
W<- W[-3,]
print(W)

#DELETING 1ST AND 2ND ROW
w<- W[-c(1,2),]
print(w)

#removing coulumns in matrix
m<- matrix(1:25, 5,5)
print(m)
#removing 2nd column
m<- m[, -2]
print(m)
#removing 1st & 4th column
m<- m[,-c(1, 4)]
print(m)


#removing row and column in matrix
p<- matrix(1:36, 6, 6)
print(p)

#removing 3rd row & 5th column
p<- p[-3,-5]
print(p)

#removing 3rd & 5th row as well as 4th and 5th column
p<- p[-c(3,5), -c(4,5)]
print(p)


#arithmetic in matrices
X1<- matrix(1:20, 4, 5)
print(X1)
X2<- matrix(21:40, 4, 5)
print(X2)

#addition
X3<- X1+X2
print(X3)

#SUBTRACT
X4<- X1-X2
print(X4)

#SCALAR MULTIPLICATION
X5<- 3*X1
print(X5)

#MATRIX MULTIPLICATION
X<- matrix(1:6, 2, 3)
Y<-matrix(1:12, 3, 4)
print(X)
print(Y)
#multiplying the matrices
z<- X%*%Y
print(z)


#Transpose of matrix
X<- matrix(1:6, 2, 3)
T<- t(X)
print(T)


#DETERMINANT OF MATRIX- SQ MATRIX

Q<- matrix(1:9, 3, 3)
print(Q)
D<- det(Q)
print(D)
