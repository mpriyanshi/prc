### Measure of central tendency 
## Arithmetic Mean, Median & Mode
## Creating a vector
x<-c(3,7,5,13,20,23,39,23,40,23,14,12,56,23)

# Mean
mean<-mean(x)
print(mean)

# Median
median<-median(x)
print(median)

# Create a frequency table
t1<-table(x)
t1

# Mode
mode_x<-names(t1) [which (t1==max(t1))]
mode_x


## Creating a vector
y<-c(3,7,5,13,20,20,39,23,40,23,14,12,56,23,20)

# Mean
mean(y)

# Median
Median<-median(y)
Median

# Create a Frequency table
t2<-table(y)
t2

# Mode
mode_y<-names(t2) [which (t2==max(t2))]
mode_y

## Creating a vector
z<-c(3,7,5,13,20,20,39,23,25,25,40,23,14,12,56,23,20,25)

# Mean
mean(z)
print(paste("The mean of the vector z is",mean(z)))

# Median
median(z)
print(paste("The median of the given data is",median(z)))

# Create a frequency table
t3<-table(z)
t3      

# Mode
mode_z<-names(t3) [which(t3==max(t3))]
mode_z

### Mode using function from the data frame
## Creating a data frame
