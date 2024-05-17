# loading the package
library(dplyr)
library("car")

# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Perform Shapiro-Wilk test on the data
shapiro.test(heart_data$bmi)

# Plot the histogram of the data
hist(
    heart_data$bmi,
    main = "Histogram of BMI",
    xlab = "Age",
    col = "lightblue",
    border = "black",
)

# Plot the QQ plot of the data with reference line
qqPlot(heart_data$bmi, main = "QQ Plot of BMI")

# Transform the data so that it is normally distributed
# light tail data transformation

