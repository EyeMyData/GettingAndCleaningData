GettingAndCleaningData - run_analysis.R 
======================

PURPOSE
The purpose of this run_analysis.R script is to collect and clean the Human Activity Recognition Using Smartphones Data Set data. The output is a tidy data that can be used for later analysis. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

SOLUTION OVERVIEW
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive activity names. 
*Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


SOLUTION DETAILS
Import lookup tables called feature and activities from UCI HAR Dataset
Grab test data sets along with subject lookup table from UCI HAR Dataset
Combine test data sets into one data set
Grab train data sets along with subject lookup table
Combine test data sets into one data set
Append test and train data sets into one large data set
Assign "Subject" to appropriate column name
To get friendly activity names, merge activities with Combined data set
Assign "ActivityName" to appropriate column name
Melt the data in preparation for cast
Cast the data by Subject and Activity, calculating the mean
Identify columns that are mean or std
Subset the data set to only pull Subject, ActivityName, mean and std columns
Write a file called tidydata.txt
