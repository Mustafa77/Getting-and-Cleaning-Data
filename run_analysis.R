

##12/20/2014--Getting-and-Cleaning-Data

#1.Data Extraction:downloading and unzipping file 

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Dataset.zip", method = "curl")

unzip("Dataset.zip")

#2. Data Managment
##List of files in the folder UCI HAR Dataset

location <- file.path( getwd(), "UCI HAR Dataset")
Txt_data<-list.files(location, recursive=TRUE)
Txt_data

#Reading data from files of Activity, Subject & Fearures from test & train folders:

FeaturesTrain_data <- read.table(file.path(location, "train", "X_train.txt"),header = FALSE)
FeaturesTest_data  <- read.table(file.path(location, "test" , "X_test.txt" ),header = FALSE)
head(FeaturesTest_data)
tail(FeaturesTest_data)

ActivityTrain_data <- read.table(file.path(location, "train", "Y_train.txt"),header = FALSE)
ActivityTest_data  <- read.table(file.path(location, "test" , "Y_test.txt" ),header = FALSE)
head(ActivityTest_data )
tail(ActivityTest_data )

SubjectTrain_data <- read.table(file.path(location, "train", "subject_train.txt"),header = FALSE)
SubjectTest_data  <- read.table(file.path(location, "test" , "subject_test.txt"),header = FALSE)
head(SubjectTest_data)
tail(SubjectTest_data)


#3.Merging training and test datasets to create one data set
# creating Features_data
Features_data <- rbind(FeaturesTrain_data, FeaturesTest_data)
tail(Features_data)

# creating Activity_data
Activity_data <- rbind(ActivityTrain_data, ActivityTest_data) 
tail(Activity_data)

# creating Subject_data 
Subject_data <- rbind(SubjectTrain_data, SubjectTest_data)
tail(Subject_data)

#Extracting only the mean and standard deviation
features <- read.table("features.txt")
tail (features)
# getting only columns with mean or std in names
mean_sd <- grep("-(mean|std)\\(\\)", features[, 2])
mean_sd 

# subseting columns
Features_data <- Features_data[, mean_sd]

# Addressing column names
names(Features_data) <- features[mean_sd, 2]
names(Features_data)

names(Subject_data)<-c("subject")
names(Activity_data)<- c("activity")

library(plyr);

SubjFeatAct_data <- cbind(Subject_data, Features_data, Activity_data)

Avg_data <- ddply(SubjFeatAct_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

Avg_data$activity <- factor(Avg_data$activity,
                     levels = c("1","2","3","4","5","6"),
                     labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))


#At the end-Writing the new dataset into a txt file

write.table(Avg_data, "tidy_data.txt", row.name=FALSE)
