#Deliverable 1

#Load Package
library(dplyr)
#Import and read data
MechaCar_data <- read.csv(file='Resources/MechaCar_mpg.csv', check.names =F, stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)

#generate summary statistics
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data))

#Deliverable 2

#Import and read data as a table
Suspension_data <- read.csv(file='Resources/Suspension_Coil.csv', check.names =F, stringsAsFactors = F)

#Total summary to get mean, variance, and standard deviation
total_summary <- Suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI) )

#lot summary using group_by()
lot_summary <- Suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI) )

#Deliverable 3

#Statistical difference in manufacturing lot column versus population mean
t.test(Suspension_data$PSI, mu=1500)
#Statistical difference in each manufacturing lot versus population mean
t.test(subset(Suspension_data, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_data, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_data, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
