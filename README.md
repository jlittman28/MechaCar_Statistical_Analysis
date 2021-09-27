# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

  1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  // The vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in the dataset.
  2. Is the slope of the linear model considered to be zero? Why or why not?
  // The slope is not considered to be equal to zero becasue p-value is less than signiffican level of .05%, which provides sufficient evidence to reject our null hypothesis.
  3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  // Yes, the linear model predicts mpg of MechaCar prototypes effectively due to an r-square value = 0.7149 or ~71% of all predictions.
![image](https://user-images.githubusercontent.com/85204128/134828319-31290cf0-f077-45d4-b55e-2ce9f0d8651c.png)

![image](https://user-images.githubusercontent.com/85204128/134828526-dd157ff5-bc2f-430c-a321-b429c11f90cd.png)

## Summary Statistics on Suspension Coils

  1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  * When analyzing the total population, the variance yielded 62.29 PSI which is below the 100 PSI variance requirement. 
  * Diving deeper into the population, we brokeout the total summary my manufacturing Lots 1-3. Lots 1 and 2 are within the 100 PSI Variance requirement yielding approximately 0.98 and 7.47 respctively, whereas Lot 3 yielded a variance of 170.29 which exceeds the 100 PSI variance requirement.

### Total Summary
![image](https://user-images.githubusercontent.com/85204128/134830186-0494298a-5c2d-49c7-acb6-8e62de0e8e1f.png)

### Lot Summary
![image](https://user-images.githubusercontent.com/85204128/134830223-7b687c1e-1ffc-4043-bd21-157991fbe1b1.png)

## T-Tests of Suspension Coils
The t-tests of suspense coils yielded the following results:

P-Values/Sample Mean - assumes a p-value of 0.05 is significant 
  1. Total: 0.06028/1500.053, the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.
  2. lot1: 1/1500.281, the null hypothesis cannot be rejected, and the sample/population mean of 1500 PSI are statistically similar.
  3. lot2: 0.6072/1500.977, the null hypothesis cannot be rejected, and the sample/population mean of 1500 PSI are statistically similar.
  4. lot3: 0.04168/1499.849, the null hypothesis can  be rejected, and the sample/population mean of 1500 PSI are statistically different.

![image](https://user-images.githubusercontent.com/85204128/134830694-a3d538ac-ec25-453a-b6d4-167fd49c3c02.png)

## Study Design: MechaCar vs Competition
  1. What metric or metrics are you going to test?
    * Cost, city and highway fuel efficiency, safety feature rating, Engine Type (Electric, Hybrid, Gas)
  2. What is the null hypothesis or alternative hypothesis
    * Null Hypothesis: If p-value is greater than 0.05, then MechaCar is statistically similar in performance with the respective categoreis.
  3. What statistical test would you use to test the hypothesis? And why?
    * We would use multiple linear regression to identify which metric significantly correlates with the respective companies bottom line.
  4. What data is needed to run the statistical test?
    * Would leverage Statista.com to identify competitors comparable models, those companies that are comparable in size by production output and revenue (output * sales price)



