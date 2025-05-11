### DATA FRAMES

# EG
df<- data.frame(
  Name = c("sonu", "monu"),
  Age = c(22,24),
  Gender = c("MALE", "FEMALE"))
print(df)

## ACCESS ITEMS OF DATA FRAME
df<- data.frame(
  NAME= c("sonu", "monu"),
  age = c(22,24),
  GENDER = c("MALE", "FEMALE")
)
print(df)

# using [] column wise
x<- df[1]
print(x)

# using [[]] row wise result
y<- df[["age"]]
print(y)

# using $ SYMBOL row wise result
z<-df$GENDER
print(z)

## ADDING A ROW :- rbind()
df<- data.frame(
  NAME= c("sonu", "monu"),
  age = c(22,24),
  GENDER = c("MALE", "FEMALE")
)
print(df)
A<-c(NAME="Amit","27","MALE")
df<- rbind.data.frame(df,A)
print(df)


## ADDING A COLUMN :- cbind()
df<- data.frame(
  NAME= c("sonu", "monu"),
  age = c(22,24),
  GENDER = c("MALE", "FEMALE"))
print(df)
Region<- c("north", "south", "east")
df<- cbind(df,Region)
print(df)

# OR

df<- cbind(df,class=c("BCH","BCP","BMS"))
print(df)

## REMOVE ROWS & COLUMN
df<- df[-c(1),(2)]
print(df)

## STRUCTURAL SIZE OF DATA FRAME
Size<- dim(df)
print(Size)

## LENGTH OF DATA FRAME
ncol(df)
nrow(df)
length(df)

## Combining data frames and accessing data frames
df1<- data.frame(
  soldby=c("Anuj","Vimal","Rachna"),
  products=c("watches","window ac","Iphone"),
  Qty=c(20,15,36)
)
print(df1)

df2<- data.frame(
  soldby=c("Megha","ananya","aiti"),
  products=c("laptops","desktops","Ipad"),
  Qty=c(30,30,20))
print(df2)

df3<- rbind(df1,df2)
print(df3)

df4<- cbind(df1,df2)
print(df4)

## ACCESS AND PRINT SPECIFIC ELEMENTS OF DATA FRAMES - EG - ELEMENT IN ROW3 AND COLUMN 2
print(df4[3,2])
