
# Coursera Data Cleaning Assignment

The data for this assignment were downloaded from the following link:  

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The files were unzipped into a directory called "UCI HAR Dataset", which contained two subdirectories called "test" (containing test data files) and "train" (containing training data files). The files contained in the main and sub directories are described in its accompanying **README.txt** located in the main "UCI HAR Dataset" directory. The file **features_info.txt** describes the original variables in the data and what their names mean, including the various statistics that were derived for each variable (e.g. mean, max, min).

The assignment instructions were to create one R script called run_analysis.R that does the following:  

1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.    
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

The goal of the assignment was to prepare a tidy data set that could be used for later analysis.

The file **run_analysis.R** has been created to run from within the parent directory of the "UCI HAR Dataset" directory. This resulting tidy data file is documented in CodeBook.md. 

Rachel Rosenberg 30/05/2019
