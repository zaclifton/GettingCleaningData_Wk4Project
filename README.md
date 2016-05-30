Coursera Getting and Cleaning Data -- Week 4 Project

Data is from Samsung's Human Activity Recognition Using Smartphones Dataset
Information about the study is available at:
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Datasets used for this analysis are:
  'subject' file containing a single column of numbers representing the anonymous volunteers
  'y' file containing a single column of numbers representing the activity when measurements
     were obtained
  'X' file containing processed measurements for the variables

From linux command line, combined these three files:
	"./data/UCI HAR Dataset/train/subject_train.txt"
	"./data/UCI HAR Dataset/train/y_train.txt"
	"./data/UCI HAR Dataset/train/X_train.txt"
into a single file with:
	paste -d " " subject_train.txt y_train.txt X_train.txt > subject_y_X_train.txt

Repeated the process for the same files in the "test" directory

(Note: this can be done on a Windows computer in the git bash shell)

The combined files were read into R with read.table. An initial list of variable names (column headings) 
was created from the file "./data/UCI HAR Dataset/features.txt". The resultant data frames were edited
individually to retain only the mean and standard deviation measurements, then joined into a single 
data frame. Values in the 'activity' column were changed from numbers to descriptive names. Variable names
were changed to be more descriptive (although they are still long and unwieldy).

A separate data frame was created containing the average of each variable for each activity for each 
volunteer. Variable names were again changed to reflect the new values.

These steps are detailed in the file "run_analysis.R"
The data was saved to files "joinedDF.table" and "summarize_joinedDF.table"

A technical explanation of the variables can be found in files included with the data:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

