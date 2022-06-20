#Deliverable 1: Linear Regression to Predict MPG
#Import packages
library(dplyr)
library(tidyverse)

#Import and Read the CSV file
car_Data <- read.csv('MechaCar_mpg.csv')
head(car_Data)

#perform multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =car_Data)

#determine summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =car_Data)) 
