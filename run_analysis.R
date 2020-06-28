test_val=read.table("./UCI HAR Dataset/test/X_test.txt")
test_activity=read.table("./UCI HAR Dataset/test/y_test.txt")
test_sub=read.table("./UCI HAR Dataset/test/subject_test.txt")
train_val=read.table("./UCI HAR Dataset/train/X_train.txt")
train_activity=read.table("./UCI HAR Dataset/train/y_train.txt")
train_sub=read.table("./UCI HAR Dataset/train/subject_train.txt")
features=read.table("./UCI HAR Dataset/features.txt")
activity=read.table("./UCI HAR Dataset/activity_labels.txt")
labels=as.list(as.character(activity[,2]))
names(labels)=activity[,1]

test=data.frame(test_sub,test_activity,test_val)
train=data.frame(train_sub,train_activity,train_val)
colnames(test)=c("Subject","Activity",as.character(features[,2]))
colnames(train)=colnames(test)
test$Dataset="Test"
train$Dataset="Train"
combine=rbind(test,train)
m.std.data=combine[c(1,2,grep("mean\\(\\)|std\\(\\)",names(combine)))]
m.std.data$Activity=sapply(m.std.data$Activity,function(x) sub(x,labels[[x]],x))

by_sub=aggregate(m.std.data[,3:68],list(m.std.data$Subject),mean)
by_activity=aggregate(m.std.data[,3:68],list(m.std.data$Activity),mean)
grouped_avg=rbind(by_sub,by_activity) 
names(grouped_avg)[1]="Group (Subject/Activity)"
write.table(grouped_avg,"Subject_Activity_Average.txt",sep="\t",row.names=FALSE,col.names=TRUE,quote=FALSE)