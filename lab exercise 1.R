# 1.Display the first 15 rows of the mtcars dataset.

data("mtcars")
head(mtcars,15)

#2.Find the maximum and minimum value of Sepal.Length from iris.

data("iris")
View(iris)
max_value <- max(iris$Sepal.Length)
max_value

#3.Calculate the mean of the variable mpg in mtcars.

data("mtcars")
mean_mpg <- mean(mtcars$mpg)
mean_mpg

#4.Display the structure of the airquality dataset.
data("airquality")
str(airquality)

#5.Check whether the number 100 is greater than 50 in R

x <- 100
y <- 50
x > y



