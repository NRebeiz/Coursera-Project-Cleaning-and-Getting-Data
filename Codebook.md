---
title: "Codebook"
author: "Natalie Rebeiz"
date: "January 15, 2019"
output: html_document
---

## Feature Selection of Raw Data: From Original Document

### From Feature_info.txt
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth 
filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, 
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

### Raw Data Variables
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* angle(): Angle between to vectors

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Features of Tidy Data Set
The tidy data set was organized by grouping subject number (30 levels) and activity (6 levels), resulting in 180 observations that were the average of the mean and std variables for each subject and activity. The variable names in the tidy data set are descriptive and are as follows:

### Index variable names
 [1] "Subject.Number", factor variable, 30 levels, 1-30.                       
 [2] "Activity", character variable, 6 levels, Walking, Standing, Sitting,           Laying, Walking_Upstairs, Walking_Downstairs. 
 
### Variable names  used for averages of mean, std. Variables are numeric.
 [3] "Time of Body Acceleration  mean()X Axis"                                 
 [4] "Time of Body Acceleration  mean()Y Axis"                                 
 [5] "Time of Body Acceleration  mean()Z Axis"                                 
 [6] "Time of Body Acceleration  std()X Axis"                                  
 [7] "Time of Body Acceleration  std()Y Axis"                                  
 [8] "Time of Body Acceleration  std()Z Axis"                                  
 [9] "Time of Gravity Acceleration mean()X Axis"                               
[10] "Time of Gravity Acceleration mean()Y Axis"                               
[11] "Time of Gravity Acceleration mean()Z Axis"                               
[12] "Time of Gravity Acceleration std()X Axis"                                
[13] "Time of Gravity Acceleration std()Y Axis"                                
[14] "Time of Gravity Acceleration std()Z Axis"                                
[15] "Time of Body Acceleration of Jerks  mean()X Axis"                        
[16] "Time of Body Acceleration of Jerks  mean()Y Axis"                        
[17] "Time of Body Acceleration of Jerks  mean()Z Axis"                        
[18] "Time of Body Acceleration of Jerks  std()X Axis"                         
[19] "Time of Body Acceleration of Jerks  std()Y Axis"                         
[20] "Time of Body Acceleration of Jerks  std()Z Axis"                         
[21] "Time of Body Gyroscope mean()X Axis"                                     
[22] "Time of Body Gyroscope mean()Y Axis"                                     
[23] "Time of Body Gyroscope mean()Z Axis"                                     
[24] "Time of Body Gyroscope std()X Axis"                                      
[25] "Time of Body Gyroscope std()Y Axis"                                      
[26] "Time of Body Gyroscope std()Z Axis"                                      
[27] "Time of Body Gyroscope Jerkmean()X Axis"                                 
[28] "Time of Body Gyroscope Jerkmean()Y Axis"                                 
[29] "Time of Body Gyroscope Jerkmean()Z Axis"                                 
[30] "Time of Body Gyroscope Jerkstd()X Axis"                                  
[31] "Time of Body Gyroscope Jerkstd()Y Axis"                                  
[32] "Time of Body Gyroscope Jerkstd()Z Axis"                                  
[33] "Time of BodyAccMagmean()"                                                
[34] "Time of BodyAccMagstd()"                                                 
[35] "Time of Gravity Acceleration Magnification mean()"                       
[36] "Time of Gravity Acceleration Magnification std()"                        
[37] "Time of BodyAccJerkMagmean()"                                            
[38] "Time of BodyAccJerkMagstd()"                                             
[39] "Time of Body Gyroscope Magnification mean()"                             
[40] "Time of Body Gyroscope Magnification std()"                              
[41] "Time of Body Gyroscope Jerk Magnification mean()"                        
[42] "Time of Body Gyroscope JerkMagstd()"                                     
[43] "Frequency of Body Acceleration  mean()X Axis"                            
[44] "Frequency of Body Acceleration  mean()Y Axis"                            
[45] "Frequency of Body Acceleration  mean()Z Axis"                            
[46] "Frequency of Body Acceleration  std()X Axis"                             
[47] "Frequency of Body Acceleration  std()Y Axis"                             
[48] "Frequency of Body Acceleration  std()Z Axis"                             
[49] "Frequency of Body Acceleration of Jerks  mean()X Axis"                   
[50] "Frequency of Body Acceleration of Jerks  mean()Y Axis"                   
[51] "Frequency of Body Acceleration of Jerks  mean()Z Axis"                   
[52] "Frequency of Body Acceleration of Jerks  std()X Axis"                    
[53] "Frequency of Body Acceleration of Jerks  std()Y Axis"                    
[54] "Frequency of Body Acceleration of Jerks  std()Z Axis"                    
[55] "Frequency of Body Gyroscope mean()X Axis"                                
[56] "Frequency of Body Gyroscope mean()Y Axis"                                
[57] "Frequency of Body Gyroscope mean()Z Axis"                                
[58] "Frequency of Body Gyroscope std()X Axis"                                 
[59] "Frequency of Body Gyroscope std()Y Axis"                                 
[60] "Frequency of Body Gyroscope std()Z Axis"                                 
[61] "Frequency of BodyAccMagmean()"                                           
[62] "Frequency of BodyAccMagstd()"                                            
[63] "Frequency of Body to Body Acceleration of Jerks Magnification mean()"    
[64] "Frequency of Body to Body Acceleration of Jerks Magnification std()"     
[65] "Frequency of Body to Body Gyroscope Magnification mean()"                
[66] "Frequency of Body to Body Gyroscope Magnification std()"                 
[67] "Frequency of Body to Body Gyroscope of Jerks Magnification mean()"       
[68] "Frequency of Body to Body Gyroscope of Jerks Magnification std()"        
[69] "Angle Variable(Time of Body Acceleration Mean, Gravity )"                
[70] "Angle Variable(Time of Body of Acceleration of Jerks Mean),Gravity Mean)"
[71] "Angle Variable(Time of Body Gyroscope Mean, Gravity Mean)"               
[72] "Angle Variable(Time of Body Gyropscope Jerks Mean, Gravity Mean)"        
[73] "Angle Variable(X Axis, Gravity Mean)"                                    
[74] "Angle Variable(Y Axis, Gravity Mean)"                                    
[75] "Angle Variable(Z Axis, Gravity Mean)" 

### Example of Summary of Tidy Data Variable Averages Grouped by Subject Number and Activity

Time of Body Acceleration mean()X Axis

Min.   :0.2216                         
1st Qu.:0.2712                         
Median :0.2770                         
Mean   :0.2743                         
3rd Qu.:0.2800                         
Max.   :0.3015                         

                                                            

