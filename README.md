# MechaCar_Statistical_Analysis
Using R to Perform a Statistical Analysis on Prototype Production Vehicles


## Linear Regression to Predict MPG

Using the following table structure loaded into a variable named *mpg_data*, the first task is to use a Multiple Linear Regression model to determine if there is a relationship between the MPG column and other columns.</br>

![deliv1 table](https://user-images.githubusercontent.com/14188580/121822791-a0b6d800-cc66-11eb-9460-df3e780636e7.PNG)

The following code will provide us with the p-values needed to determine the statistical significance between each factor.</br>

```
options(scipen = 50)
model <- lm(mpg ~ ., data=mpg_data)
summary(model)
```
*Which outputs as:*
Coefficients:


|                  |Estimate    |Std. Error  |t value |Pr(>t)   |&emsp;|
|------------------|------------|------------|--------|-----------|----|
|(Intercept)       |-103.963979  |1.585e+01   |-6.559  |0.0000000507794    |*** |
|vehicle_length    |6.267128       |6.553e-01   |9.563   |0.0000000000026    |***|
|vehicle_weight    |0.001245   |6.890e-04   |1.807   |0.0776     |.|  
|spoiler_angle     |0.068766      |6.653e-02   |1.034   |0.3069     |   |
|ground_clearance  |3.545534       |5.412e-01   |6.551   |0.0000000521269   |*** |
|AWD               |-3.411499  |2.535e+00   |-1.346  |0.1852     |  |
</br>

Looking at the right-most column with numerical data, *vehicle_length* as well as *ground_clearance* both output VERY low p-values that indicate a significant relationship between them and the prototype vehicles' MPG metric.</br>

Plotting both of these shows dimensions against MPG with our model shows a noticeable relationship:

Ground Clearance:

![ground_clearance](https://user-images.githubusercontent.com/14188580/121828853-78d76c80-cc86-11eb-80c5-3a3d11f18b9a.png)

Vehicle Length:

![vehicle_length](https://user-images.githubusercontent.com/14188580/121828855-7b39c680-cc86-11eb-96be-b8d1ae258a1f.png)




<br></br>



## Summary Statistics on Suspension Coils

#### Total Summary
||Mean| Median| Variance| SD|
|-|---|-------|---------|---|
1| 1498.78| 1500| 62.29356| 7.892627|


Lot Summary
| |Manufacturing_Lot |Mean| Median| Variance| SD|
|-|------------------|----|-------|--------|----|
|1| Lot1| 1500.00| 1500.0| 0.9795918  | 0.9897433|
|2| Lot2| 1500.20| 1500.0| 7.4693878  | 2.7330181|
|3| Lot3| 1496.14| 1498.5| 170.2861224| 13.0493725|



<br></br>

## T-Tests on Suspension Coils



<br></br>

## Study Design: MechaCar vs Competition
