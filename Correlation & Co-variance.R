### Relationship between variables
# 1. Covariance - measures the degree and direction of linear relationship between two variable, 
#   calculated by using cov() function

# Create a sample data vector
x<-c(2,3,6,8,10,14,19,12,21)
y<-c(4,5,7,11,15,13,16,19,24) 

# Calculate Covariance
cov_value<-cov(x,y)
print(cov_value)

#  2. Covariance Matrix
# In a dataset with multiple variables , covariance may be calculated 
# between each pair of variables and presented in the form of a matrix

#  Create a sample data vector
data<-data.frame(
  X=c(2,4,7,8,10,15,14,18,16,21),
  Y=c(3,6,5,12,14,18,12,15,19,23),
  Z=c(1,4,5,8,9,12,15,18,23,27)
  )
print(data)

#  Create covariance matrix
cov_mat<-cov(data)
print(cov_mat)

#  3. COEFFICIENT OF CORRELATION
# TYPES :- (a) Karl Pearsons Correlation
# Create sample data vector
X<-c(2,3,6,8,10,14,19,12,21)
Y<-c(4,5,7,11,15,13,16,19,24)

# Calculate Correlation (Karl Pearsons Correlation by default)
Coef_cor<-cor(X,Y)
print(Coef_cor)

# Coefficient of Determination
r_squared<-cor(X,Y)^2
print(r_squared)

# (b) Spearman's Rank Correlation
spearman_cor<-cor(X,Y,method="spearman")
print(spearman_cor)

# (c) Kendall's Tau
kendall_cor<-cor(X,Y,method="kendall")
print(kendall_cor)


# Question :- You are given the following datasets : X,Y,Z
# X<-(2,4,7,8,10,15,14,18,16,21,28,32)
# Y<-(3,6,5,12,14,18,12,15,19,23,22,28)
# Z<-(1,4,5,8,9,12,15,18,23,27,31,29)
# Using R, calculate (a) Covariance (b) Pearson Correlation (c) Spearman Correlation
# (d) Kendall Correlation (e) Covariance Matrix (f) Correlation Matrix
# Solution :- 

# Creating data vectors
X<-c(2,4,7,8,10,15,14,18,16,21,28,32)
Y<-c(3,6,5,12,14,18,12,15,19,23,22,28)
Z<-c(1,4,5,8,9,12,15,18,23,27,31,29)

# (a) Covariance
cov_value1<-cov(X,Y)
cov_value2<-cov(Y,Z)
cov_value3<-cov(X,Z)
print(paste("Covariance",cov_value1))
print(paste("Covariance",cov_value2))
print(paste("Covariance",cov_value3))

# (b) Pearson Correlation
pearson_cor1<-cor(X,Y)
pearson_cor2<-cor(Y,Z)
pearson_cor3<-cor(X,Z)
print(paste("Pearson Correlation",pearson_cor1))
print(paste("Pearson Correlation",pearson_cor2))
print(paste("Pearson Correlation",pearson_cor3))

# (c) Spearman Correlation
spearman_cor1<-cor(X,Y,method= "spearman")
spearman_cor2<-cor(Y,Z,method= "spearman")
spearman_cor3<-cor(X,Z,method= "spearman")
print(paste("Spearman Correlation",spearman_cor1))
print(paste("Spearman Correlation",spearman_cor2))
print(paste("Spearman Correlation",spearman_cor3))

# (d) Kendall Correlation
kendall_cor1<-cor(X,Y,method="kendall")
kendall_cor2<-cor(Y,Z,method="kendall")
kendall_cor3<-cor(X,Z,method="kendall")
print(paste("Kendall Correlation",kendall_cor1))
print(paste("Kendall Correlation",kendall_cor2))
print(paste("Kendall Correlation",kendall_cor3))

# (e) Covariance Matrix
data<-data.frame(X,Y,Z)
print(data)
cov_mat<-cov(data)
print("Covariance Matrix")
print(cov_mat)

# (f) Correlation Matrix
cor_mat<-cor(data)
print("Correlation Matrix")
print(cor_mat)
