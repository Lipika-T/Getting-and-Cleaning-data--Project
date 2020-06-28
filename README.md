---
title: "Getting and cleaning data"
output: html_document
---
run_analysis.R contains the script for obtaining and cleaning data from the UCI HAR dataset for both training and test sets.

## Obtaining data from text files

The following code extracts data from different text files. test_val and train_val contain the measurements of 561 variables for each observation. test_activity and train_activtiy contain information about the activity being performed for each observation. And, test_sub and train_sub identify the subject corresponding to each observation. 
The features data frame contains descriptive names of the measurements matched to their number code and the activity data frame describes the activities performed in the study matched to their codes.
```
test_val=read.table("./UCI HAR Dataset/test/X_test.txt")
test_activity=read.table("./UCI HAR Dataset/test/y_test.txt")
test_sub=read.table("./UCI HAR Dataset/test/subject_test.txt")
train_val=read.table("./UCI HAR Dataset/train/X_train.txt")
train_activity=read.table("./UCI HAR Dataset/train/y_train.txt")
train_sub=read.table("./UCI HAR Dataset/train/subject_train.txt")
features=read.table("./UCI HAR Dataset/features.txt")
activity=read.table("./UCI HAR Dataset/activity_labels.txt")
```
# Cleaning Data
The activity data frame has been converted to a list of the activity descriptors as elements and their corresponding codes as the names of the elements.
```
labels=as.list(as.character(activity[,2]))
names(labels)=activity[,1]
```
Two datasets - test and train are created by combining the corresponding subjects, activities and measurements of the 561 variables. Codes corresponding to the measurements are replaced by descriptive names (obtained from the features daat frame) and used as column names in the data frames.
The test and train data frames are merged horizontally into the combine data frame using the rbind function. The column combine\$Dataset identifies the particular observation as a member of the test set or training set.
```
test=data.frame(test_sub,test_activity,test_val)
train=data.frame(train_sub,train_activity,train_val)
colnames(test)=c("Subject","Activity",as.character(features[,2]))
colnames(train)=colnames(test)
test$Dataset="Test"
train$Dataset="Train"
combine=rbind(test,train)
```
The measurements corresponding to mean() and std() of each of the variables were extracted by using the grep function to match the column names in the data frame. A new data frame m.std.data was created containing only the mean and std values and the corresponding subject and actvity.
The activity codes were replaced by the activity names using the labels list in the m.std.data\$Activity column.
```
m.std.data=combine[c(1,2,grep("mean\\(\\)|std\\(\\)",names(combine)))]
m.std.data$Activity=sapply(m.std.data$Activity,function(x) sub(x,labels[[x]],x))
```
## Creating tidy dataset
The m.std.data data frame was grouped by subject and the average of each of the variables was found for each subject (by_sub) using the aggregate function. The same was done by grouping the data by activity (by_activity).
The two data frames were combined horizontally to create a final tidy dataset grouped_avg.
The first column indicates the group for which the variable has been average i.e. the 30 subjects and 6 activities. Each subsequent column represents a particular measurement (mean and std values of each variable extracted from the previous dataset). The column name is the name of the measurement and value if the average of the measurement for the indicated group (subject/activity).
```
by_sub=aggregate(m.std.data[,3:68],list(m.std.data$Subject),mean)
by_activity=aggregate(m.std.data[,3:68],list(m.std.data$Activity),mean)
grouped_avg=rbind(by_sub,by_activity)
names(grouped_avg)[1]="Group (Subject/Activity)"
write.table(grouped_avg,"Subject_Activity_Average.txt",sep="\t",row.names=FALSE,col.names=TRUE,quote=FALSE)
```
