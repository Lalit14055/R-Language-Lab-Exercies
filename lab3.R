#Installing require packages.

install.packages("dplyr")

library(dplyr)

#Loading datasets.
data("airquality")

View(airquality)
head(airquality)
#checking missing values in dataset and taking total count of missing values.

sum(is.na(airquality))
colSums(is.na(airquality))

#now we are handling missing values and also manipulating it.
airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone,na.rm = TRUE)
airquality$Solar.R[is.na(airquality$Solar.R)] <-median(airquality$Solar.R,na.rm = TRUE)

# Now we add another dataset "iris".
data("iris")
View(iris)

sum(is.na(iris))
duplicated(iris) # checking for duplicate values.
iris_with_duplicates <- rbind(iris,iris[1:5, ])
nrow(iris_with_duplicates)
iris_clean <-distinct(iris_with_duplicates)
nrow(iris_clean)

#Now we go for standardize fromats.
iris_clean$Species <-tolower(as.character(iris_clean$Species))
iris_clean$Species <-as.factor(iris_clean$Species)


head(iris_clean)









