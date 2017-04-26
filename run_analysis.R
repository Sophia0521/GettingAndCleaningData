#1.Merges the training and the test sets to create one data set.
##cp3test is the test data set,cp3train is the train data set.
##cp3q1Data is the target data set.
cp3test<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",header = FALSE)
cp3train<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",header = FALSE)
cp3q1Data<-rbind(cp3test,cp3train) 
write.csv(cp3q1Data,file="F:/datascience/rworkspace/sophia/GettingAndCleaningDataCourseProject/cp3q1Data.csv")


#2.Extracts only the measurements on the mean and standard deviation for each measurement.
##cp3q2mean is the vector of mean for each measurement.
##cp3q2sd is the vector of standard deviation for each measurement.
##cp3q2Data is the target data set,including the mean and standard deviation.
cp3q2Base<-cp3q1Data
cp3q2Mean<-apply(cp3q2Base,2,mean)  
cp3q2Sd<-apply(cp3q2Base,2,sd)
cp3q2Data<-data.frame(cp3q2Mean,cp3q2Sd)
write.csv(cp3q2Data,file="F:/datascience/rworkspace/sophia/GettingAndCleaningDataCourseProject/cp3q2Data.csv")


#3.Uses descriptive activity names to name the activities in the data set.
##
activity_labels<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",header = FALSE)
cp3test_y<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",header = FALSE)
cp3train_y<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",header = FALSE)
names(cp3test_y)<-c("y")
names(cp3train_y)<-c("y")
names(activity_labels)<-c("y","activity")
cp3q3Base<-rbind(cbind(cp3test,cp3test_y),cbind(cp3train,cp3train_y))
cp3q3Data<-merge(cp3q3Base,activity_labels,by="y", all.x = TRUE)
write.csv(cp3q3Data,file="F:/datascience/rworkspace/sophia/GettingAndCleaningDataCourseProject/cp3q3Data.csv")


#4.Appropriately labels the data set with descriptive variable names.
##
##
features<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/features.txt",header = FALSE)
colnam<-features$V2
cp3q4Base<-cp3q3Data[,2:562]
names(cp3q4Base)<- colnam
activity<-cp3q3Data$activity
cp3q4Data<-cbind(activity,cp3q4Base)
write.csv(cp3q4Data,file="F:/datascience/rworkspace/sophia/GettingAndCleaningDataCourseProject/cp3q4Data.csv")


#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

