### LIST
# EG
list<- list(name="jacob",age="21", scores = c(96,95,98,97))
print(list)

l1<- list(name="peter", age =20,scores = c(12,25,64,98))
print(l1)

## APPEND VALUES TO LIST - 3 METHODS
## Appenidng values using append function
l1<- list(c(11,12,13,14,15),"Harley")
print(l1)

va<-c(101,102)

l2<- append(l1,va)
print(l2)

l1<- list(c(11,12,13,14,15),"Harley")
print(l1)
values<- c(101,102)
l2<- append(values,l1)
print(l2)

# APPEND A SINGLE VALUE TO A LIST
xlist<- list(c(11:15))
print(xlist)

xlist[[length(xlist)+1]]=16
print(xlist)

# Append multiple values to a list by using loop function - for (i in values) {xlist[[length(xlist)+1]]=i}

xlist<- list(c(11:15), "HARLEY")
print(xlist)

values<- c(101,102)
for(i in values){xlist[[length(xlist)+1]]=i}
print(xlist)

## Remove elements from a list - 4 methods
# Using(-) method: xlist[-number]
xlist<- list(name="Anuj", age=32, marks=c(11,14,15,17))
print(xlist)

ylist<- xlist[-1]
print(ylist)

zlist<- xlist[-2]
print(zlist)

alist<- xlist[-c(1,2)]
print(alist)

# Using NULL assignment : ylist[]<-NULL
xlist<- list(name="Anuj", age=32, marks=c(11,14,15,17))
print(xlist)

ylist<-xlist   #duplicate list
print(ylist)

ylist[c(1,2)]<- NULL
print(ylist)

# using %in% operator
xlist<- list(name="Anuj", age=32, marks=c(11,14,15,17))
print(xlist)

ylist<- xlist[names(xlist) %in% "age"==FALSE]
print(ylist)

# USING != OPERATOR
xlist<- list(name="Anuj", age=32, marks=c(11,14,15,17))
print(xlist)

ylist<-(names(xlist) !="age")
print(ylist)
ylist<- xlist[ylist]
print(ylist)

