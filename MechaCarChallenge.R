### Deliverable 1
## Load dependencies
library(dplyr)
library(tidyverse)
## Import and read in Car Data as a DataFrame
MechaCar_Data <- read.csv('MechaCar_mpg.csv')
## Perform Linear regression using the lm function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Data)
## Use summary function to determine p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_Data))

### Deliverable 2
## Import and read in Suspension Data
susp_Data <- read.csv('Suspension_Coil.csv')
## Total summary df using summarize function for mean, median, variance, and standard deviation
total_summary <- susp_data %>% summarize(Mean_PSI=mean(PSI),
                                         Median_PSI=median(PSI),
                                         Var_PSI=var(PSI),
                                         SD_PSI=sd(PSI))
## Lot summary df using groupby and summarize function for mean, median, variance, and standard deviation
lot_summary <- susp_data  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                        Median_PSI=median(PSI),
                                                                        Var_PSI=var(PSI),
                                                                        SD_PSI=sd(PSI))

### Deliverable 3
## Create a t.test function
t.test((susp_data$PSI),mu = 1500)
## Create subset of lots
lot1 <- subset(susp_data, Manufacturing_Lot=="Lot1")
lot2 <- subset(susp_data, Manufacturing_Lot=="Lot2")
lot3 <- subset(susp_data, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

