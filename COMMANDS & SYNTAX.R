### commands & Syntax

# Relational operations
x<-7  
y<-5
x==y
#or
Is_equal <- x==y
Is_equal

x>y
#or
IS_GREATER<-x>y
IS_GREATER
print(IS_GREATER)

y<x
#or
IS_LESS<-y<x
IS_LESS
print(IS_LESS)

## SEQUENCE GENERATION
seq1<-(1:10)
print(seq1)
# or
1:10

seq2<-seq(1,10, by=2)
print(seq2)
# or
seq3<-seq(1,10,2)
print(seq3)

## SUBSETTING

# VECTOR SUBSETTING
vect<- c(1:10)
print(vect)

vect[1]
vect[2:6]
vect[-4]

#OR
vect1<-vect[1]
print(vect1)
vect2<-vect[2:6]
print(vect2)
vect3<-vect[-4]
print(vect3)

# DATA FRAME SUBSETTING
