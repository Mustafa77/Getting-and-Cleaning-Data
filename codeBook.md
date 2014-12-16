
#CodeBook for the tidy dataset  
  

###Source of the Dataset:  
This dataset is based on the "Human Activity Recognition Using Smartphones" project which was extracted from the following website:"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"  

###Processing of Variables  
The original dataset about subjects and activity had training and test datasets; so we merged these datasets and process merged variables accordingley. We included variables that contained a summarized information (mean & standard deviation).  

For anyone who want to analyze this final tidy dataset should notice the variables having to do with mean or standard had been extracted and named with an ending like "mean()-X and std()-X"- like the following example:  

fBodyAccMag-mean()"  "fBodyAccMag-std()"  
"fBodyBodyAccJerkMag-mean()" "fBodyBodyAccJerkMag-std()"   
"fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-std()  

"activity" 
"subject" 
"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y" 
"tBodyAcc-std()-Z" 
"tGravityAcc-mean()-X" 
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X" 
"tBodyAccJerk-std()-Y" 
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X" 
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y" "tBodyGyroJerk-mean()-Z" 
"tBodyGyroJerk-std()-X" "tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z" "tBodyAccMag-mean()" "tBodyAccMag-std()"
"tGravityAccMag-mean()" "tGravityAccMag-std()"
"tBodyAccJerkMag-mean()" "tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()" "tBodyGyroMag-std()" "tBodyGyroJerkMag-mean()" 
"tBodyGyroJerkMag-std()" "fBodyAcc-mean()-X" "fBodyAcc-mean()-Y" "fBodyAcc-mean()-Z" "fBodyAcc-std()-X" "fBodyAcc-std()-Y"
"fBodyAcc-std()-Z" "fBodyAccJerk-mean()-X" "fBodyAccJerk-mean()-Y" "fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X" "fBodyAccJerk-std()-Y" "fBodyAccJerk-std()-Z" "fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y" "fBodyGyro-mean()-Z" "fBodyGyro-std()-X" "fBodyGyro-std()-Y" "fBodyGyro-std()-Z"
"fBodyAccMag-mean()"
"fBodyAccMag-std()" "fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-mean()" "fBodyBodyGyroMag-std()" "fBodyBodyGyroJerkMag-mean()"
