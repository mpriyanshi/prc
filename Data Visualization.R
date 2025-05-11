## Data Visualizations using R

## Histograms
data("iris")
View(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Length, col="steelblue")
hist(iris$Sepal.Width,col="red")
hist(iris$Sepal.Width, col="yellow")

# Specifying Heading as main, Label of x and y axis as xlab and y lab, col as the colour
hist(iris$Petal.Length,
     main="Histogram",
     xlab="Length",
     ylab="Frequency",
     col="red")

## Box plot
data("iris")
view(iris)
boxplot(iris$Sepal.Length)

# Specifying Heading as main, Label of x and y axis as xlab and y lab, col as the colour
boxplot(iris$Petal.Length,
        main="Petal Length",
        xlab="species",
        ylab="Petal length",
        col="pink",
        border="red")

# Line Plot
#Line Plot with single series of data
#Plot a vector
l1<- c(7,12,28,3,41)
plot(l1)
#Plot a vector using points
plot(l1,type = 'p')
#Plot a vector using lines
plot(l1,type = 'l')
#Plot a vector using both points and lines
plot(l1,type = 'o')

#Plot a vector using both points and lines with color
l2<- c(1,2,8,13,40)
plot(l2,type = 'o', col='red')
#Plot a vector using both points and lines with color, heading, labelof the x & y axis.
l3<-c(5,2,11,7,20,15,22,17,25)
plot(l3,type= 'o', col='green', main = 'Line Plot', xlab = 'points', ylab = 'Frequency')

#Line Plot with multiple series if data
#Variable 't' represent time
t<-0:10
#Variable 'z' showing quantity that is decreasing in time
z<-exp(-t/2)
#Variable 'w' that is increasing with time
w<-0.1*exp(t/3)
#Plot t and z
plot(t,z,type = 'l')
#Plot t and z with color red, line width 3, label of x and y axes as time and concentration
plot(t,z,type ='l', col='red', lwd='3', xlab= 'Time', ylab= 'Concentration')

#Plot t and w
plot(t,w,type = 'o')

#Plot t and w with color green, line width 4, label of x and y 
plot(t,w,type = 'o', col= 'green', lwd= '4', xlab= 'Time', ylab= 'Concentration')

#Plot both lines
lines(t,z,col= 'red', lwd= '3')

#Add title 'Exponential Growth and Decay'
title("Exponential Growth and Decay")

## Scatter Plots
plot(iris$Sepal.Length,iris$Sepal.Width)

# Plot scatter diagram in dot shape
plot(iris$Sepal.Length,iris$Sepal.Width,pch=20)

# Plot Scatter diagram from 0 to 25
plot(iris$Sepal.Length, iris$Sepal.Width, pch=0)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=1)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=2)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=3)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=4)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=5)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=6)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=7)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=8)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=9)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=10)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=11)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=12)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=13)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=14)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=15)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=16)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=17)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=18)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=19)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=20)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=21)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=22)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=23)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=24)
plot(iris$Sepal.Length, iris$Sepal.Width, pch=25)


# Plot  scatter diagram in dot shape,red colour, heading Scatter Plot 
# Label of x and y axis sepal_length and sepal_width
plot(iris$Sepal.Length, iris$Sepal.Width, 
     col="red", 
     main = "Scatter Plot", 
     xlab = "sepal_length", 
     ylab = "sepal_width", 
     pch=20)

## Bar plot
#Bar Chart
data("iris")
View(iris)
#Count the number of observations for each species
species_counts<- table(iris$Species)
species_counts
#Create a bar chart
barplot(species_counts,
        main = "Distribution of Iris Species",
        xlab = "Species",
        ylab = "Count",
        col = c("blue","green","pink"))

