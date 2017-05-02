run_analysis <- function()
{
  ## Read data
  
  cp3test<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",header = FALSE)
  cp3train<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",header = FALSE)
  
  cp3test_y<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",header = FALSE)
  cp3train_y<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",header = FALSE)
  
  cp3testSub<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",header = FALSE)
  cp3trainSub<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",header = FALSE)
  
  activity_labels<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",header = FALSE)
  
  features<- read.table(file = "F:/datascience/rworkspace/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/features.txt",header = FALSE)
  
  ## Assign Column Names
  
  colnames(cp3test)<-features[,2]
  colnames(cp3test_y)<-"ActivityID"
  colnames(cp3testSub)<-"SubjectID"
  colnames(cp3train)<-features[,2]
  colnames(cp3train_y)<-"ActivityID"
  colnames(cp3trainSub)<-"SubjectID"
  colnames(activity_labels)<-c("ActivityID","Activity")  

#1.Merges the training and the test sets to create one data set.
##cp3q1Data is the target data set.

  cp3q1Data<-rbind(cbind(cp3test_y,cp3testSub,cp3test),cbind(cp3train_y,cp3trainSub,cp3train))



#2.Extracts only the measurements on the mean and standard deviation for each measurement.
##cp3q2Data is the target data set,including the mean and standard deviation.
  colNames1<-colnames(cp3q1Data)
  cp3q2Data<-cbind(cp3q1Data[grepl("SubjectID",colNames1)],cp3q1Data[grepl("ActivityID",colNames1)],cp3q1Data[grepl("mean\\(\\)",colNames1)], cp3q1Data[grepl("std\\(\\)",colNames1)])
  



#3.Uses descriptive activity names to name the activities in the data set.
##cp3q3Data is the target data set which has exact activity tag.

  cp3q3Data<-merge(cp3q2Data,activity_labels,by="ActivityID",all.X=TRUE)



#4.Appropriately labels the data set with descriptive variable names.
##cp3q4Data is the target data set which has appropriately labels.

  colNames2<-colnames(cp3q3Data)
  names(cp3q3Data)<-gsub("^t", "time", names(cp3q3Data))
  names(cp3q3Data)<-gsub("^f", "frequency", names(cp3q3Data))
  names(cp3q3Data)<-gsub("Acc", "Accelerometer", names(cp3q3Data))
  names(cp3q3Data)<-gsub("Gyro", "Gyroscope", names(cp3q3Data))
  names(cp3q3Data)<-gsub("Mag", "Magnitude", names(cp3q3Data))
  names(cp3q3Data)<-gsub("BodyBody", "Body", names(cp3q3Data))



#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##TidydataFinal is the target data set.

  TidydataFinal<-aggregate(. ~SubjectID + ActivityID + Activity, cp3q3Data, mean)
  TidydataFinal<-TidydataFinal[order(TidydataFinal$ActivityID,TidydataFinal$SubjectID,TidydataFinal$Activity),]
  

  write.table(TidydataFinal,file="F:/datascience/rworkspace/sophia/GettingAndCleaningData/TidydataFinal.txt",row.name=FALSE)

##end

}
