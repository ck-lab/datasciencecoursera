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

df[1:2, ]
df[152:153, ]
df[47,]$Ozone

# missing values

ozone <- df$Ozone
ozone <- ozone[!is.na(ozone)]
153 - 116
ozone_mean <- mean(ozone)

# Selections from data

x <- subset(df, Ozone > 31 & Temp > 90)
summary(x$Solar.R)
x1 <- subset(df, Month == 6)
summary(x1$Temp)
x2 <- subset(df, Month == 5)
summary(x2$Ozone)
