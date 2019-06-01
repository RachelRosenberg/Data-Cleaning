# This code assumes that the original data is already downloaded and unzipped in a directory called "UCI HAR Dataset"
# that contains files "activity_labels.txt", "features.txt", "features_info.txt" and README.txt".

# Set working directory to the parent directory of "UCI HAR Dataset" before running the following code.


# Read in features data and remove brackets from names:
features<-read.table("UCI HAR Dataset/features.txt", colClasses=c("NULL", "character"),header=FALSE)

# Read in activity labels and name columns "activity" and "activityname":
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names=c("activity","activityname"))

# Read in test and training measurement data:
X_test<-read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
X_train<-read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)

# Merge X_test with X_train and name columns using features:
X_data<-rbind(X_test,X_train)
colnames(X_data)<-features[,1]

# Save only the measurement variables containing "mean()" and "std()" in their name into a new data set:
X_data<-X_data[,grep("mean\\(\\)|std\\(\\)", names(X_data))]

# Read in activity files and label activity column "activity":
Y_test<-read.table("UCI HAR Dataset/test/Y_test.txt", header=FALSE, col.names="Activity")
Y_train<-read.table("UCI HAR Dataset/train/Y_train.txt", header=FALSE, col.names="Activity")

#combine activity files into one data set:
all_Y<-rbind(Y_test,Y_train)

# Read in subject data files:
Sub_test<-read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names="Subject")
Sub_train<-read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names="Subject")

# Combine subject files into one data set:
all_sub<-rbind(Sub_test, Sub_train)

# Combine subject, activity and means/std data into a single data set:
all_data<-cbind(all_sub, all_Y, X_data)

# Add value labels to activity variable:
all_data[,2]<-factor(all_data[,2],levels=c(1,2,3,4,5,6), labels=activity_labels[,2])


# Tidy up column names to make them more readable:

# Remove brackets from column names and capitalise Mean and Std:
names(all_data)<-gsub("mean\\(\\)","Mean",names(all_data))
names(all_data)<-gsub("std\\(\\)","Std",names(all_data))

# Replace initial t with Time in column names
names(all_data)<-gsub("^t","Time",names(all_data))

# Replace initial f with Freq in column names
names(all_data)<-gsub("^f","Freq",names(all_data))

# Remove hyphens
names(all_data)<-gsub("-","",names(all_data))


# Save out a tidy data file containing means for each subject/activity group combination:

library(datasets)
library(dplyr)

tidy_data<-all_data %>% group_by(Subject, Activity) %>% summarize_all(mean) 


# Write out tidy data file:
write.table(tidy_data,file="tidy_data.txt", row.name=FALSE, quote=FALSE)
