# First things first: Do some house cleaning (clear the workspace):
rm(list=ls())

# Download the necessary files:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile='UCI HAR Dataset.zip',method='curl')

# Unzip:
if(!file.exists('UCI HAR Dataset')){unzip('UCI HAR Dataset.zip')}

# STEP 1. Merge the training and test data sets:

path <- 'UCI HAR Dataset'

# get the training data:
trainingSubjects <- read.table(file.path(path, 'train', 'subject_train.txt'))
trainingValues <- read.table(file.path(path, 'train', 'X_train.txt'))
trainingActivityIDs <- read.table(file.path(path, 'train', 'y_train.txt'))

# get the test data:
testSubjects <- read.table(file.path(path, 'test', 'subject_test.txt'))
testValues <- read.table(file.path(path, 'test', 'X_test.txt'))
testActivityIDs <- read.table(file.path(path, 'test', 'y_test.txt'))

# read the features and the activity labels
featureLabels <- read.table(file.path(path, 'features.txt'), as.is=TRUE)
activityLabels <- read.table(file.path(path, 'activity_labels.txt'), as.is=TRUE)
colnames(activityLabels) <- c('activityID', 'activityLabel')

# merge, then delete the input data tables:
myData <- rbind(cbind(trainingSubjects,trainingActivityIDs,trainingValues), 
                cbind(testSubjects,testActivityIDs,testValues))
colnames(myData) <- c('subject', 'activity', featureLabels[,2])
rm(trainingSubjects,trainingValues,trainingActivityIDs,
   testSubjects,testValues,testActivityIDs)

# STEP 2: extract only the mean and standard deviation for each observation

goodColumns <- grepl("mean|std|subject|activity",colnames(myData))
dataset <- myData[,goodColumns]

# STEP 3: make the activity labels descriptive
# we'll replace the activityID with its activityLabel (lower case)

dataset$activity <- factor(dataset$activity, 
                           levels=activityLabels[,1], labels=tolower(activityLabels[,2]))

# STEP 4: make the variable labels descriptive

dataset$subject <- as.factor(dataset$subject)
variableNames <- colnames(dataset)

variableNames <- gsub("[\\(\\)-]","",variableNames) # strip special characters
variableNames <- gsub("^f", "frequencyDomain", variableNames)
variableNames <- gsub("^t", "timeDomain", variableNames)
variableNames <- gsub("Acc", "Accelerometer", variableNames)
variableNames <- gsub("Gyro", "Gyroscope", variableNames)
variableNames <- gsub("Mag", "Magnitude", variableNames)
variableNames <- gsub("Freq", "Frequency", variableNames)
variableNames <- gsub("mean", "Mean", variableNames)
variableNames <- gsub("std", "StandardDeviation", variableNames)
variableNames <- gsub("BodyBody", "Body", variableNames) # kludge for typo introduced above

colnames(dataset) <- variableNames

# STEP 5: create a second, independent tidy data set with the 
# average of each variable for each activity and each subject

library(reshape2) 
tidyData <- melt(dataset, id=c("subject", "activity"))
tidyDataMeans <- dcast(tidyData, subject + activity ~ variable, mean)

write.table(tidyDataMeans, "tidyData.txt", row.names=FALSE, quote=FALSE)
