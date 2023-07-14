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
