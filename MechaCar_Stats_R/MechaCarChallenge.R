#import libraries
library(dplyr)
library(ggplot2)
#read data, only coil_data has string values. mpg_data is all numeric
mpg_data <- read.csv('../MechaCar_mpg.csv')
coil_data <- read.csv('../Suspension_Coil.csv', stringsAsFactors = F)

#check column types
sapply(mpg_data, typeof)
sapply(coil_data, typeof)


# Checkpoint 1: Linear Regression on mpg_data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))
#p-value: 5.35e-11
#Multiple R-squared:  0.7149 |	Adjusted R-squared:  0.6825 



#Plotting Columns against MPG where R values
vehicle_len_line <- lm(mpg ~ vehicle_length, mpg_data)

yvals <- vehicle_len_line$coefficients['vehicle_length']*mpg_data$vehicle_length +
          vehicle_len_line$coefficients['(Intercept)']

mpg_vehlength <- ggplot(mpg_data, aes(x=mpg, y=vehicle_length))
mpg_vehlength + geom_point() + geom_line(aes(y=yvals), color = 'red')



cor(mpg_data$mpg, mpg_data$vehicle_length) ##correlation coefficient: 0.6094798 (Strong)
cor(mpg_data$mpg, mpg_data$ground_clearance) #correlation coefficient: 0.3287489 (Weak)
