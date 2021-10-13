# MechaCar_Statistical_Analysis
MechaCar Statistical Analysis using R

## Linear Regression to Predict

![D1_LinearReg](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D1S1.png)

![D1_LinRegSumm](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D1S2.png)

According to our analysis, using a statistical significance of p=.05, the variables/coefficients that are most likely to provide a non-random amount of variance to mpg values are vehicle length and ground clearance. Weight comes close to meeting the threshold but does not pass. Since we do have variables that are statistically significant, then logically it is statistically improbable for the slope to be zero since we have found vehicle length and ground clearance to be very statistically significant as variables, even if the slope is very slight. Finally, with an r squared value of .715 and a statistically significant p value, it is reasonable to assume that the linear model (accounting for statistically significant variables of course) is a decent predictor of mpg. Further analysis is needed, but we have a good base to start.

## Summary Statistics on Suspension Coils

![D2_SummAll](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D2S1.png)

![D2_SummLot](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D2S2.png)

Overall, collectively the manufacturing data does meet the design specifications as the variance for all lots is about 62 pounds per square inch, which is below the 100 pounds per square inch threshold. Unfortunately, look at each lot individually, Lots 1 and 2 have variance of about 1 an 7 respectively which is a lot better than the overall variance. This discrepancy can be explained by the variance of Lot 3, which has a variance of about 170 pounds per square inch, well over design specifications and skewing the variance of the other lots. Clearly, more analysis must be done with Lot 3 in order to align it with design specifications.

## T-Tests on Suspension Coils

![D3_TCoil](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D3SA.png)

![D3_TCoilLot1](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D3SL1.png)

![D3_TCoilLot2](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D3SL2.png)

![D3_TCoilLot3](https://github.com/DavidFGitH/MechaCar_Statistical_Analysis/blob/main/Resources/D3SL3.png)

Continuing with the previous analysis, the PSI across all manufacturing lots does not pass the t-test of being statistically different from a mean of 1500 at p=.05, although it comes close with the p value being around .06. Since we know that one of the lots is skewed from earlier, that trend continues looking at the p values of each lot individually, as lot 1 and 2 do not pass the test of being statistically different from a mean of 1500 with p values of about 1 and .6 respectively, but Lot 3 does, with a p-value of about .04, which is below the threshold of .05. We can assume that Lot 3 is skewing the overall lot results, and more investigation is needed. 



## Study Design: MechaCar vs Competition

To keep it simple, I would start with a fuel efficiency test. Fuel efficiency is important when factoring the cost of a vehicle, especially when thinking about long term cost and minimizing environmental cost. To make sure that we a providing a clear option for a consumer, I would try to test the mpg of our MechaCar with vehicles of similar cost and build. Thus, our null hypothesis would be that MechaCar's mpg compared to vehicles from competitors of similar cost and make would be no different or worse. This makes our alternative hypothesis that MechaCar's mpg is better than the competition. Since we are testing the difference of means of two different populations, this would be a good fit for the two-sample t-test since we have continuous data (mpg) and MechaCar data versus competition. In order to get the data required for the test, we would have to either pull mpg number from our records or the competition or create our own data by setting up a study where we would drive a car from vehicle from MechaCar and competition a set distance like 100 miles, and then looking at the amount of gas consumed and calculating the mpg that way.
