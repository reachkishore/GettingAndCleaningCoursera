## **CodeBook** for Getting and Cleaning Data Course Project

### **Source** of Raw Data
The Raw data is obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### **Description** of Raw Data
The Details of Raw Data can be obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### **Tidy Data** Requirement
Tidy data needs to be prepared from the HAPT Data Set (source) by including only the measures having mean or standard deviation on them.<br>
And an additional data set needs to be prepared with the average of each variable for each activity and each subject.<br>

### **Script Details** 
name of the script : run_analysis.R has the script to create the tidy data set from the raw source data<br>
in the script,<br>
'Dataset_Tidy'is the name of the variable that holds the Tidy Dataset.<br>
'Dataset_Tidy_Average' is the name of the variable that holds the tidy dataset with with the average of each variable for each activity and each subject.<br>

when run , the script creates two txt files havind the above two data sets data<br>
1.tidy_data.txt<br>
2.tidy_data_Average.txt<br>

### **Units Details** 
All the units of the measures are retained same as of source Raw data i.e.<br>
* gyroscope readings have rad/seg<br>
* acceleration readings have m/seg2 (for details refer readme.txt)<br>
* subject is number indicating the subject performed activity<br>
* activity is a string representing the performed activity<br>

### **Columns of  Dataset_Tidy** 

tBodyAcc.Mean.X	<br>
tBodyAcc.Mean.Y	<br>
tBodyAcc.Mean.Z	<br>
tBodyAcc.STD.X	<br>
tBodyAcc.STD.Y	<br>
tBodyAcc.STD.Z	<br>
tGravityAcc.Mean.X	<br>
tGravityAcc.Mean.Y	<br>
tGravityAcc.Mean.Z	<br>
tGravityAcc.STD.X	<br>
tGravityAcc.STD.Y	<br>
tGravityAcc.STD.Z	<br>
tBodyAccJerk.Mean.X	<br>
tBodyAccJerk.Mean.Y	<br>
tBodyAccJerk.Mean.Z	<br>
tBodyAccJerk.STD.X	<br>
tBodyAccJerk.STD.Y	<br>
tBodyAccJerk.STD.Z	<br>
tBodyGyro.Mean.X	<br>
tBodyGyro.Mean.Y	<br>
tBodyGyro.Mean.Z	<br>
tBodyGyro.STD.X	<br>
tBodyGyro.STD.Y	<br>
tBodyGyro.STD.Z	<br>
tBodyGyroJerk.Mean.X	<br>
tBodyGyroJerk.Mean.Y	<br>
tBodyGyroJerk.Mean.Z	<br>
tBodyGyroJerk.STD.X	<br>
tBodyGyroJerk.STD.Y	<br>
tBodyGyroJerk.STD.Z	<br>
tBodyAccMag.Mean.X	<br>
tBodyAccMag.STD.X	<br>
tGravityAccMag.Mean.X	<br>
tGravityAccMag.STD.X	<br>
tBodyAccJerkMag.Mean.X	<br>
tBodyAccJerkMag.STD.X	<br>
tBodyGyroMag.Mean.X	<br>
tBodyGyroMag.STD.X	<br>
tBodyGyroJerkMag.Mean.X	<br>
tBodyGyroJerkMag.STD.X	<br>
fBodyAcc.Mean.X	<br>
fBodyAcc.Mean.Y	<br>
fBodyAcc.Mean.Z	<br>
fBodyAcc.STD.X	<br>
fBodyAcc.STD.Y	<br>
fBodyAcc.STD.Z	<br>
fBodyAcc.MeanFreq.X	<br>
fBodyAcc.MeanFreq.Y	<br>
fBodyAcc.MeanFreq.Z	<br>
fBodyAccJerk.Mean.X	<br>
fBodyAccJerk.Mean.Y	<br>
fBodyAccJerk.Mean.Z	<br>
fBodyAccJerk.STD.X	<br>
fBodyAccJerk.STD.Y	<br>
fBodyAccJerk.STD.Z	<br>
fBodyAccJerk.MeanFreq.X	<br>
fBodyAccJerk.MeanFreq.Y	<br>
fBodyAccJerk.MeanFreq.Z	<br>
fBodyGyro.Mean.X	<br>
fBodyGyro.Mean.Y	<br>
fBodyGyro.Mean.Z	<br>
fBodyGyro.STD.X	<br>
fBodyGyro.STD.Y	<br>
fBodyGyro.STD.Z	<br>
fBodyGyro.MeanFreq.X	<br>
fBodyGyro.MeanFreq.Y	<br>
fBodyGyro.MeanFreq.Z	<br>
fBodyAccMag.Mean.X	<br>
fBodyAccMag.STD.X	<br>
fBodyAccMag.MeanFreq.X	<br>
fBodyAccJerkMag.Mean.X	<br>
fBodyAccJerkMag.STD.X	<br>
fBodyAccJerkMag.MeanFreq.X	<br>
fBodyGyroMag.Mean.X	<br>
fBodyGyroMag.STD.X	<br>
fBodyGyroMag.MeanFreq.X	<br>
fBodyGyroJerkMag.Mean.X	<br>
fBodyGyroJerkMag.STD.X	<br>
fBodyGyroJerkMag.MeanFreq.X	<br>
activity	<br>
subject	<br>


### **Columns of  Dataset_Tidy_Average** 
activity	<br>
subject	<br>
tBodyAcc.Mean.X	<br>
tBodyAcc.Mean.Y	<br>
tBodyAcc.Mean.Z	<br>
tBodyAcc.STD.X	<br>
tBodyAcc.STD.Y	<br>
tBodyAcc.STD.Z	<br>
tGravityAcc.Mean.X	<br>
tGravityAcc.Mean.Y	<br>
tGravityAcc.Mean.Z	<br>
tGravityAcc.STD.X	<br>
tGravityAcc.STD.Y	<br>
tGravityAcc.STD.Z	<br>
tBodyAccJerk.Mean.X	<br>
tBodyAccJerk.Mean.Y	<br>
tBodyAccJerk.Mean.Z	<br>
tBodyAccJerk.STD.X	<br>
tBodyAccJerk.STD.Y	<br>
tBodyAccJerk.STD.Z	<br>
tBodyGyro.Mean.X	<br>
tBodyGyro.Mean.Y	<br>
tBodyGyro.Mean.Z	<br>
tBodyGyro.STD.X	<br>
tBodyGyro.STD.Y	<br>
tBodyGyro.STD.Z	<br>
tBodyGyroJerk.Mean.X	<br>
tBodyGyroJerk.Mean.Y	<br>
tBodyGyroJerk.Mean.Z	<br>
tBodyGyroJerk.STD.X	<br>
tBodyGyroJerk.STD.Y	<br>
tBodyGyroJerk.STD.Z	<br>
tBodyAccMag.Mean.X	<br>
tBodyAccMag.STD.X	<br>
tGravityAccMag.Mean.X	<br>
tGravityAccMag.STD.X	<br>
tBodyAccJerkMag.Mean.X	<br>
tBodyAccJerkMag.STD.X	<br>
tBodyGyroMag.Mean.X	<br>
tBodyGyroMag.STD.X	<br>
tBodyGyroJerkMag.Mean.X	<br>
tBodyGyroJerkMag.STD.X	<br>
fBodyAcc.Mean.X	<br>
fBodyAcc.Mean.Y	<br>
fBodyAcc.Mean.Z	<br>
fBodyAcc.STD.X	<br>
fBodyAcc.STD.Y	<br>
fBodyAcc.STD.Z	<br>
fBodyAcc.MeanFreq.X	<br>
fBodyAcc.MeanFreq.Y	<br>
fBodyAcc.MeanFreq.Z	<br>
fBodyAccJerk.Mean.X	<br>
fBodyAccJerk.Mean.Y	<br>
fBodyAccJerk.Mean.Z	<br>
fBodyAccJerk.STD.X	<br>
fBodyAccJerk.STD.Y	<br>
fBodyAccJerk.STD.Z	<br>
fBodyAccJerk.MeanFreq.X	<br>
fBodyAccJerk.MeanFreq.Y	<br>
fBodyAccJerk.MeanFreq.Z	<br>
fBodyGyro.Mean.X	<br>
fBodyGyro.Mean.Y	<br>
fBodyGyro.Mean.Z	<br>
fBodyGyro.STD.X	<br>
fBodyGyro.STD.Y	<br>
fBodyGyro.STD.Z	<br>
fBodyGyro.MeanFreq.X	<br>
fBodyGyro.MeanFreq.Y	<br>
fBodyGyro.MeanFreq.Z	<br>
fBodyAccMag.Mean.X	<br>
fBodyAccMag.STD.X	<br>
fBodyAccMag.MeanFreq.X	<br>
fBodyAccJerkMag.Mean.X	<br>
fBodyAccJerkMag.STD.X	<br>
fBodyAccJerkMag.MeanFreq.X	<br>
fBodyGyroMag.Mean.X	<br>
fBodyGyroMag.STD.X	<br>
fBodyGyroMag.MeanFreq.X	<br>
fBodyGyroJerkMag.Mean.X	<br>
fBodyGyroJerkMag.STD.X	<br>
fBodyGyroJerkMag.MeanFreq.X	<br>

