###Part1

##Loading libraries
library(dplyr)

##Creating directory and downloading ziped file

if(!file.exists("data")){
		dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

##Unziping file
unzip(zipfile="./data/Dataset.zip",exdir="./data")

##Setting the path to raw data
path <- file.path("./data/UCI HAR Dataset")



###Part2

##Reading data
subject_train <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
subject_test  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)

activity_test  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE)
activity_train <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE)

features_test  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
features_train <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

##Merging the training and the test sets
subject_data <- rbind(subject_train, subject_test)
activity_data <- rbind(activity_train, activity_test)
features_data <- rbind(features_train, features_test)


###Part3

##Assigning names to variables and activities
names(subject_data)<- "subject"
names(activity_data)<- "activity"

features_names <- read.table(file.path(path, "features.txt"),head=FALSE)
names(features_data)<- features_names$V2

for (i in 1:nrow(activity_data)) {
	 if(activity_data[i,1]==1) {activity_data[i,1] <- "WALKING"} 
	else if(activity_data[i,1]==2) {activity_data[i,1] <- "WALKING_UPSTAIRS"}
	else if(activity_data[i,1]==3) {activity_data[i,1] <- "WALKING_DOWNTAIRS"}
	else if(activity_data[i,1]==4) {activity_data[i,1] <- "SITTING"}
	else if(activity_data[i,1]==5) {activity_data[i,1] <- "STANDING"}
	else {activity_data[i,1] <- "LAYING"}
    }


###Part4

##Merging 3 sets (subject, activity, features) to create one data frame
Data <- cbind(subject_data, activity_data, features_data)

##Extracting only the measurements on the mean and standard deviation for each feature
columns_Mean_or_StD <- grep(".*Mean.*|.*Std.*", names(Data), ignore.case=TRUE)
requiredColumns <- c(1, 2, columns_Mean_or_StD)
Data <- Data[,requiredColumns]

##Labeling appropriately the data set with more descriptive variable names 
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))


###Part5

##Creating independent tidy data set with the average of each variable for each activity and each subject
tidyData <- aggregate(. ~subject + activity, Data, mean)
tidyData <- arrange(tidyData, subject, activity)
write.table(tidyData, file = "TidyData.txt", row.names = FALSE)
