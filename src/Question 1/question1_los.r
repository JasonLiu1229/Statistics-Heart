# loading the package
library(dplyr)
library("car")

# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Perform Shapiro-Wilk test on the data
shapiro.test(heart_data$los)

# Plot the histogram of the data
hist(
    heart_data$los,
    main = "Histogram of Los",
    xlab = "Age",
    col = "lightblue",
    border = "black",
    breaks = seq(0, max(heart_data$los), by = 1)
)

# Plot the QQ plot of the data with reference line
qqPlot(heart_data$los, main = "QQ Plot of Los")

# Transform the data so that it is normally distributed
transformed_los <- sqrt(heart_data$los)

# Perform Shapiro-Wilk test on the transformed data
shapiro.test(transformed_los)

# Plot the histogram of the transformed data
hist(
    transformed_los,
    main =
    "Histogram of Transformed Los (Transformation)",
    xlab = "Transformed Los",
    col = "lightblue",
    border = "black",
)

# Plot the QQ plot of the transformed data with reference line
qqPlot(transformed_los, main = "QQ Plot of Transformed Los (Transformation)")
