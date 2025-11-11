#1.Count how many missing values are present in the airquality dataset.

library(dplyr)
data("airquality")
sum(is.na(airquality))

#2.Replace missing values in Ozone with the median instead of mean.
airquality$Ozone[is.na(airquality$Ozone)]<-median(airquality$Ozone,na.rm = TRUE)
head(airquality)

#3.Create a duplicate dataset from mtcars and remove the duplicates.

mtcars_dup <- rbind(mtcars,mtcars)
nrow(mtcars_dup)
mtcars_no_dup <- unique(mtcars_dup)
nrow(mtcars_no_dup)
head(mtcars_no_dup)

#4.Convert all car names in mtcars row names to uppercase.

rownames(mtcars)<-toupper(rownames(mtcars))
head(mtcars)

#5.Convert the Species column in iris dataset into numeric codes (1, 2, 3).
iris$Species<-as.numeric(as.factor(iris$Species))
head(iris)
View(iris)

