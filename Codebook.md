Codebook

The codebook has the informtion on the dataset, data changes made the final tidy data set created.

The data was got from experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. UCI Machine Learning Repository. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The data was formatted to produce tidy data by performing the following operations, using script run_analysis.R. steps include -

- download the data
- unzip the folder
- read the test, train data and features and activities using read data table. 
- add the variable names for the data sets and activity labels 
- combine the test and training data using rbind function
- include the mean and std deviation variables 
- create a data frame that has subjects, activity and measurements
- create a data set 
- apply the mean and std deviation across groups
- create another data set as the answer for the question in assignment

variables are:
subject" 
"tBodyAcc-mean-X"
"tBodyAcc-mean-Y"
"tBodyAcc-mean-Z"
"tBodyAcc-std-X"
"tBodyAcc-std-Y"
"tBodyAcc-std-Z"
"tGravityAcc-mean-X"
"tGravityAcc-mean-Y"
"tGravityAcc-mean-Z"
"tGravityAcc-std-X"
"tGravityAcc-std-Y"
"tGravityAcc-std-Z"
"tBodyAccJerk-mean-X"
"tBodyAccJerk-mean-Y"
"tBodyAccJerk-mean-Z"
"tBodyAccJerk-std-X"
"tBodyAccJerk-std-Y"
"tBodyAccJerk-std-Z"
"tBodyGyro-mean-X"
"tBodyGyro-mean-Y"
"tBodyGyro-mean-Z"
"tBodyGyro-std-X"
"tBodyGyro-std-Y"
"tBodyGyro-std-Z"
"tBodyGyroJerk-mean-X"
"tBodyGyroJerk-mean-Y"
"tBodyGyroJerk-mean-Z"
"tBodyGyroJerk-std-X"
"tBodyGyroJerk-std-Y"
"tBodyGyroJerk-std-Z"
"tBodyAccMag-mean"
"tBodyAccMag-std"
"tGravityAccMag-mean"
"tGravityAccMag-std" 
"tBodyAccJerkMag-mean" 
"tBodyAccJerkMag-std"
"tBodyGyroMag-mean"
"tBodyGyroMag-std"
"tBodyGyroJerkMag-mean"
"tBodyGyroJerkMag-std"
"fBodyAcc-mean-X"
"fBodyAcc-mean-Y" 
"fBodyAcc-mean-Z"
"fBodyAcc-std-X" 
"fBodyAcc-std-Y"
"fBodyAcc-std-Z" 
"fBodyAccJerk-mean-X"
"fBodyAccJerk-mean-Y" 
"fBodyAccJerk-mean-Z"
"fBodyAccJerk-std-X" 
"fBodyAccJerk-std-Y"
"fBodyAccJerk-std-Z"
"fBodyGyro-mean-X" 
"fBodyGyro-mean-Y"
"fBodyGyro-mean-Z" 
"fBodyGyro-std-X" 
"fBodyGyro-std-Y"
"fBodyGyro-std-Z"
"fBodyAccMag-mean" 
"fBodyAccMag-std"
"fBodyBodyAccJerkMag-mean"
"fBodyBodyAccJerkMag-std"
"fBodyBodyGyroMag-mean"
"fBodyBodyGyroMag-std"
"fBodyBodyGyroJerkMag-mean"
"fBodyBodyGyroJerkMag-std" 
"activity"