## Getting and Cleaning Data Project

Carter Snow

### Overview
This repository is for the Getting and Cleaning Data Coursera Course through John Hopkins University.
The following files are submitted to fulfill the requirements of the course project:
 - README.md
 - run_analysis.r
 - CodeBook.md
 - tidydata.txt

### What run_analysis.r does
run_analysis.r reads in data from the UCI Machine Learning Repository stored in a working directory. The measurements are from  30 subjects wearing a Samsung phone with accelerometers.
More information on these data here: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
run_analysis summarizes that data in the following way: 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### How to use run_analysis.r
Download the UCI Human Activity Recognition Using Smartphones Data Set to your working directory from here : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
Run run_analysis.r and to create a tidy data file named tidydata.txt in your working directory.