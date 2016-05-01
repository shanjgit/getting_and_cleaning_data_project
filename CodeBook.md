---
title: "CodeBook"
output: github_document
---



## Description

I merged the following file in the "UCI HAR Dataset" folder:

    subject_test.txt
    subject_train.txt
    X_test.txt
    X_train.txt
    y_test.txt
    y_train.txt
and named each column after the names stored in

    features.txt
and then, I merged the data set with the file
    
    activity_labels.txt

 
## Variable Names
 [1] "subject_num"                                                     
 [2] "activity_name"                                                   
 [3] "activity_num"                                                    
 [4] "Time_DomainBodyAccelerometer-mean()-X"                           
 [5] "Time_DomainBodyAccelerometer-mean()-Y"                           
 [6] "Time_DomainBodyAccelerometer-mean()-Z"                           
 [7] "Time_DomainBodyAccelerometer-std()-X"                            
 [8] "Time_DomainBodyAccelerometer-std()-Y"                            
 [9] "Time_DomainBodyAccelerometer-std()-Z"                            
[10] "Time_DomainGravityAccelerometer-mean()-X"                        
[11] "Time_DomainGravityAccelerometer-mean()-Y"                        
[12] "Time_DomainGravityAccelerometer-mean()-Z"                        
[13] "Time_DomainGravityAccelerometer-std()-X"                         
[14] "Time_DomainGravityAccelerometer-std()-Y"                         
[15] "Time_DomainGravityAccelerometer-std()-Z"                         
[16] "Time_DomainBodyAccelerometerJerk-mean()-X"                       
[17] "Time_DomainBodyAccelerometerJerk-mean()-Y"                       
[18] "Time_DomainBodyAccelerometerJerk-mean()-Z"                       
[19] "Time_DomainBodyAccelerometerJerk-std()-X"                        
[20] "Time_DomainBodyAccelerometerJerk-std()-Y"                        
[21] "Time_DomainBodyAccelerometerJerk-std()-Z"                        
[22] "Time_DomainBodyGyroscope-mean()-X"                               
[23] "Time_DomainBodyGyroscope-mean()-Y"                               
[24] "Time_DomainBodyGyroscope-mean()-Z"                               
[25] "Time_DomainBodyGyroscope-std()-X"                                
[26] "Time_DomainBodyGyroscope-std()-Y"                                
[27] "Time_DomainBodyGyroscope-std()-Z"                                
[28] "Time_DomainBodyGyroscopeJerk-mean()-X"                           
[29] "Time_DomainBodyGyroscopeJerk-mean()-Y"                           
[30] "Time_DomainBodyGyroscopeJerk-mean()-Z"                           
[31] "Time_DomainBodyGyroscopeJerk-std()-X"                            
[32] "Time_DomainBodyGyroscopeJerk-std()-Y"                            
[33] "Time_DomainBodyGyroscopeJerk-std()-Z"                            
[34] "Time_DomainBodyAccelerometerMagnitude-mean()"                    
[35] "Time_DomainBodyAccelerometerMagnitude-std()"                     
[36] "Time_DomainGravityAccelerometerMagnitude-mean()"                 
[37] "Time_DomainGravityAccelerometerMagnitude-std()"                  
[38] "Time_DomainBodyAccelerometerJerkMagnitude-mean()"                
[39] "Time_DomainBodyAccelerometerJerkMagnitude-std()"                 
[40] "Time_DomainBodyGyroscopeMagnitude-mean()"                        
[41] "Time_DomainBodyGyroscopeMagnitude-std()"                         
[42] "Time_DomainBodyGyroscopeJerkMagnitude-mean()"                    
[43] "Time_DomainBodyGyroscopeJerkMagnitude-std()"                     
[44] "Frequency_DomainBodyAccelerometer-mean()-X"                      
[45] "Frequency_DomainBodyAccelerometer-mean()-Y"                      
[46] "Frequency_DomainBodyAccelerometer-mean()-Z"                      
[47] "Frequency_DomainBodyAccelerometer-std()-X"                       
[48] "Frequency_DomainBodyAccelerometer-std()-Y"                       
[49] "Frequency_DomainBodyAccelerometer-std()-Z"                       
[50] "Frequency_DomainBodyAccelerometerJerk-mean()-X"                  
[51] "Frequency_DomainBodyAccelerometerJerk-mean()-Y"                  
[52] "Frequency_DomainBodyAccelerometerJerk-mean()-Z"                  
[53] "Frequency_DomainBodyAccelerometerJerk-std()-X"                   
[54] "Frequency_DomainBodyAccelerometerJerk-std()-Y"                   
[55] "Frequency_DomainBodyAccelerometerJerk-std()-Z"                   
[56] "Frequency_DomainBodyGyroscope-mean()-X"                          
[57] "Frequency_DomainBodyGyroscope-mean()-Y"                          
[58] "Frequency_DomainBodyGyroscope-mean()-Z"                          
[59] "Frequency_DomainBodyGyroscope-std()-X"                           
[60] "Frequency_DomainBodyGyroscope-std()-Y"                           
[61] "Frequency_DomainBodyGyroscope-std()-Z"                           
[62] "Frequency_DomainBodyAccelerometerMagnitude-mean()"               
[63] "Frequency_DomainBodyAccelerometerMagnitude-std()"                
[64] "Frequency_DomainRelated_To_BodyAccelerometerJerkMagnitude-mean()"
[65] "Frequency_DomainRelated_To_BodyAccelerometerJerkMagnitude-std()" 
[66] "Frequency_DomainRelated_To_BodyGyroscopeMagnitude-mean()"        
[67] "Frequency_DomainRelated_To_BodyGyroscopeMagnitude-std()"         
[68] "Frequency_DomainRelated_To_BodyGyroscopeJerkMagnitude-mean()"    
[69] "Frequency_DomainRelated_To_BodyGyroscopeJerkMagnitude-std()"   



## Explanation

mean(): Mean value

std(): Standard deviation

Jerk: The sudden movement acceleration. Units in 9.8 meter/sec/sec(time doamin) for the accelerometer; rad/sec/sec (time domain) for the Gyroscope.

Time_Domain: Based on time measurements.

Frequancy_Domain: Based on frequency measurements. If the measurement is in the frequancy domainm, replace "sec" in the units with "Hz".

Related_To_Body: The measurement is performed related to body movement.

Gravity: The measurement of the acceleration of gravity.

Accelerometer: Measured by accelerometer, units in 9.8 meter/sec in the time domain. 

Gyroscope: Measured by the Gyroscope, units in rad/sec

subject_num: Integers range from 1 to 30, each number is corredponding to an individual volumteer

activity_name: one of the six activities the subject performed, including the following
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
activity_num: Integers ranging from 1 to 6
---
        1: WALKING
        2: WALKING_UPSTAIRS
        3: WALKING_DOWNSTAIRS
        4: SITTING
        5: STANDING
        6: LAYING
---

##Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
