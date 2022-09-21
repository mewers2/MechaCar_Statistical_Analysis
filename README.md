# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Conducted a multiple linear regression of MechaCar MPG data to analyze the independent variables' (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD) effect on MPG.

H~0~: The slope of the linear model is zero, or m = 0

H~a~: The slope of the linear model is not zero, or m $\neq$ 0

The linear regression model yielded the following results:

![Multiple_Linear_Regression](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/Multiple_Linear_Regression.png)

The linear regression model summary yielded the following results:

![Multiple_Linear_Regression_Summary](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/Multiple_Linear_Regression_Summary.png)

- Vehicle length and ground clearance have a significant impact on MPG.  The p-values for those individual variables are statistically unlikely to provide random amounts of variance to the linear model.

- The intercept also indicates statistical significance, which means that the intercept term explains a significant amount of variability in the dependent variable when all independent variables are zero.  This means that either the vehicle length and ground clearance variables need scaling or transforming to improve the predictive power of the model, or it may mean that there are other variables that can help explain the variability that are not included in this model.

- The p-value of the linear regression model is 5.35 x 10^-11^, which is smaller than the assumed significance level of 0.05%. Therefore, there is sufficient evidence to reject our null hypothesis, which means means that the slope of the linear model is not zero.

- The r-squared value for the multiple linear regression model is 0.71, which means that roughly 71% of the variability of the dependent variable (MPG) is explained using this linear model.  The closer the r-squared value is to 1, the higher the accuracy of the model's prediction of the dependent variable.  At r-quared = 0.71, the model has a strong degree of accuracy in predicting the MPG.


## Summary Statistics on Suspension Coils

The summary statistics on the Suspension Coil data provide valuable insight on the manufacturing standards of the suspension coil component for the MechaCar.  Since the design specifications dictate that the variance must not exceed 100 pounds per square inch (PSI), we will analyze the results of the summary statistics against that standard.

![total_summary](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)

- The total summary statistics indicate that as a whole, the manufacuring variance of the suspension coil is 62.3 and meets the design specification as 62.3 < 100.

![lot_summary](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)

- The lot summary statistics break down the suspension manufacuring by lot.  According to the lot summary statistics, the manufacuring variance of the suspension coil for lot 1 is 0.98, lot 2 is 7.47, and lot 3 is 170.29.  Based on the design specification, lots 1 and 2 and meet the design specification requirement for manufacturing variance as 0.98 < 100 and 7.47 < 100.  However, lot 3 exceeds the design specification requirement for manufacturing variance as 170.29 > 100.


## T-Tests on Suspension Coils

H~0~: The mean of the suspension coil PSI sample data equals the mean of the population mu = 1500

H~a~: The mean of the suspension coil PSI sample data does not equal the mean of the population mu $\neq$ 1500

![one_sample_t-test](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/One_Sample_t-test.png)

The p-value of the sample t-test is 0.06, which is above the significance level of 0.05.  Therefore, we do not have sufficient evidence to reject the null hypothesis, the two means are staistically similar.  The sample mean across all lots is statistically similar to the population mean of 1500.

Lot t-tests:
Lot 1:

H~0~: The mean of the lot 1 suspension coil PSI sample data equals the mean of the population mu = 1500

H~a~: The mean of the  lot 1 suspension coil PSI sample data does not equal the mean of the population mu $\neq$ 1500

![lot1_t-test]https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/lot1_t-test.png)

The p-value of the Lot 1 sample t-test is 1, which is above the significance level of 0.05.  Therefore, we do not have sufficient evidence to reject the null hypothesis, the two means are staistically similar.  The lot 1 sample mean is 1500 and is statistically similar to the population mean of 1500.

Lot 2:

H~0~: The mean of the lot 2 suspension coil PSI sample data equals the mean of the population mu = 1500

H~a~: The mean of the lot 2 suspension coil PSI sample data does not equal the mean of the population mu $\neq$ 1500

![lot2_t-test]https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/lot2_t-test.png)

The p-value of the Lot 2 sample t-test is 0.61, which is above the significance level of 0.05.  Therefore, we do not have sufficient evidence to reject the null hypothesis, the two means are staistically similar.  The lot 2 sample mean is 1500.2 and is statistically similar to the population mean of 1500.

Lot 3:

H~0~: The mean of the lot 3 suspension coil PSI sample data equals the mean of the population mu = 1500

H~a~: The mean of the lot 3 suspension coil PSI sample data does not equal the mean of the population mu $\neq$ 1500

![lot3_t-test](https://github.com/mewers2/MechaCar_Statistical_Analysis/blob/main/Resources/lot3_t-test.png)

The p-value of the Lot 3 sample t-test is 0.042, which is below the significance level of 0.05.  Therefore, we have sufficient evidence to reject the null hypothesis, the two means are statistically different.  The lot 3 sample mean is 1496.14 which is statistically different from the population mean of 1500.


## Study Design: MechaCar vs Competition

A study proposal to test the brake system performance of MechaCar models vs competitor models in order to investigate if the MechaCar performs at a higher level than the competition in a key safety category: stopping distance:

- Test the brake system performance by conducting a two-sample t-test of MechaCar brake system data against competitor data to analyze if there is a statistically significant difference in the MechaCar mean stopping distance compared to the competitors' mean stopping distance. A two-sample t-test is the perfect test to evaluate this statistical analysis because there are two separate samples (dichotomous data type: cars made by MechaCar and cars that are NOT made by MechaCar) that are being tested and compared to each other.  The stopping distance measurements are the dependent variable and is considered to be continuous data.  The null hypothesis and the alternative hypothesis are listed below:

H~0~: The mean of the MechaCar stopping distance is equal to the mean of the competitors' stopping distance, or MechaCar mean = competitors' mean

H~a~: The mean of the MechaCar stopping distance is not equal to the meanof the competitors' stopping distance, or MechaCar mean $\neq$ competitors' mean

The data needed to conduct this statistical analysis is standardized stopping distance data for the MechaCar models and several competitors. For example, the distance required for the vehicles to come to a complete stop from 65 mph steady rate of speed. Perhaps, standardized stopping distance measurements for all vehicles tested for stopping from 30 mph, 45 mph, and 65 mph, would be best so that the test evaluates a wider range of each vehicles' braking performance.
