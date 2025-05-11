### FACTORS

# FACTOR VARIABLE FROM A CHARACTER VARIABLE
gender<- factor(c("male","female","male"))
print(gender)

# CREATING BY ADDING VECTOR AS ARGUMENTS
Vgender<-c("male","female","male")
Fgender<-factor(Vgender)
print(Vgender)
print(Fgender)

# Create factor with levels
xlabour<-factor(c("skilled","unskilled","semi-skilled","skilled","unskilled","skilled"),
                levels=c("skilled","semi-skilled","unskilled"))



print(levels(xlabour))

## FACTOR LENGTH
xlength<-length(xlabour)
print(xlength)

## Accessing a factor
print(xlabour[1])
print(xlabour[2])
print(xlabour[3])
print(xlabour[4])
print(xlabour[5])
print(xlabour[6])

## MODIFYING ITEM VALUES IN A FACTOR
xlabour[4]<- "unskilled"
print(xlabour[4])

## MODIFYING ITEMS IN A FACTOR WITH A NEW VALUE
xlabour[4]<-"Fully-Skilled"
print(xlabour[4])
