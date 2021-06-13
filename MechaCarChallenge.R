#import libraries
library(dplyr)
library(ggplot2)
options(scipen = 50)
#read data, only coil_data has string values. mpg_data is all numeric
mpg_data <- read.csv('resources/MechaCar_mpg.csv')
coil_data <- read.csv('resources/Suspension_Coil.csv', stringsAsFactors = F)

#check column types
sapply(mpg_data, typeof)
sapply(coil_data, typeof)


# Checkpoint 1: Linear Regression on mpg_data
model <- lm(mpg ~ ., data=mpg_data)

summary(model)
#p-value: 5.35e-11
#Multiple R-squared:  0.7149 |	Adjusted R-squared:  0.6825 

ggplot(model, aes(x=mpg, y=ground_clearance)) + geom_point() + stat_smooth()
ggplot(model, aes(x=mpg, y=vehicle_length)) + geom_point() + stat_smooth()




# DELIVERABLE 2

#Summary of PSI Column
total_summary <- coil_data %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Summary of PSI Column Grouped by Manufact. Lots
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))



# DELIVERABLE 3
t.test(x=coil_data$PSI, mu=mean(coil_data$PSI))

pop_mean <- mean(coil_data$PSI)


#Lot1
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot=='Lot1'), 
       mu = pop_mean)
#Lot2
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot=='Lot2'), 
       mu = pop_mean)
#Lot3
t.test(subset(coil_data$PSI, coil_data$Manufacturing_Lot=='Lot3'), 
       mu = pop_mean)





f


