### 1 CONDITIONAL STATEMENTS
# IF condition

x<-32
y<-28
if(x>y) {print("x is greater than y")}
if(x<y) {print("x is smaller than y")}
if(x==y) {print("x is equal to y")}

# IF ELSE CONDITION
x1<- 25
if(x1>20) {print(paste(x1, "is greater than 20"))} else {print(paste(x1, "is less than 20"))}

x1<- 15
if(x1>20) {print(paste(x1, "is greater than 20"))} else {print(paste(x1, "is less than 20"))}

# Multiple IF ELSE Conditions
x<- -9
if(x>0) {print(paste("x is a positive number"))} else if(x<0) {print("x is a negative number")
  } else {print("value of x is Zero")}

x<- 5
if(x>0) {print("x is a positive number")} else if(x<0) {print("x is a negative number")
} else {print("value of x is Zero")}

x<- 0
if(x>0) {print("x is a positive number")} else if(x<0) {print("x is a negative number")
} else {print("value of x is Zero")}

## Switch Case 
# Switching based on numeric data
x<-2
result<-switch(x, "grapes", "oranges", "apples")
print(result)

# Switching based on character string
choice<-"b"
result<- switch(choice,"a"="outstanding","b"="Good","c"="Average","Invalid Choice")
print(result)

## LOOPS AND NEXT STATEMENT
# FORLOOP
for(i in 1:15) print(i)

# NESTED FOR LOOP
# NESTED FOR LOOP TO ITERATE OVER A MATRIX
xmat<-matrix(1:9,3,3)
print(xmat)

for(i in 1:nrow(xmat)) {
  for (j in 1:ncol(xmat)) {
    cat(xmat[i,j],"Element is positioned at row", i, "and column", j,"\n")
  }}
  
# Nested for loop to create a multiplication table
xmat1<-matrix(0:0,10,9)
print(xmat1)

for(i in 1:10) {for(j in 1:9){xmat1[i,j]=i*j}}
print(xmat1)

# While loop
i<-121
while (i<=125) {print(i)
  i<- i+1} 

# Repeat statement - infinite loop 
i<-21
repeat{print(i)
  i<-i+1
  if(i>25)
  {break}}

# NEXT STATEMENTS
for (i in 41:45) {
  if(i==43){
    next
  }
  print(i)
}


# BREAK STATEMENTS
for (i in 31:335) {
  if(i==34){
    break
  }
  print(i)
}

