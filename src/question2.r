# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Perform chi-square test on mitype and dstat
chisq.test(table(heart_data$mitype, heart_data$dstat))
