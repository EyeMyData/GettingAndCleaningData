GettingAndCleaningData - run_analysis.R 
======================

PURPOSE
<p>The purpose of this run_analysis.R script is to collect and clean the Human Activity Recognition Using Smartphones Data Set data. The output is a tidy data that can be used for later analysis. This repo explains how all of the scripts work and how they are connected.</p>

<p>One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.</p>

<p>
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
</p>

<p>
Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
</p>

<p>
SOLUTION OVERVIEW
<ul>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set.</li>
<li>Appropriately labels the data set with descriptive activity names.</li>
<li>Creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li> 
</ul>
</p>

<p>
SOLUTION DETAILS
<ul>
<li>Import lookup tables called feature and activities from UCI HAR Dataset</li>
<li>Grab test data sets along with subject lookup table from UCI HAR Dataset</li>
<li>Combine test data sets into one data set</li>
<li>Grab train data sets along with subject lookup table</li>
<li>Combine test data sets into one data set</li>
<li>Append test and train data sets into one large data set</li>
<li>Assign "Subject" to appropriate column name</li>
<li>To get friendly activity names, merge activities with Combined data set</li>
<li>Assign "ActivityName" to appropriate column name</li>
<li>Melt the data in preparation for cast</li>
<li>Cast the data by Subject and Activity, calculating the mean</li>
<li>Identify columns that are mean or std</li>
<li>Subset the data set to only pull Subject, ActivityName, mean and std columns</li>
<li>Write a file called tidydata.txt</li>
</ul>
</p>
