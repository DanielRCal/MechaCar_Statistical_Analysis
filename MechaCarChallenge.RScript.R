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

#Deliverable 2: Create Visualizations for the Trip Analysis

#Import and Read the CSV File
coil_Data <- read.csv('Suspension_Coil.csv')
head(coil_Data)

#mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Mean = mean(coil_Data$PSI)
Median=median(coil_Data$PSI)
Variance=var(coil_Data$PSI)
SD = sd(coil_Data$PSI)

#Total_Summary Data Frame
total_Summary <- data.frame(Mean,Median,Variance,SD)

#summary by lot
lot_summary <- coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 
