#
#load additional packages
library(plyr)
library(dplyr)
#
# create list for initial variable names
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names=c("rowNum", "variable"))
varList <- make.names(features[,2], unique=TRUE)
#read data files
train <- read.table("./data/UCI HAR Dataset/train/subject_y_X_train.txt",
                    col.names=c("volunteer", "activity", varList))
test <- read.table("./data/UCI HAR Dataset/test/subject_y_X_test.txt",
                   col.names=c("volunteer", "activity", varList))
#
#create data.frame tables
trainDF <- tbl_df(train)
testDF <- tbl_df(test)
#
#edit data.frames and combine
edtvarList <- sort(c(1, 2, grep("mean", names(train)), grep("std", names(train))))
trainDF <- trainDF %>% select(edtvarList)
testDF <- testDF %>% select(edtvarList)
joinedDF <- full_join(trainDF, testDF)
#
#change activities from numbers to descriptive names
joinedDF$activity = c(gsub("1", "Walking", joinedDF$activity))
joinedDF$activity = c(gsub("2", "WalkingUpstairs", joinedDF$activity))
joinedDF$activity = c(gsub("3", "WalkingDownstairs", joinedDF$activity))
joinedDF$activity = c(gsub("4", "Sitting", joinedDF$activity))
joinedDF$activity = c(gsub("5", "Standing", joinedDF$activity))
joinedDF$activity = c(gsub("6", "Laying", joinedDF$activity))
#
#change variable names
cnames <- make.names(c("volunteer", "activity", "mean Body Acceleration x-axis TimeDomain",
                       "mean Body Acceleration y-axis TimeDomain",
                       "mean Body Acceleration z-axis TimeDomain", 
                       "SD Body Acceleration x-axis TimeDomain",
                       "SD Body Acceleration y-axis TimeDomain", 
                       "SD Body Acceleration z-axis TimeDomain",
                       "mean Gravity Acceleration x-axis TimeDomain", 
                       "mean Gravity Acceleration y-axis TimeDomain",
                       "mean Gravity Acceleration z-axis TimeDomain", 
                       "SD Gravity Acceleration x-axis TimeDomain",
                       "SD Gravity Acceleration y-axis TimeDomain", 
                       "SD Gravity Acceleration z-axis TimeDomain", 
                       "mean Body Acceleration Jerk x-axis TimeDomain", 
                       "mean Body Acceleration Jerk y-axis TimeDomain",
                       "mean Body Acceleration Jerk z-axis TimeDomain", 
                       "SD Body Acceleration Jerk x-axis TimeDomain", 
                       "SD Body Acceleration Jerk y-axis TimeDomain", 
                       "SD Body Acceleration Jerk z-axis TimeDomain", 
                       "mean Body Gyro x-axis TimeDomain", "mean Body Gyro y-axis TimeDomain", 
                       "mean Body Gyro z-axis TimeDomain", "SD Body Gyro x-axis TimeDomain", 
                       "SD Body Gyro y-axis TimeDomain","SD Body Gyro z-axis TimeDomain", 
                       "mean Body Gyro Jerk x-axis TimeDomain", "mean Body Gyro Jerk y-axis TimeDomain", 
                       "mean Body Gyro Jerk z-axis TimeDomain", "SD Body Gyro Jerk x-axis TimeDomain", 
                       "SD Body Gyro Jerk y-axis TimeDomain", "SD Body Gyro Jerk z-axis TimeDomain", 
                       "mean SignalMagnitude Body Acceleration TimeDomain", 
                       "SD SignalMagnitude Body Acceleration TimeDomain", 
                       "mean SignalMagnitude Gravity Acceleration TimeDomain", 
                       "SD SignalMagnitude Gravity Acceleration TimeDomain", 
                       "mean SignalMagnitude Body Acceleration Jerk TimeDomain", 
                       "SD SignalMagnitude Body Acceleration Jerk TimeDomain", 
                       "mean SignalMagnitude Body Gyro TimeDomain", 
                       "SD SignalMagnitude Body Gyro TimeDomain", 
                       "mean SignalMagnitude Body Gyro Jerk TimeDomain", 
                       "SD SignalMagnitude Body Gyro Jerk TimeDomain", 
                       "mean Body Acceleration x-axis FrequencyDomain",
                       "mean Body Acceleration y-axis FrequencyDomain",
                       "mean Body Acceleration z-axis FrequencyDomain", 
                       "SD Body Acceleration x-axis FrequencyDomain",
                       "SD Body Acceleration y-axis FrequencyDomain", 
                       "SD Body Acceleration z-axis FrequencyDomain",
                       "mean Frequency Body Acceleration x-axis FrequencyDomain",
                       "mean Frequency Body Acceleration y-axis FrequencyDomain",
                       "mean Frequency Body Acceleration z-axis FrequencyDomain",
                       "mean Body Acceleration Jerk x-axis FrequencyDomain", 
                       "mean Body Acceleration Jerk y-axis FrequencyDomain",
                       "mean Body Acceleration Jerk z-axis FrequencyDomain",
                       "SD Body Acceleration Jerk x-axis FrequencyDomain", 
                       "SD Body Acceleration Jerk y-axis FrequencyDomain",
                       "SD Body Acceleration Jerk z-axis FrequencyDomain",
                       "mean Frenquency Body Acceleration Jerk x-axis FrequencyDomain", 
                       "mean Frequency Body Acceleration Jerk y-axis FrequencyDomain",
                       "mean Frequency Body Acceleration Jerk z-axis FrequencyDomain",
                       "mean Body Gyro x-axis FrequencyDomain", "mean Body Gyro y-axis FrequencyDomain", 
                       "mean Body Gyro z-axis FrequencyDomain", "SD Body Gyro x-axis FrequencyDomain", 
                       "SD Body Gyro y-axis FrequencyDomain","SD Body Gyro z-axis FrequencyDomain",
                       "mean Frequency Body Gyro x-axis FrequencyDomain",
                       "mean Frequency Body Gyro y-axis FrequencyDomain",
                       "mean Frequency Body Gyro z-axis FrequencyDomain",
                       "mean SignalMagnitude Body Acceleration FrequencyDomain", 
                       "SD SignalMagnitude Body Acceleration FrequencyDomain", 
                       "mean Frequency SignalMagnitude Body Acceleration FrequencyDomain",
                       "mean SignalMagnitude Body Acceleration Jerk FrequencyDomain", 
                       "SD SignalMagnitude Body Acceleration Jerk FrequencyDomain", 
                       "mean Frequency SignalMagnitude Body Acceleration Jerk FrequencyDomain",
                       "mean SignalMagnitude Body Gyro FrequencyDomain", 
                       "SD SignalMagnitude Body Gyro FrequencyDomain", 
                       "mean Frequency SignalMagnitude Body Gyro FrequencyDomain",
                       "mean SignalMagnitude Body Gyro Jerk FrequencyDomain", 
                       "SD SignalMagnitude Body Gyro Jerk FrequencyDomain",
                       "mean Frenquency SignalMagnitude Body Gyro Jerk FrequencyDomain"))
names(joinedDF) <- c(cnames)
#
#save table
write.table(joinedDF, file="./data/UCI HAR Dataset/joinedDF.table", row.names=FALSE)
#
#create a second, independent tidy data set with the average of each variable for each activity and each subject
joinedDF_grp <- group_by(joinedDF, volunteer, activity)
summarize_joinedDF <- summarize_each(joinedDF_grp,  "mean", 3:81)
#
#change variable names in summarized data.frame
cnames3 <- make.names(c("volunteer", "activity", "average mean Body Acceleration x-axis TimeDomain",
                        "average mean Body Acceleration y-axis TimeDomain",
                        "average mean Body Acceleration z-axis TimeDomain", 
                        "average SD Body Acceleration x-axis TimeDomain",
                        "average SD Body Acceleration y-axis TimeDomain", 
                        "average SD Body Acceleration z-axis TimeDomain",
                        "average mean Gravity Acceleration x-axis TimeDomain", 
                        "average mean Gravity Acceleration y-axis TimeDomain",
                        "average mean Gravity Acceleration z-axis TimeDomain", 
                        "average SD Gravity Acceleration x-axis TimeDomain",
                        "average SD Gravity Acceleration y-axis TimeDomain", 
                        "average SD Gravity Acceleration z-axis TimeDomain", 
                        "average mean Body Acceleration Jerk x-axis TimeDomain", 
                        "average mean Body Acceleration Jerk y-axis TimeDomain",
                        "average mean Body Acceleration Jerk z-axis TimeDomain", 
                        "average SD Body Acceleration Jerk x-axis TimeDomain", 
                        "average SD Body Acceleration Jerk y-axis TimeDomain", 
                        "average SD Body Acceleration Jerk z-axis TimeDomain", 
                        "average mean Body Gyro x-axis TimeDomain", 
                        "average mean Body Gyro y-axis TimeDomain", 
                        "average mean Body Gyro z-axis TimeDomain", 
                        "average SD Body Gyro x-axis TimeDomain", 
                        "average SD Body Gyro y-axis TimeDomain",
                        "average SD Body Gyro z-axis TimeDomain", 
                        "average mean Body Gyro Jerk x-axis TimeDomain", 
                        "average mean Body Gyro Jerk y-axis TimeDomain", 
                        "average mean Body Gyro Jerk z-axis TimeDomain", 
                        "average SD Body Gyro Jerk x-axis TimeDomain", 
                        "average SD Body Gyro Jerk y-axis TimeDomain", 
                        "average SD Body Gyro Jerk z-axis TimeDomain", 
                        "average mean SignalMagnitude Body Acceleration TimeDomain", 
                        "average SD SignalMagnitude Body Acceleration TimeDomain", 
                        "average mean SignalMagnitude Gravity Acceleration TimeDomain", 
                        "average SD SignalMagnitude Gravity Acceleration TimeDomain", 
                        "average mean SignalMagnitude Body Acceleration Jerk TimeDomain", 
                        "average SD SignalMagnitude Body Acceleration Jerk TimeDomain", 
                        "average mean SignalMagnitude Body Gyro TimeDomain", 
                        "average SD SignalMagnitude Body Gyro TimeDomain", 
                        "average mean SignalMagnitude Body Gyro Jerk TimeDomain", 
                        "average SD SignalMagnitude Body Gyro Jerk TimeDomain", 
                        "average mean Body Acceleration x-axis FrequencyDomain",
                        "average mean Body Acceleration y-axis FrequencyDomain",
                        "average mean Body Acceleration z-axis FrequencyDomain", 
                        "average SD Body Acceleration x-axis FrequencyDomain",
                        "average SD Body Acceleration y-axis FrequencyDomain", 
                        "average SD Body Acceleration z-axis FrequencyDomain",
                        "average mean Frequency Body Acceleration x-axis FrequencyDomain",
                        "average mean Frequency Body Acceleration y-axis FrequencyDomain",
                        "average mean Frequency Body Acceleration z-axis FrequencyDomain",
                        "average mean Body Acceleration Jerk x-axis FrequencyDomain", 
                        "average mean Body Acceleration Jerk y-axis FrequencyDomain",
                        "average mean Body Acceleration Jerk z-axis FrequencyDomain",
                        "average SD Body Acceleration Jerk x-axis FrequencyDomain", 
                        "average SD Body Acceleration Jerk y-axis FrequencyDomain",
                        "average SD Body Acceleration Jerk z-axis FrequencyDomain",
                        "average mean Frenquency Body Acceleration Jerk x-axis FrequencyDomain", 
                        "average mean Frequency Body Acceleration Jerk y-axis FrequencyDomain",
                        "average mean Frequency Body Acceleration Jerk z-axis FrequencyDomain",
                        "average mean Body Gyro x-axis FrequencyDomain", 
                        "average mean Body Gyro y-axis FrequencyDomain", 
                        "average mean Body Gyro z-axis FrequencyDomain", 
                        "average SD Body Gyro x-axis FrequencyDomain", 
                        "average SD Body Gyro y-axis FrequencyDomain",
                        "average SD Body Gyro z-axis FrequencyDomain",
                        "average mean Frequency Body Gyro x-axis FrequencyDomain",
                        "average mean Frequency Body Gyro y-axis FrequencyDomain",
                        "average mean Frequency Body Gyro z-axis FrequencyDomain",
                        "average mean SignalMagnitude Body Acceleration FrequencyDomain", 
                        "average SD SignalMagnitude Body Acceleration FrequencyDomain", 
                        "average mean Frequency SignalMagnitude Body Acceleration FrequencyDomain",
                        "average mean SignalMagnitude Body Acceleration Jerk FrequencyDomain", 
                        "average SD SignalMagnitude Body Acceleration Jerk FrequencyDomain", 
                        "average mean Frequency SignalMagnitude Body Acceleration Jerk FrequencyDomain",
                        "average mean SignalMagnitude Body Gyro FrequencyDomain", 
                        "average SD SignalMagnitude Body Gyro FrequencyDomain", 
                        "average mean Frequency SignalMagnitude Body Gyro FrequencyDomain",
                        "average mean SignalMagnitude Body Gyro Jerk FrequencyDomain", 
                        "average SD SignalMagnitude Body Gyro Jerk FrequencyDomain",
                        "average mean Frenquency SignalMagnitude Body Gyro Jerk FrequencyDomain"))
names(summarize_joinedDF) <- c(cnames3)
#
#write table
write.table(summarize_joinedDF, file="./data/UCI HAR Dataset/summarize_joinedDF.table", row.names=FALSE)
