## Getting and Cleaning Data - Course Project
## run_analysis.r
## Carter Snow 25.1.2015

######################################################################################################################################################

# The following R code will perform the following tasks for the course project in the "Getting and Cleaning Data" coursera course
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

######################################################################################################################################################

library(dplyr) #loads the dplyr package

# 1. Merge the training data and the test sets to create one data set.
#read in training data from files including the subject_train and features files.
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/Y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")
features <- read.table("features.txt")
activitylabels <- read.table("activity_labels.txt")

#assign the column names to the read train data above
colnames(xtrain) <- features[ ,2]
colnames(subjectTrain) <- c("Subject_id")
colnames(ytrain) <- c("Activity_id")
colnames(activitylabels) <- c("Activity_id", "Activity_Description")

trainingData <- cbind(subjectTrain, ytrain, xtrain) #bind the training data together

#read in test data files
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/Y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

#assign the column names to the read test data above
colnames(xtest) <- features[ ,2]
colnames(subjectTest) <- c("Subject_id")
colnames(ytest) <- c("Activity_id")

testData <- cbind(subjectTest, ytest, xtest) #bind the test data together

alldata <- rbind(trainingData, testData) #bind the test data and the training data together

# 2.Extract only the measurements on the mean and standard deviation for each measurement. 
#determine the columms required for final data set (including subject ID, Activity ID, mean, std) while removing meanFreq
requiredcolumns <- setdiff(grep("-mean|-std|Subject_id|Activity_id", colnames(alldata)), grep("meanFreq", colnames(alldata)))

alldata <- alldata[ ,requiredcolumns] #subset the finaldata to the subject, activity, and mean or std data

# 3. Use descriptive activity names to name the activities in the data set
finaldata <- merge(alldata, activitylabels, by="Activity_id") #merges alldata and activitylabels by the Activity_id variable

finaldata <- arrange(finaldata, Activity_id, Subject_id) #arranges the data by Activity_id then Subject_id

finaldata <- finaldata[, c(69, 2:68)] #reorders the column names placing the descriptive Activity label in column 1, removes the activityid column

# 4. Appropriately labels the data set with descriptive variable names. 

names(finaldata) <- gsub("^t", "Time", names(finaldata))
names(finaldata) <- gsub("^f", "Frequency", names(finaldata))
names(finaldata) <- gsub("std", "StandardDeviation", names(finaldata))
names(finaldata) <- gsub("mean", "Mean", names(finaldata))
names(finaldata) <- gsub("\\()","",names(finaldata))

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

tidydata <- aggregate(finaldata, by = list(Activity_Desciption = finaldata$Activity_Description, Subject_Id = finaldata$Subject_id), mean)

tidydata <- tidydata[, c(1:2, 5:70)] #removed the mean columns for the Activity_Description & Subject_id columns)

write.table(tidydata, "tidydata.txt", sep = "\t") #writes tidydata to a txt file in working directory
