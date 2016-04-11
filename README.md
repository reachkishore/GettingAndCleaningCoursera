## **Readme** for Getting and Cleaning Data Course Project

### **Source** of Raw Data
The Raw data is obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### **Description** of Raw Data
The Details of Raw Data can be obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### **R Version and OS details**
platform:       x86_64-w64-mingw32          
arch:           x86_64                      
os:             mingw32                     
system:         x86_64, mingw32             
status:                                     
major:          3                           
minor:         2.3                         
year:         2015                        
month:          12                          
day:            10                          
svn rev:        69752                       
language:       R                           
version.string: R version 3.2.3 (2015-12-10)
nickname:       Wooden Christmas-Tree 

### **Additional packages used**
dplyr:         0.4.3

### **Script Details** 
Name of the script : run_analysis.R has the script to create the tidy data set from the raw source data<br>
in the script,<br>
'Dataset_Tidy'is the name of the variable that holds the Tidy Dataset.<br>
'Dataset_Tidy_Average' is the name of the variable that holds the tidy dataset with with the average of each variable for each activity and each subject.<br>

when run , the script creates two txt files havind the above two data sets data<br>
1.tidy_data.txt<br>
2.tidy_data_Average.txt<br>

### **Steps involved in creating Tidy Data from raw Data**
This code assumes the working Directory is set till "HAPT Data Set" Folder.<br>
Each of the step involved in mentioned as code comments in run_analysis.R<br>
