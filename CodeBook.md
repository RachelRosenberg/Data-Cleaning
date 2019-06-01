---
title: "CodeBook.md"
author: "RR"
date: "30/05/2019"
output: html_document
---

## tidy_data.txt

The data set **tidy_data.txt** has been created by merging together and manipulating several data sets collected from the accelerometers from the Samsung Galaxy S smartphone. A description of the original data is provided here:  
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>  
and the original data were downloaded from here:  
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>  

The original data had varying numbers of repeated mean and std measures for each subject/activity combination. The tidy data summarises these into the mean of all mean or std measures for each subject/activity combination.

After following the assignment instructions (detailed in the accompanying **README.md**) the resulting file contains 180 rows (6 rows for each subject in the study) and the following 68 columns:  

| COLUMN                        |DESCRIPTION                                                          
|:------------------------------|:--------------------------------------------------------------------
|1  Subject	                    |Values 1-30:  Thirty volunteers within an age bracket of 19-48 years
|2  Activity                    |Six activities performed by each subject whilst wearing Smartphone:
|                               |1 WALKING
|	                              |2 WALKING_UPSTAIRS
|	                              |3 WALKING_DOWNSTAIRS
|	                              |4 SITTING
|	                              |5 STANDING
|	                              |6 LAYING
|3  TimeBodyAccMeanX	          |Mean of tBodyAcc-mean()-X measurements
|4  TimeBodyAccMeanY	          |Mean of tBodyAcc-mean()-Y measurements  
|5  TimeBodyAccMeanZ	          |Mean of tBodyAcc-mean()-Z measurements
|6  TimeBodyAccStdX	            |Mean of tBodyAcc-std()-X measurements  
|7  TimeBodyAccStdY	            |Mean of tBodyAcc-std()-Y measurements 
|8  TimeBodyAccStdZ	            |Mean of tBodyAcc-std()-Z measurements
|9  TimeGravityAccMeanX	        |Mean of tGravityAcc-mean()-X measurements  
|10 TimeGravityAccMeanY	        |Mean of tGravityAcc-mean()-Y measurements  
|11 TimeGravityAccMeanZ	        |Mean of tGravityAcc-mean()-Z measurements  
|12 TimeGravityAccStdX	        |Mean of tGravityAcc-std()-X measurements  
|13 TimeGravityAccStdY	        |Mean of tGravityAcc-std()-Y measurements  
|14 TimeGravityAccStdZ	        |Mean of tGravityAcc-std()-Z measurements  
|15 TimeBodyAccJerkMeanX	      |Mean of tBodyAccJerk-mean()-X measurements  
|16 TimeBodyAccJerkMeanY	      |Mean of tBodyAccJerk-mean()-Y measurements  
|17 TimeBodyAccJerkMeanZ	      |Mean of tBodyAccJerk-mean()-Z measurements  
|18 TimeBodyAccJerkStdX	        |Mean of tBodyAccJerk-std()-X measurements  
|19 TimeBodyAccJerkStdY	        |Mean of tBodyAccJerk-std()-Y measurements  
|20 TimeBodyAccJerkStdZ	        |Mean of tBodyAccJerk-std()-Z measurements  
|21 TimeBodyGyroMeanX	          |Mean of tBodyGyro-mean()-X measurements  
|22 TimeBodyGyroMeanY 	        |Mean of tBodyGyro-mean()-Y measurements  
|23 TimeBodyGyroMeanZ	          |Mean of tBodyGyro-mean()-Z measurements  
|24 TimeBodyGyroStdX	          |Mean of tBodyGyro-std()-X measurements  
|25 TimeBodyGyroStdY	          |Mean of tBodyGyro-std()-Y measurements  
|26 TimeBodyGyroStdZ	          |Mean of tBodyGyro-std()-Z measurements  
|27 TimeBodyGyroJerkMeanX	      |Mean of tBodyGyroJerk-mean()-X measurements  
|28 TimeBodyGyroJerkMeanY	      |Mean of tBodyGyroJerk-mean()-Y measurements  
|29 TimeBodyGyroJerkMeanZ	      |Mean of tBodyGyroJerk-mean()-Z measurements  
|30 TimeBodyGyroJerkStdX	      |Mean of tBodyGyroJerk-std()-X measurements  
|31 TimeBodyGyroJerkStdY	      |Mean of tBodyGyroJerk-std()-Y measurements  
|32 TimeBodyGyroJerkStdZ	      |Mean of tBodyGyroJerk-std()-Z measurements  
|33 TimeBodyAccMagMean	        |Mean of tBodyAccMag-mean() measurements  
|34 TimeBodyAccMagStd	          |Mean of tBodyAccMag-std() measurements  
|35 TimeGravityAccMagMean	      |Mean of tGravityAccMag-mean() measurements  
|36 TimeGravityAccMagStd	      |Mean of tGravityAccMag-std() measurements  
|37 TimeBodyAccJerkMagMean	    |Mean of tBodyAccJerkMag-mean() measurements  
|38 TimeBodyAccJerkMagStd	      |Mean of tBodyAccJerkMag-std() measurements  
|39 TimeBodyGyroMagMean	        |Mean of tBodyGyroMag-mean() measurements  
|40 TimeBodyGyroMagStd	        |Mean of tBodyGyroMag-std() measurements  
|41 TimeBodyGyroJerkMagMean	    |Mean of tBodyGyroJerkMag-mean() measurements  
|42 TimeBodyGyroJerkMagStd	    |Mean of tBodyGyroJerkMag-std() measurements  
|43 FreqBodyAccMeanX	          |Mean of fBodyAcc-mean()-X measurements  
|44 FreqBodyAccMeanY	          |Mean of fBodyAcc-mean()-Y measurements  
|45 FreqBodyAccMeanZ	          |Mean of fBodyAcc-mean()-Z measurements  
|46 FreqBodyAccStdX	            |Mean of fBodyAcc-std()-X measurements  
|47 FreqBodyAccStdY	            |Mean of fBodyAcc-std()-Y measurements  
|48 FreqBodyAccStdZ	            |Mean of fBodyAcc-std()-Z measurements  
|49 FreqBodyAccJerkMeanX	      |Mean of fBodyAccJerk-mean()-X measurements  
|50 FreqBodyAccJerkMeanY	      |Mean of fBodyAccJerk-mean()-Y measurements  
|51 FreqBodyAccJerkMeanZ	      |Mean of fBodyAccJerk-mean()-Z measurements  
|52 FreqBodyAccJerkStdX	        |Mean of fBodyAccJerk-std()-X measurements  
|53 FreqBodyAccJerkStdY	        |Mean of fBodyAccJerk-std()-Y measurements  
|54 FreqBodyAccJerkStdZ	        |Mean of fBodyAccJerk-std()-Z measurements  
|55 FreqBodyGyroMeanX	          |Mean of fBodyGyro-mean()-X measurements  
|56 FreqBodyGyroMeanY	          |Mean of fBodyGyro-mean()-Y measurements  
|57 FreqBodyGyroMeanZ	          |Mean of fBodyGyro-mean()-Z measurements  
|58 FreqBodyGyroStdX	          |Mean of fBodyGyro-std()-X measurements  
|59 FreqBodyGyroStdY	          |Mean of fBodyGyro-std()-Y measurements  
|60 FreqBodyGyroStdZ	          |Mean of fBodyGyro-std()-Z measurements  
|61 FreqBodyAccMagMean	        |Mean of fBodyAccMag-mean() measurements 
|62 FreqBodyAccMagStd	          |Mean of fBodyAccMag-std() measurements  
|63 FreqBodyBodyAccJerkMagMean	|Mean of fBodyBodyAccJerkMag-mean() measurements  
|64 FreqBodyBodyAccJerkMagStd	  |Mean of fBodyBodyAccJerkMag-std() measurements  
|65 FreqBodyBodyGyroMagMean	    |Mean of fBodyBodyGyroMag-mean() measurements  
|66 FreqBodyBodyGyroMagStd	    |Mean of fBodyBodyGyroMag-std() measurements  
|67 FreqBodyBodyGyroJerkMagMean |Mean of fBodyBodyGyroJerkMag-mean() measurements  
|68 FreqBodyBodyGyroJerkMagStd	|Mean of fBodyBodyGyroJerkMag-std() measurements  
