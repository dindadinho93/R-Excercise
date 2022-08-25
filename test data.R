library(datasets)
?mtcars
head(mtcars)
barplot(mtcars$cyl)
cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)

hist(mtcars$mpg)
hist(mtcars$wt)
plot(mtcars$mpg, mtcars$wt,
     pch = 19, cex = 1.5, col="blue",
     main = "MPG as function", xlab = "Weight", ylab = "MPG")

head(iris)
hist(iris$Sepal.Length)

hist(iris$Petal.Width[iris$Species=="setosa"],
     xlim = c(0,3), breaks = 9,
     main = "petal width for setosa",
     xlab = "", col = "red")

p_load(psych)
describe(iris$Sepal.Length)
hist(iris$Sepal.Length[iris$Species=="virginica"])

