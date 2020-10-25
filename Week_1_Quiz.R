# Quiz de conclusão da primeira semana R Programming

x <- 4L
class(x)
x <- c(4, 'a', TRUE)
class(x)
x <- c(1, 3, 5)
y <- c(3, 2, 10)
cbind(x, y)
x <- list(2, 'a', 'b',TRUE)
x[[2]]
x <- 1:4
y <- 2  
x + y

# read a file

df <- read.csv("/home/rsantana/Documents/D:/Data Science/datasciencecoursera/quiz1_data/hw1_data.csv")

# What are the column names of the data frame?

names(df)
colnames(df)

# How many observations (i.e. rows) are in this data frame?

nrow(df)

# How many missing values are in the "Ozone" column of this data frame?

miss <- is.na(df[, 'Ozone'])
sum(miss)

# What is the mean of the "Ozone" column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.

mean(df[, 'Ozone'], na.rm = TRUE)

# Extract the subset of rows of the data frame
# where Ozone values are above 31 and Temp values are above 90.
# Calculate the mean of "Ozone" for each Month in the data frame 
# and create a vector containing the monthly means (exclude all missing values).

x <- subset(df, Ozone > 31 & Temp > 90)
summary(x$Solar.R)

x1 <- subset(df, Month == 6)
summary(x1$Temp)
x2 <- subset(df, Month == 5)
summary(x2$Ozone)
