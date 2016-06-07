##run_analysis.R variables

df_trainFeatures  <- The X_train data set

df_trainSubject   <- The subject_train data set

df_trainActivity  <- The y_train data set

df_testFeatures   <- The X_test data set

df_testSubject    <- The subject_test data set

df_testActivity   <- The y_test data set

df_activityLabels <- The activity_labels data set

df_featureNames   <- The features data set

df_features <- The X_train and X_test data sets combined

df_subject  <- The train and test subject data sets combined

df_activity <- The y_train and y_test data sets combined

df_mean_std <- The mean and standard deviation measure form the feature names

df_tidy_data <- The final data to write to the tidy_data.txt file to upload to Github

##Tidy Data variables
'data.frame':    180 obs. of  68 variables:

 `Subject`                    : int  

 `Activity`                   : Factor

 `tBodyAcc-mean()-X`          : num

 `tBodyAcc-mean()-Y`          : num

 `tBodyAcc-mean()-Z`          : num

 `tBodyAcc-std()-X`           : num

 `tBodyAcc-std()-Y`           : num

 `tBodyAcc-std()-Z`           : num

 `tGravityAcc-mean()-X`       : num

 `tGravityAcc-mean()-Y`       : num

 `tGravityAcc-mean()-Z`       : num

 `tGravityAcc-std()-X`        : num

 `tGravityAcc-std()-Y`        : num

 `tGravityAcc-std()-Z`        : num

 `tBodyAccJerk-mean()-X`      : num

 `tBodyAccJerk-mean()-Y`      : num

 `tBodyAccJerk-mean()-Z`      : num

 `tBodyAccJerk-std()-X`       : num

 `tBodyAccJerk-std()-Y`       : num

 `tBodyAccJerk-std()-Z`       : num

 `tBodyGyro-mean()-X`         : num

 `tBodyGyro-mean()-Y`         : num

 `tBodyGyro-mean()-Z`         : num

 `tBodyGyro-std()-X`          : num

 `tBodyGyro-std()-Y`          : num

 `tBodyGyro-std()-Z`          : num

 `tBodyGyroJerk-mean()-X`     : num

 `tBodyGyroJerk-mean()-Y`     : num

 `tBodyGyroJerk-mean()-Z`     : num

 `tBodyGyroJerk-std()-X`      : num

 `tBodyGyroJerk-std()-Y`      : num

 `tBodyGyroJerk-std()-Z`      : num

 `tBodyAccMag-mean()`         : num

 `tBodyAccMag-std()`          : num

 `tGravityAccMag-mean()`      : num

 `tGravityAccMag-std()`       : num

 `tBodyAccJerkMag-mean()`     : num

 `tBodyAccJerkMag-std()`      : num

 `tBodyGyroMag-mean()`        : num

 `tBodyGyroMag-std()`         : num

 `tBodyGyroJerkMag-mean()`    : num

 `tBodyGyroJerkMag-std()`     : num

 `fBodyAcc-mean()-X`          : num

 `fBodyAcc-mean()-Y`          : num

 `fBodyAcc-mean()-Z`          : num

 `fBodyAcc-std()-X`           : num

 `fBodyAcc-std()-Y`           : num

 `fBodyAcc-std()-Z`           : num

 `fBodyAccJerk-mean()-X`      : num

 `fBodyAccJerk-mean()-Y`      : num

 `fBodyAccJerk-mean()-Z`      : num

 `fBodyAccJerk-std()-X`       : num

 `fBodyAccJerk-std()-Y`       : num

 `fBodyAccJerk-std()-Z`       : num

 `fBodyGyro-mean()-X`         : num

 `fBodyGyro-mean()-Y`         : num

 `fBodyGyro-mean()-Z`         : num

 `fBodyGyro-std()-X`          : num

 `fBodyGyro-std()-Y`          : num

 `fBodyGyro-std()-Z`          : num

 `fBodyAccMag-mean()`         : num

 `fBodyAccMag-std()`          : num

 `fBodyBodyAccJerkMag-mean()` : num

 `fBodyBodyAccJerkMag-std()`  : num

 `fBodyBodyGyroMag-mean()`    : num

 `fBodyBodyGyroMag-std()`     : num

 `fBodyBodyGyroJerkMag-mean()`: num

 `fBodyBodyGyroJerkMag-std()` : num
