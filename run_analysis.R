setwd("~/Courseradata/UCI HAR Dataset")
## Merges the training and the test sets to create one data set.

# read the data 
library(data.table)
library(dplyr)
subject_test <- tbl_df(read.table("./test/subject_test.txt"))
x_test <- tbl_df(read.table("./test/X_test.txt"))
y_test <- tbl_df(read.table("./test/y_test.txt"))
subject_train <- tbl_df(read.table("./train/subject_train.txt"))
x_train <- tbl_df(read.table("./train/X_train.txt"))
y_train <- tbl_df(read.table("./train/y_train.txt"))
feature <- tbl_df(read.table("features.txt"))
names(feature) <- c("feature_num","feature_name")

activity_label <- tbl_df(read.table("activity_labels.txt"))
names(activity_label) <- c("activity_num","activity_name")
 
# combine training data with testing data by row binding
subject <- rbind(subject_train,subject_test)
names(subject) <- "subject_num"

activity <- rbind(y_train,y_test)
names(activity) <- "activity_num"

data <- rbind(x_train,x_test)
names(data) <- feature$feature_name

#merge subject and activity by column
sub_and_act <- cbind(subject,activity)
#merge all the data by column
data <- cbind(sub_and_act,data)

##Extracts only the measurements on the mean and 
##standard deviation for each measurement.
featureName_mean_std <- grep("[Mm]ean\\(.*)|[Ss]td\\(.*)",feature$feature_name,value = TRUE)
# extract features containing std() or mean()
featureName_mean_std <- union(c("subject_num","activity_num"),featureName_mean_std)
data<- subset(data,select=featureName_mean_std) 

dataset <- merge(activity_label, data , by="activity_num", all.x=TRUE)

#use descriprive variable names
names(dataset) <- gsub("^t","Time_Domain",names(dataset))
names(dataset) <- gsub("^f","Frequency_Domain",names(dataset))
names(dataset) <- gsub("BodyBody","Related_To_Body",names(dataset))
names(dataset) <- gsub("Acc","Accelerometer",names(dataset))
names(dataset) <- gsub("Mag","Magnitude",names(dataset))
names(dataset) <- gsub("Gyro","Gyroscope",names(dataset))
###From the previous data set, creates a second, independent tidy data set 
###with the average of each variable for each activity and each subject.

TidyDataSet <- tbl_df(aggregate(. ~ subject_num - activity_name, data = dataset, mean))
write.table(TidyDataSet, "TidyDataSet.txt", row.name=FALSE)
