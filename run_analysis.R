#######run_Analytics.R for Programming assignment, Week 4, Cleaning and Getting Data####
###Purpose: creating tidy data from messy data
##files downloaded, unzipped and saved on laptop, working directory is set and all data is 
#is in the working directory set by the user.

####1: Code must merge train and test data #######
#Need to combine the subject number, activity to the train data, then repeat process on 
#on test data, then combine the data into one table/dataframe. 
#load train data files
traindf <- read.table("X_train.txt", header= F)
#add the column names now as it makes it easier to use cbind later. Will use for test set too
features <- read.table("features.txt", header = F, col.names = c("index", "feature"))
names = (features$feature)
colnames(traindf) = names

#load the subject number
subject_row <- read.table("subject_train.txt", header = F, col.names = "Subject Number")
##load the activity file
train_acitivty <- read.table("y_train.txt", header = F, col.names = "Activity")
###bind row index (subject number) and column index (feature) first to train and test
train <- cbind(subject_row, train_acitivty, traindf)

###repeat steps for test data####
#change wd to where test files are downloaded
test_df <- read.table("X_test.txt", header = F)
colnames(test_df) = colnames(traindf)
sub_row <- read.table("subject_test.txt", header = F, col.names = "Subject Number")
test_activity <- read.table("y_test.txt", header = F, col.names = "Activity")
###bind test data together
test <- cbind(sub_row, test_activity, test_df)

####merge train and test ###
full_data <- rbind(train, test)

####2: Code should extract only data on the mean and std for each measurement
#I am taking to this mean all variables in features.txt that have mean or std in them
###using dataset from 1 above: subset full data using grep
sub_data <- full_data[,c(grep('Mean\\b|\\bmean\\b|\\bstd', names(full_data),ignore.case = T)), drop = F ]
###now extract the subject number and activity columns from full_data 
sub_subject_activity <- full_data[, 1:2]
#add back subject and activity columns
mean_std_tidydata <- cbind(sub_subject_activity, sub_data)

####3. Uses descriptive activity names to name the activities in the dataset###########
#in a different folder, will need to set path and getwd for different data
activity <- read.table("activity_labels.txt", header = F, col.names = c("index", "activity"))
#for the dataset returned above
mean_std_tidydata[["Activity"]] <- factor(mean_std_tidydata[, "Activity"]
                                          , levels = activity[["index"]]
                                          , labels = activity[["activity"]])
###4. Appropriately labels the dataset with use descriptive variable names.
### replace t with time, f with frequency, acc with acceleration, mag with magnitude
###using stringr and str_replace_all and piping to do this over the dataset column names
library(stringr)
col_names <- names(mean_std_tidydata) %>%
  str_c(sep = " ", collapse = NULL) %>%
  str_replace_all(c("^t"="Time of ", "^f" = "Frequency of ", "\\bBodyAcc\\b"="Body Acceleration  ", "\\bMag"="Magnification ",
                    "\\bBodyGyro" = "Body Gyroscope ", "\\bBodyGyroJerk" = "Body Gyroscope of Jerks ",
                    "\\bGravityAcc"= "Gravity Acceleration ", "\\bBodyGyroJerk" = "Body Gyroscope of Jerks ",
                    "\\bBodyAccJerk\\b" = "Body Acceleration of Jerks  ", "-" = "", "\\bMagstd" = "Magnification std",
                    "\\bgravity" = "Gravity ", "\\bangle" = "Angle Variable", "\\bBodyGyroJerk"= "Body Gyroscope of Jerks ",
                    "\\bMagmean" = "Magnification mean", "\\bJerkMagmean" = "Jerk Magnification mean",
                    "\\bBodyBody" = "Body to Body ", "\\b\\(t" = "\\(Time of ", "\\bAccJerkMagmean" = "Acceleration of Jerks Magnification mean",
                    "\\bAccJerkMagstd" = "Acceleration of Jerks Magnification std","\\bGyroMag" = "Gyroscope Magnification ",
                    "\\bGyroJerkMag" = "Gyroscope of Jerks Magnification ", "\\bBodyAccMean"= "Body Acceleration Mean",
                    "\\bBodyGyroMean" = "Body Gyroscope Mean", "\\bBodyGyroJerkMean"= "Body Gyropscope Jerks Mean",
                    "\\bBodyAccJerk\\b" = "Body Acceleration of Jerks ", "\\b,Gravity"= ", Gravity", "\\bBodyAccJerkMean"= "Body of Acceleration of Jerks Mean",
                    "X\\b" = "X Axis", "Y\\b"= "Y Axis", "Z\\b" = "Z Axis"))

colnames(mean_std_tidydata) = col_names
###5. from the data set in 4, create a second, independent tidy data set
#with the average of each variable for each activity and subject.
library(dplyr)
library(reshape2)

mean_std_tidydata[["Subject.Number"]] <- as.factor(mean_std_tidydata[, "Subject.Number"])
tidydata <- reshape2::melt(data = mean_std_tidydata, id = c("Subject.Number", "Activity"))
tidydata <- reshape2::dcast(data = tidydata, Subject.Number + Activity ~ variable, fun.aggregate = mean)

write.table(tidydata, file = "tidy_data.txt", row.names=F)
summary(tidydata)
summary(tidydata$)
