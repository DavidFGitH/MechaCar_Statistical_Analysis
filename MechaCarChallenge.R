#Deliverable 1
library(dplyr)
Mecha_mpg <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_mpg))

#Deliverable 2
CoilData <- read.csv('Suspension_Coil.csv')
total_summary <-CoilData %>% summarize(Mean=mean(PSI), Median=median(PSI),
 Variance=var(PSI), SD=sd(PSI))
lot_summary <- CoilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),
 Variance=var(PSI), SD=sd(PSI))

#Deliverable 3
t.test(CoilData$PSI,mu=1500)
t.test(subset(CoilData,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(CoilData,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(CoilData,Manufacturing_Lot=="Lot3")$PSI,mu=1500)