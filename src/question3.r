library("car")

# loading the dataset
heart_data <- read.csv("src/Dataset/heart.csv", sep = ";")

# Check if age and bmi are normally distributed
shapiro.test(heart_data$age)

qqPlot(heart_data$age, main = "QQ Plot of Age")

shapiro.test(heart_data$bmi)

qqPlot(heart_data$bmi, main = "QQ Plot of BMI")

# Scatter plot of age and bmi
plot(heart_data$age, heart_data$bmi, main = "Scatter Plot of Age and BMI", xlab = "Age", ylab = "BMI")

# Regression line
abline(lm(heart_data$bmi ~ heart_data$age), col = "red")


# # Perform pearson correlation test on age and bmi (Not used because the data is not normally distributed)
# res <- cor.test(heart_data$age, heart_data$bmi, method = "pearson")

# res

# Perform spearman correlation test on age and bmi
res <- cor.test(heart_data$age, heart_data$bmi, method = "spearman")

res

# Perform kendall correlation test on age and bmi
res <- cor.test(heart_data$age, heart_data$bmi, method = "kendall")

res

# regression analysis
regression <- lm(heart_data$bmi ~ heart_data$age)

summary(regression)

# QQ plot of residuals
qqPlot(residuals(regression), main = "QQ Plot of Residuals")
