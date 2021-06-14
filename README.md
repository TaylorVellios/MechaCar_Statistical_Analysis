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

![ground_clearance](https://user-images.githubusercontent.com/14188580/121827898-70c9fd80-cc83-11eb-82b7-14faa341cac8.png)

Vehicle Length:

![vehicle_length](https://user-images.githubusercontent.com/14188580/121827906-77f10b80-cc83-11eb-9931-ac49f02d71dc.png)








## Summary Statistics on Suspension Coils
