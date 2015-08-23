---
title: "CodeBook"
author: "Juliaty"
date: "August 24, 2015"
output: html_document
---

##Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

##Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

##Variables

|Variable     |Description                                                      |
|-------------|-----------------------------------------------------------------|
|Subject      |The subject who performed the activity for each window sample.   |
|Activity     |Activities done by subject                                       |
|AnalysisType |The measurement to be analyze                                    |
|Statistic    |Statistical features                                             |
|Axis         |"X" "Y" "Z"                                                      |
|Average      |Average of each variable for each activity and each subject.     |


###Activity 
|id |Activity Labels     |                    
|---|--------------------|
|1  |WALKING             |
|2  |WALKING_UPSTAIRS    |
|3  |WALKING_DOWNSTAIRS  |
|4  |SITTING             |
|5  |STANDING            |
|6  |LAYING              |

###AnalysisType
fBodyAcc, fBodyAccJerk, fBodyAccMag, fBodyBodyAccJerkMag,  
fBodyBodyGyroJerkMag,  , fBodyBodyGyroMag, fBodyGyro, tBodyAcc,  
tBodyAccJerk, tBodyAccJerkMag, , tBodyAccMag, tBodyGyro, 
tBodyGyroJerk, tBodyGyroJerkMag, tBodyGyroMag, tGravityAcc,
tGravityAccMag

###Statistic
|name |Description         |                    
|-----|--------------------|
|mean |Mean               |
|std  |standard deviation  |

####Axis
"X", "Y", "Z" 






