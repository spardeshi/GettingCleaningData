## read in the test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test<- read.table("UCI HAR Dataset/test/y_test.txt")

## read in train data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train<- read.table("UCI HAR Dataset/train/y_train.txt")

## read in features and activities
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("feature", "featureLabel")) 
activities_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity", "activityLabel")) 

## merge test + training data 
subjectData <- rbind(subject_test, subject_train) 
XData <- rbind(X_test, X_train)
YData <- rbind(y_test, y_train) 

##more merge and label names
names(subjectData) <- "subject"
activities_labels$activityLabel <- gsub("_", "", as.character(activities_labels$activityLabel)) 
includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel) 
XData <- XData[, includedFeatures] 
names(XData) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures]) 
names(YData) = "activity" 
activity <- merge(YData, activities_labels, by="activity")$activityLabel 

##create one data set, fina mean and std deviationson tidy data
data <- cbind(subjectData, XData, activity) 
write.table(data, "mergedata.txt")
View(data)
mydata <- data.table(data) 
meansData<- mydata[, lapply(.SD, mean), by=c("subject", "activity")] 
write.table(meansData, "tidydata.txt", row.names=FALSE)
View(meansData)


