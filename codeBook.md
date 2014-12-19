
#CodeBook for the tidy dataset  
  


###Source of the Dataset:  
This dataset is based on the "Human Activity Recognition Using Smartphones" project which was extracted from the following website:"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"  

So, the first step in this analysis was data Extraction by downloading and unzipping file   


###Data Managment & Processing of Variables:
After unzipping the files; we went over the list of files in the folder UCI HAR Dataset. The original dataset about subjects activity, and features had training and test datasets.  
* First, we started by reading those datasets first (subjects activity, and features). 
* second, we merged training and test datasets to create one data set.
* Third, we did more processing of variables to include varialbes with summarized information (mean & standard deviation) in the final dataset


####Please notice the following:
* We use a simple programing to label activity instead of using the file in UCI HAR Dataset.
* For anyone who want to analyze this final tidy dataset should notice the variables having to do with mean or standard had been extracted and named with an ending like "mean()-X and std()-X"- like the following example:  

fBodyAccMag-mean()"   "fBodyAccMag-std()"  
"fBodyBodyAccJerkMag-mean()"   "fBodyBodyAccJerkMag-std()"   
"fBodyBodyGyroMag-mean()"   "fBodyBodyGyroMag-std()  

