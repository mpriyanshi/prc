##Bar Chart

library(ggplot2)
# Bar Chart: Number of Students by Department
students <- data.frame(
  department = c("Math", "Biology", "Physics", "English", "Biology", "Math", "Physics")
)

# Plot: Counts how many students are in each department
ggplot(students, aes(x = department)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Number of Students by Department", x = "Department", y = "Count")

##Box Plot
# Box Plot: Test scores by subject
scores <- data.frame(
  subject = rep(c("Math", "English", "Science"), each = 10),
  score = c(rnorm(10, 75, 10), rnorm(10, 70, 8), rnorm(10, 80, 5))
)

# Plot: Shows distribution, median, and outliers of scores by subject
ggplot(scores, aes(x = subject, y = score)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "Distribution of Test Scores", x = "Subject", y = "Score")

##Scatter Plot
# Scatter Plot: Study hours vs grade
study_data <- data.frame(
  hours_studied = c(2, 3, 4, 5, 6, 7, 8),
  grade = c(60, 65, 67, 70, 75, 80, 85)
)

# Plot: Visualizes the relationship between study hours and grade
ggplot(study_data, aes(x = hours_studied, y = grade)) +
  geom_point(color = "purple", size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Study Hours vs Grade", x = "Hours Studied", y = "Grade")

##Line Graph
# Line Graph: Monthly average temperature
temps <- data.frame(
  month = factor(month.abb, levels = month.abb),
  temperature = c(30, 32, 40, 50, 60, 70, 75, 74, 65, 55, 45, 35)
)

# Plot: Shows how temperature changes across months
ggplot(temps, aes(x = month, y = temperature)) +
  geom_line(group = 1, color = "darkred", size = 1.2) +
  geom_point(color = "black") +
  labs(title = "Monthly Average Temperature", x = "Month", y = "Temperature (°F)")

##Histogram
# Histogram: Age distribution
ages <- data.frame(age = c(23, 25, 26, 27, 29, 30, 30, 31, 33, 35, 36, 38, 40))

# Plot: Shows how ages are distributed in bins (5-year intervals)
ggplot(ages, aes(x = age)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  labs(title = "Age Distribution", x = "Age", y = "Frequency")

##Pie Chart
# Pie Chart (simulated using bar and polar coords)
fruit <- data.frame(
  type = c("Apple", "Banana", "Cherry", "Grapes"),
  count = c(20, 15, 10, 5)
)

# Plot: Simulates a pie chart using bar chart + coord_polar
ggplot(fruit, aes(x = "", y = count, fill = type)) +
  geom_col(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Favorite Fruit Survey")

