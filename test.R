library("pacman")
require("pacman")
pacman::p_load(dplyr, ggplot2, ggvis, httr, lubridate, plotly, rio, tidyr, stringr)
library(datasets)
head(iris)
plot(iris$Species)
plot(iris$Sepal.Length)
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", pch = 19, main = "Iris Length vs width",
     xlab = "petal length", ylab = "petal width")

plot(cos, 0, 2*pi)
plot(exp, 1,4)
plot(dnorm, -3, +3)
c = 12
typeof(c)
d <- 13
typeof(d)
(a <- 1:3)
(b = 1:3)
(df1 = cbind.data.frame(a, b))

e <- scan()
e
csv <- read.csv("D:/KULIAH/Machine Learning Full/ML Tutorial (Old)/submission_example.csv")
head(csv)

nilai <- c('A', 'B', 'C', 'C', 'D')
nama <- c('Ani', 'Budi', 'Cici', 'Bambang', 'Ali')
Sex <- factor(c('P', 'L', 'P', 'L', 'L'))
data <- data.frame(nama, Sex, nilai)
View(data)

fungsi.baru <- function(a){
  print(paste('my name is ', a))
}

fungsi.baru('dinda')

seq(1,40,3)
sr <- c(1,7,3,5,1,4,8,77)
sort(sr)
rev(sr)
str(sr)
str(iris)
append(sr, c(10,8,7))

kalidua <- function(x){
  return(x*2)
}

kalidua(sr)

sapply(sr, kalidua)
lapply(sr, kalidua)

Sys.Date()
as.Date('1,Feb,99',format='%d,%b,%y')
help("POSIXct")
strptime('1,Feb,1945 00:01:33',format='%d,%b,%Y %H:%M:%S')
