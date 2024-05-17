# loading the package
library(dplyr)
library("car")

# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Perform Shapiro-Wilk test on the data
shapiro.test(heart_data$hr)

# Plot the histogram of the data
hist(
    heart_data$age,
    main = "Histogram of Heart Rate",
    xlab = "Age",
    col = "lightblue",
    border = "black",
    breaks = seq(0, max(heart_data$hr), by = 1)
)

# Plot the QQ plot of the data with reference line
qqPlot(heart_data$hr, main = "QQ Plot of Heart Rate")

# Transform the data so that it is normally distributed
transformed_hr <- sqrt(heart_data$hr)

# Perform Shapiro-Wilk test on the transformed data
shapiro.test(transformed_hr)

# Plot the histogram of the transformed data
hist(
    transformed_hr,
    main =
    "Histogram of Transformed Heart Rate (Transformation)",
    xlab = "Transformed Heart Rate",
    col = "lightblue",
    border = "black",
)

# Plot the QQ plot of the transformed data with reference line
qqPlot(transformed_hr, main = "QQ Plot of Transformed Heart Rate (Transformation)")

