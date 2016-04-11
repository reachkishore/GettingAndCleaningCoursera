#Let me go by the list of tasks listed in the assignment one by one 
#and I will write the corresponding code step by step
#Note :- This code assumes the working Directory is set till "HAPT Data Set" Folder.

#Task #1. Merges the training and the test sets to create one data set.

# 	As we need to merge test and train data , first we will read both of them seperately and will merge it in the next steps
# 	Each of the Test and Train folders have 3 seperate files


# 	Read the Test Data

X_Test <- read.table("Test\\X_test.txt")
y_Test <- read.table("Test\\y_test.txt")
subject_Test <- read.table("Test\\subject_id_test.txt")

#	Read the Training Data

X_Train <- read.table("Train\\X_train.txt")
y_Train <- read.table("Train\\y_train.txt")
subject_Train <- read.table("Train\\subject_id_train.txt")

# 	Merge the above both data sets
X <- rbind(X_Train,X_Test)
y <- rbind(y_Train,y_Test)
subject <- rbind(subject_Train,subject_Test)

#   Including the above merged data in to a single dataset 
Dataset_Tidy <- cbind(X,y,subject)
#   Now , give proper names to the columns 
#   X conatins all the features , lets read the features.txt, we will use these as col names hence while reading set stringsAsFactors = FALSE
features <- read.table("features.txt",stringsAsFactors = FALSE)
#   y Contains the activity codes as a single column let us keep that column name as "activity"

#   subject conatins the ID of subject performed the activity as a single column, lets keep that column name as "subject"
#   Now set the names of the Dataset_Tidy
names(Dataset_Tidy) <- c(features$V1,"activity","subject")

#This completes the Task #1

# Task #2.Extracts only the measurements on the mean and standard deviation for each measurement.
#   This means we need to discard the features that wont have Mean,STD in their name.
#   For this from the above Dataset_Tidy take the columns that have Mean,STD in them , also we will retain the  "activity","subject" columns
#   for this we will use grep with pattern "Mean|STD" also we will pass the parameter VALUE = TRUE so that we will get matching column names
#   udpdate the Dataset_Tidy to have only these columns

Dataset_Tidy <- Dataset_Tidy[,c(grep("Mean|STD",names(Dataset_Tidy),value = TRUE),"activity","subject")]

#This completes the Task #2

#Task #3. Uses descriptive activity names to name the activities in the data set

#   "activity" column in the Dataset_Tidy actually capturing the activity ID instead of activity name
#   During the lecture , as our instructor mentioned in tidy data it is better to store meaningful data such as Male or Female instead of 0 and 1
#   I believe  similarly here also, it is expected to store activity names instead of activity ID
#   Hence we will replace values of activity column

#   Read activity Labels data
activity_labels <- read.table("activity_labels.txt",col.names = c("ID","Label"))
#   For Replacing values in data activity column , we will use sapply and 
#   we will write small function which will return the activity label corresponding to the activity id
Dataset_Tidy$activity <- sapply(Dataset_Tidy$activity,function(x){activity_labels$Label[activity_labels$ID== x]})

#This completes the Task #3

#Task #4.Appropriately labels the data set with descriptive variable names.
#   Earlier code in Task #1 names(Dataset_Tidy) <- c(features$V1,"activity","subject") has done the half work for us
#   If we read "features_info.txt" it mentions that accelerometer and gyroscope 3-axial readings have the convetion -XYZ 
#	i.e. for example tBodyAcc-1 means tBodyAcc in X direction  similary 2 for Y and 3 for Z
#	we will replace numbers with thier respecive X,Y and Z and we will also replace '-' with '.' for the column names
tempnames <- names(Dataset_Tidy)
tempnames <- gsub("1","X",tempnames)
tempnames <- gsub("2","Y",tempnames)
tempnames <- gsub("3","Z",tempnames)
tempnames <- gsub("-",".",tempnames)
# Now Re assign the updated column names
names(Dataset_Tidy) <- tempnames

#   Hence the "Dataset_Tidy" variable is our final tidy Dataset.

#This completes the Task #4

#Task#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#   we can use aggregate function for this
Dataset_Tidy_Average <- aggregate(Dataset_Tidy, by=list(Dataset_Tidy$activity, Dataset_Tidy$subject), FUN=mean)
#   This Creates  the average data with two additional columns
#   we need to remove the last two columns , update the above dataset by subsetting and excluding last two columns
#   As ncol gives the number of columns lets use this 
Dataset_Tidy_Average <-  Dataset_Tidy_Average[,-c((ncol(Dataset_Tidy_Average) -1),ncol(Dataset_Tidy_Average))]
#   Also we need to rename the first two columns as aggreate function creates these column names as "Group.1 and Group.2"
colnames(Dataset_Tidy_Average)[1:2] <- c("activity","subject")
#   Hence the "Dataset_Tidy_Average" variable is our final tidy Dataset with the average of each variable.

#   Write the both Tidy Datasets to files
write.table(Dataset_Tidy, file="tidy_data.txt", row.names=FALSE)
write.table(Dataset_Tidy_Average, file="tidy_data_Average.txt", row.names=FALSE)

#This completes the Task #5


