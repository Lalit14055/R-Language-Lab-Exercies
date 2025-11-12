#1.Perform binning on Sepal.Length from iris into categories: Short, Medium, Long.

data("iris")
iris$Sepal.Length_category<-cut(iris$Sepal.Length,
                                breaks = 3,
                                labels=c("Low","Medium","high"))
table(iris$Sepal.Length_category)

#2.Convert Species column in iris into dummy variables (One-Hot Encoding).
#3.







