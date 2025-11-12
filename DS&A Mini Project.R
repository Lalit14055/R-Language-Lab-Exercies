# Mini Project: COVID-19 Patient Data Analysis
# Sub: Data Science and Analytics
# By: Lalit Patil A-63
# Step 1: Load required libraries

library(ggplot2)
library(dplyr)
library(readr)
#1 means Yes 
#2 means no

#Step2:Import dataset
covid_data <- read_csv("Covid Data.csv")
View(covid_data)

#Step3:Dataset overview
str(covid_data)
summary(covid_data)

#Step4:Check missing values
colSums(is.na(covid_data))

#Step5:Basic Info About Dataset
#Total number of patients
nrow(covid_data)

#Total Number of columns
ncol(covid_data)

#Step6:Gender distribution
ggplot(covid_data, aes(x = factor(SEX))) +
  geom_bar(fill = "blue") +
  labs(title = "Gender Distribution of COVID-19 Patients",
       x = "Gender (1=Male, 2=Female)",
       y = "Count") +
  theme_minimal()

#Step7:Age distribution
ggplot(covid_data, aes(x = AGE)) +
  geom_histogram(fill = "orange", bins = 40, color = "black") +
  labs(title = "Age Distribution of COVID-19 Patients",
       x = "Age", y = "Frequency") +
  theme_minimal()

#Step8:Relation between diabetes and death
ggplot(covid_data, aes(x = factor(DIABETES), fill = factor(DATE_DIED != '9999-99-99'))) +
  geom_bar(position = "dodge") +
  labs(title = "Death Cases Among Diabetic vs Non-Diabetic Patients",
       x = "Diabetes (1=Yes, 2=No)",
       y = "Count",
       fill = "Died (TRUE/FALSE)") +
  theme_minimal()

#Step9:Obesity vs ICU admission
ggplot(covid_data, aes(x = factor(OBESITY), fill = factor(ICU))) +
  geom_bar(position = "dodge") +
  labs(title = "ICU Admission by Obesity Status",
       x = "Obesity (1=Yes, 2=No)",
       y = "Count",
       fill = "ICU (1=Yes, 2=No)") +
  theme_minimal()

#Step10:Save cleaned dataset
write.csv(covid_data, "Cleaned_Covid_Data.csv", row.names = FALSE)

#EDA Completed Successfully!!!