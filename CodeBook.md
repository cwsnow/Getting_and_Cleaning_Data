## CodeBook for Getting and Cleaning Data Project: Tidydata

### Data Source
The data for this project is availible from the UCI Machine Learning Repository. (Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012). It is availible for download here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Features variables
The following summary of the variables is availible from the features_info.txt file located in the original download: The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### How I selected and renamed variables
Step 2 for this project explicitly stated "Extract only the measurements on the mean and standard deviation for each measurement". Any variable that inndicated it was a measurement of 'Mean' or 'std' was kept. Measurements that were not explicity a mean such as 'gravityMean' were excluded as I could not confirm the type of measurement. The variable names were also changed to make them more descriptive (see step 4 in the README.md file). Variables staring with 't' were had the 't' replaced with 'Time' since 't' denoted 'Time'. Variables starting with 'f' had the 'f' replaced with 'Frequency'. Measurement varible names indicating a mean had the 'mean' replaced with "Mean". Measurement varible names indicating a standard deviation had the 'std' replaced with "StandardDeviation". All other parts of the variables were easily understood by their abberivations. The following measurement variables were the result.
 "TimeBodyAcc-Mean-X"                             "TimeBodyAcc-Mean-Y"                            
 "TimeBodyAcc-Mean-Z"                             "TimeBodyAcc-StandardDeviation-X"               
 "TimeBodyAcc-StandardDeviation-Y"                "TimeBodyAcc-StandardDeviation-Z"               
 "TimeGravityAcc-Mean-X"                          "TimeGravityAcc-Mean-Y"                         
 "TimeGravityAcc-Mean-Z"                          "TimeGravityAcc-StandardDeviation-X"            
 "TimeGravityAcc-StandardDeviation-Y"             "TimeGravityAcc-StandardDeviation-Z"            
 "TimeBodyAccJerk-Mean-X"                         "TimeBodyAccJerk-Mean-Y"                        
 "TimeBodyAccJerk-Mean-Z"                         "TimeBodyAccJerk-StandardDeviation-X"           
 "TimeBodyAccJerk-StandardDeviation-Y"            "TimeBodyAccJerk-StandardDeviation-Z"           
 "TimeBodyGyro-Mean-X"                            "TimeBodyGyro-Mean-Y"                           
 "TimeBodyGyro-Mean-Z"                            "TimeBodyGyro-StandardDeviation-X"              
 "TimeBodyGyro-StandardDeviation-Y"               "TimeBodyGyro-StandardDeviation-Z"              
 "TimeBodyGyroJerk-Mean-X"                        "TimeBodyGyroJerk-Mean-Y"                     
 "TimeBodyGyroJerk-Mean-Z"                        "TimeBodyGyroJerk-StandardDeviation-X"          
 "TimeBodyGyroJerk-StandardDeviation-Y"           "TimeBodyGyroJerk-StandardDeviation-Z"          
 "TimeBodyAccMag-Mean"                            "TimeBodyAccMag-StandardDeviation"              
 "TimeGravityAccMag-Mean"                         "TimeGravityAccMag-StandardDeviation"           
 "TimeBodyAccJerkMag-Mean"                        "TimeBodyAccJerkMag-StandardDeviation"          
 "TimeBodyGyroMag-Mean"                           "TimeBodyGyroMag-StandardDeviation"             
 "TimeBodyGyroJerkMag-Mean"                       "TimeBodyGyroJerkMag-StandardDeviation"         
 "FrequencyBodyAcc-Mean-X"                        "FrequencyBodyAcc-Mean-Y"                       
 "FrequencyBodyAcc-Mean-Z"                        "FrequencyBodyAcc-StandardDeviation-X"          
 "FrequencyBodyAcc-StandardDeviation-Y"           "FrequencyBodyAcc-StandardDeviation-Z"          
 "FrequencyBodyAccJerk-Mean-X"                    "FrequencyBodyAccJerk-Mean-Y"                   
 "FrequencyBodyAccJerk-Mean-Z"                    "FrequencyBodyAccJerk-StandardDeviation-X"      
 "FrequencyBodyAccJerk-StandardDeviation-Y"       "FrequencyBodyAccJerk-StandardDeviation-Z"      
 "FrequencyBodyGyro-Mean-X"                       "FrequencyBodyGyro-Mean-Y"                      
 "FrequencyBodyGyro-Mean-Z"                       "FrequencyBodyGyro-StandardDeviation-X"         
 "FrequencyBodyGyro-StandardDeviation-Y"          "FrequencyBodyGyro-StandardDeviation-Z"         
 "FrequencyBodyAccMag-Mean"                       "FrequencyBodyAccMag-StandardDeviation"         
 "FrequencyBodyBodyAccJerkMag-Mean"               "FrequencyBodyBodyAccJerkMag-StandardDeviation" 
 "FrequencyBodyBodyGyroMag-Mean"                  "FrequencyBodyBodyGyroMag-StandardDeviation"    
 "FrequencyBodyBodyGyroJerkMag-Mean"              "FrequencyBodyBodyGyroJerkMag-StandardDeviation"