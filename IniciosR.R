#### R Programming 101 #### 
# Author: Ricardo A. Silva
# Date: 14/07/2023
# R version 4.1.2 


## 1. How to import data and install packages --------------
data() # Check the built-in datasets

my_data <- read.csv(file = "kaggle_DataScienceSalaries.csv")

View(my_data)
head(my_data)
tail(my_data)

names(my_data) # View variable names
my_data[1,3]
my_data[1,5]
my_data[,5]
my_data$Job.Title

installed.packages()
install.packages("tidyverse")
library("tidyverse")
require("tidyverse")

# Pipe Operator and data analysis
my_data %>% 
  select(Job.Title, Experience.Level, Salary, Salary.Currency, Year) %>% 
  filter(Salary < 300000) %>% 
  arrange(Job.Title)



## 2. How to import data from Excel ------------------------
install.packages("readxl")
library(readxl)
my_data2 <- read_excel("/Users/ricardoandressilvatorres/Library/CloudStorage/Dropbox/
                       Programacion/R/R-Programming-101/fifa_2023.xlsx",
                       sheet = "Worksheet")
?readxl
args(read_excel)


## 3. Manipulate data using Tidyverse - Select, Filter, Mutate ---------
# We are  going to use built in datasets
# Use the tidyverse package to select variables,
# filter obs, create new variables and create a summary

require(tidyverse)
data()

View(starwars)

starwars %>% 
    select(name, height, mass, sex, species) %>% 
    filter(species == "Human") %>%
    na.omit() %>% 
    mutate(height = height/100) %>% 
    mutate(BMI = mass/height^2) %>%
    group_by(sex) %>% 
    summarise(Average_BMI = mean(BMI))
  
starwars2 <- starwars %>% 
  select(name, height, mass, sex, species) %>% 
  filter(species == "Human") %>%
  na.omit() %>% 
  mutate(height = height/100) %>% 
  mutate(BMI = mass/height^2) %>%
  group_by(sex) %>% 
  summarise(Average_BMI = mean(BMI))



## 4. Data Types in R ----------------------
# Understand the 5 types of data in R
# Change the data type for a variable
# Add "levels" to a factor variable

# str() gives a compactly display structure of an R object
str(my_data2)

my_data2$card_type <- as.factor(my_data2$card_type)

my_data2$rating <- as.integer(my_data2$rating)

levels(my_data2$card_type)
my_data2$card_type <- factor(my_data2$card_type, 
                             levels = c("")) # c("") para ponerle una etiqueta

my_data2$R90 <- my_data2$rating >= 90
class(my_data2$R90) # as.logical()



## 5. Renaming variables and reorder columns  ----------------------



