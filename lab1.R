#Lab1 Exercise

#1.variables & data types

str="Lalit Patil"
int = 20
is_student<-TRUE
numbers<-c(1,2,3,4,5,6,7,8,9,10)

sequence<-seq(5,50,by=5)
print(sequence)


fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")
selected_fruits <- fruits[c(2, 4)]
print(selected_fruits)

numbers<-c(76,45,98,12,43,5,67.88,23,54)
max_value<-max(numbers)
print("maximum Value :",max_value)

min_value<-min(numbers)
print("minimum value: ",min_value)

mean_value<-mean(numbers)
print("mean of the numbvers: ",mean_value)

Name<-c("Lalit","alice","bob","raj","Amit")
Age <- c(19, 20, 18, 21, 19)
Marks <- c(85, 78, 92, 67, 88)
student_data<-data.frame(Name,Age,Marks)
print(student_data)

#2. Operators in R

10 + 5
10 - 5
10 * 5
10 / 5
10 %% 3
10 %/% 3

a<-c(2,4,6,8)
b<-c(1,3,5,7)

add_result<-a+b
print(add_result)

sub_result<-a-b
print(sub_result)

mul_result<-a*b
print(mul_result)

a<- c(3,6,8,2,10)
b<- c(4,1,5,7,2)

a[a>5]
b[b>=4]

#3.Loops

for(i in 1:10){
  print(i)
}



# 6.data analysis 

cols<-c("age","workclass","fnlwgt","education","education_num",
        "material_status","occupation","relationship","race","sex",
        "native_country","income")

adult<-read.csv("R-Language-Lab-Exercies/adult-data.txt",
                header = FALSE , col.names = cols,
                strip.white=TRUE , na.strings="?",
                sringsAsFactor=FALSE)















