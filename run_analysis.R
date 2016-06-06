##Lewis Michelson Getting and Cleaning Data Course Project
# You should create one R script called run_analysis.R that does the following.
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the
#	average of each variable for each activity and each subject.

# Load librarys
library(plyr)

#Load training, testing and meta data sets
#Note remember to capitalize the X in X_train amd X_test :)
df_trainFeatures <- read.table("train/X_train.txt")
df_trainSubject  <- read.table("train/subject_train.txt")
df_trainActivity <- read.table("train/y_train.txt")
df_testFeatures  <- read.table("test/X_test.txt")
df_testSubject   <- read.table("test/subject_test.txt")
df_testActivity  <- read.table("test/y_test.txt")

df_activityLabels <- read.table("activity_labels.txt")
df_featureNames   <- read.table("features.txt")

# 1. Merges the training and the test sets to create one data set.
df_features <- rbind(df_trainFeatures, df_testFeatures)
df_subject  <- rbind(df_trainSubject, df_testSubject)
df_activity <- rbind(df_trainActivity, df_testActivity)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
df_mean_std <- grep("-(mean|std)\\(\\)", df_featureNames[,2])
df_features <- df_features[, df_mean_std]
names(df_features) <- df_featureNames[df_mean_std,2]

#3. Uses descriptive activity names to name the activities in the data set
df_activity[,1] <- df_activityLabels[df_activity[,1],2]
names(df_activity) <- "Activity"

# 4. Appropriately labels the data set with descriptive variable names.

names(df_subject) <- "Subject"

#One data set
df_final <- cbind(df_features,df_activity,df_subject)

# 5. From the data set in step 4, creates a second, independent tidy data set with the
#    average of each variable for each activity and each subject.
# Note: use ddply to split data frame by variables Activity and Subject
#       apply colmeans to the other columns
df_tidy_data <- ddply(df_final, .(Subject, Activity), function(x) colMeans(x[,1:66]))

#Write df_tidy_data to file
write.table(df_tidy_data, "tidy_data.txt", row.names = FALSE)


