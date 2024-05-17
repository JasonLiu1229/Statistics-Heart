# loading the package
library(dplyr)
library("car")

# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Perform Shapiro-Wilk test on the data
shapiro.test(heart_data$age)

# Plot the histogram of the data
hist(
    heart_data$age,
    main = "Histogram of Age",
    xlab = "Age",
    col = "lightblue",
    border = "black",
    breaks = seq(0, max(heart_data$age), by = 1)
)

# Plot the QQ plot of the data with reference line
qqPlot(heart_data$age, main = "QQ Plot of Age")

# Transform the data so that it is normally distributed
transformed_age <- sqrt(max(heart_data$age) + 1 - heart_data$age)

# Perform Shapiro-Wilk test on the transformed data
shapiro.test(transformed_age)

# Plot the histogram of the transformed data
hist(
    transformed_age,
    main =
    "Histogram of Transformed Age (Transformation)",
    xlab = "Transformed Age",
    col = "lightblue",
    border = "black",
)

# Plot the QQ plot of the transformed data with reference line
qqPlot(transformed_age, main = "QQ Plot of Transformed Age (Transformation)")
