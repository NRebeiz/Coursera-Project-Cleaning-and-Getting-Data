---
title: "README.md"
author: "Natalie Rebeiz"
date: "January 15, 2019"
output: html_document
---
# Project: Coursera Getting and Cleaning Data, Week 4
This project is for week 4 of Getting and Cleaning Data on Coursera. The purpose of the project is to demonstrate my ability to collect, work with and clean a data set. The goal is to prepare tidy data that can be used later for analysis. This project will be reviewed by our peers. 

This repository contains the original data files including the README.txt file and codebook which is called "feature_info.txt".  This repo also contains the new README.md file for the project, a codebook called "codebook.md" that contains information on the variables in the tidy data set, a text file containing the tidy data set "tidy_data.txt", and the script to create the tidy data set "run_analysis.R".


## Peer Review criteria
The project will be peer reviewed based on the following criteria:
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available     codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.
##Description of Raw Data Set, Collection and Experiments
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Background From Original README.md text

Human Activity Recognition Using Smartphones Dataset, Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
<www.smartlab.ws>

#### Data Collection and Experiments
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### Additional Notes              
The original README.md file and codebook for raw data variables (features_info.txt) are availabe in the raw data file for the project. An updated codebook for the tidy data is included in this repository. 


## Description of Project Requirements
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set_._
2. Extracts only the measurements on the mean and standard deviation for each      measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set       with the average of each variable for each activity and each subject.
### Tidy Data Features of run_analysis.R Script
*Requirement 1* The original data set was split into train and test, and this was merged into one data set called full_data. 

*Requirement 2* The original 561 variables have been reduced to 75 variables that represent the mean and std for each variable analyzed. The subject number (separate text file) and activity (separate text file) were also merged with the full_data set and column headings were added from the feature text file.

*Requirement 3* The descriptive activity names, such as Walking, Standing, were used in place of numerical variables. The descriptive activity is a character variable. 

*Requirement 4* The variable names were changed to be more descriptive. For example, variable "tBodyACC-mean()X" was transformed to "Time of Body Acceleration mean()X Axis". The code replaces abbreviations in the original name, and adds connecting word "of", and adds "Axis" to make it clear that X is an axis direction. This makes the 75 variable names more readable and understandable when doing later analysis.  

*Requirement 5* A second independent tidy data set was created from step 4,  named tidydata, and saved as a text file "tidy_data.txt".




```{tidydata <-read.table(file="tidy_data.txt", header = TRUE)}
summary(tidydata)
```

