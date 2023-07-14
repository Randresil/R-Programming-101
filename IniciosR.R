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
my_data2 <- read_excel("/Users/ricardoandressilvatorres/Library/CloudStorage/Dropbox/Programacion/R/R-Programming-101/fifa_2023.xlsx",
                       sheet = "Worksheet")
?readxl
args(read_excel)
