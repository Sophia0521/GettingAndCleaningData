### Code Book
## This document outlines the code inside run_analysis.R and tidy data set description.

* Prepare Data and assign column name
* Merge Training and Test data
* Extract only mean and standard deviation
* Define Activity description on merged training and test data
* Label data with descriptive variable name
* Create Tidy data set



### Data dictionary
## Description of each variables present in tidy data:

* SubjectID: Subject ID [1,2,3,...,29,30]
* ActivityID: ActivityID[1,2,...,6].
* Activity: Activity performed by the Subject,including 6 kinds of activities.
* timeBodyAccelerometer-mean()-X: Mean value of signal from accelerometer (AVERAGE)
* timeBodyAccelerometer-mean()-Y: Mean value of signal from accelerometer (AVERAGE)
* timeBodyAccelerometer-mean()-Z: Mean value of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-mean()-X: Mean value of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-mean()-Y: Mean value of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-mean()-Z: Mean value of signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk.mean()-X: Mean value of Jerk signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk.mean()-Y: Mean value of Jerk signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk.mean()-Z: Mean value of Jerk signal from accelerometer (AVERAGE)
* timeBodyGyroscope-mean()-X: Mean value of signal from gyroscope (AVERAGE)
* timeBodyGyroscope-mean()-Y: Mean value of signal from gyroscope (AVERAGE)
* timeBodyGyroscope-mean()-Z: Mean value of signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-mean()-X: Mean value of Jerk signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-mean()-Y: Mean value of Jerk signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-mean()-Z: Mean value of Jerk signal from gyroscope (AVERAGE)
* timeBodyAccelerometerMagnitude-mean(): Mean value of signal from accelerometer - magnitude (AVERAGE)
* timeGravityAccelerometerMagnitude-mean(): Mean value of signal from accelerometer - magnitude (AVERAGE)
* timeBodyAccelerometerJerkMagnitude-mean(): Mean value of Jerk signal from accelerometer - magnitude (AVERAGE)
* timeBodyGyroscopeMagnitude-mean(): Mean value of signal from gyroscope - magnitude (AVERAGE)
* timeBodyGyroscopeJerkMagnitude-mean(): Mean value of Jerk signal from gyroscope - magnitude (AVERAGE)
* frequencyBodyAccelerometer-mean()-X: Mean value of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometer-mean()-Y: Mean value of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometer-mean()-Z: Mean value of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk.mean()-X: Mean value of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk.mean()-Y: Mean value of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk.mean()-Z: Mean value of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyGyroscope-mean()-X: Mean value of signal from gyroscope (AVERAGE)
* frequencyBodyGyroscope-mean()-Y: Mean value of signal from gyroscope (AVERAGE)
* frequencyBodyGyroscope-mean()-Z: Mean value of signal from gyroscope (AVERAGE)
* frequencyBodyAccelerometerMagnitude-mean(): Mean value of signal from accelerometer - magnitude (AVERAGE)
* frequencyBodyAccelerometerJerkMagnitude-mean(): Mean value of Jerk signal from accelerometer - magnitude (AVERAGE)
* frequencyBodyGyroscopeMagnitude-mean(): Mean value of signal from gyroscope - magnitude (AVERAGE)
* frequencyBodyGyroscopeJerkMagnitude-mean(): Mean value of Jerk signal from gyroscope - magnitude (AVERAGE)
* timeBodyAccelerometer-std()-X: Standard deviation of signal from accelerometer (AVERAGE)
* timeBodyAccelerometer-std()-Y: Standard deviation of signal from accelerometer (AVERAGE)
* timeBodyAccelerometer-std()-Z: Standard deviation of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-std()-X: Standard deviation of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-std()-Y: Standard deviation of signal from accelerometer (AVERAGE)
* timeGravityAccelerometer-std()-Z: Standard deviation of signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk-std()-X: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk-std()-Y: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* timeBodyAccelerometerJerk-std()-Z: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* timeBodyGyroscope-std()-X: Standard deviation of signal from gyroscope (AVERAGE)
* timeBodyGyroscope-std()-Y: Standard deviation of signal from gyroscope (AVERAGE)
* timeBodyGyroscope-std()-Z: Standard deviation of signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-std()-X: Standard deviation of Jerk signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-std()-Y: Standard deviation of Jerk signal from gyroscope (AVERAGE)
* timeBodyGyroscopeJerk-std()-Z: Standard deviation of Jerk signal from gyroscope (AVERAGE)
* timeBodyAccelerometerMagnitude-std(): Standard deviation of signal from accelerometer - magnitude (AVERAGE)
* timeGravityAccelerometerMagnitude-std(): Standard deviation of signal from accelerometer - magnitude (AVERAGE)
* timeBodyAccelerometerJerkMagnitude-std(): Standard deviation of Jerk signal from accelerometer - magnitude (AVERAGE)
* timeBodyGyroscopeMagnitude-std(): Standard deviation of signal from gyroscope - magnitude (AVERAGE)
* timeBodyGyroscopeJerkMagnitude-std(): Standard deviation of Jerk signal from gyroscope - magnitude (AVERAGE)
* frequencyBodyAccelerometer-std()-X: Standard deviation of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometer-std()-Y: Standard deviation of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometer-std()-Z: Standard deviation of signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk-std()-X: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk-std()-Y: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyAccelerometerJerk-std()-Z: Standard deviation of Jerk signal from accelerometer (AVERAGE)
* frequencyBodyGyroscope-std()-X: Standard deviation of signal from gyroscope (AVERAGE)
* frequencyBodyGyroscope-std()-Y: Standard deviation of signal from gyroscope (AVERAGE)
* frequencyBodyGyroscope-std()-Z: Standard deviation of signal from gyroscope (AVERAGE)
* frequencyBodyAccelerometerMagnitude-std(): Standard deviation of signal from accelerometer - magnitude (AVERAGE)
* frequencyBodyAccelerometerJerkMagnitude-std(): Standard deviation of Jerk signal from accelerometer - magnitude (AVERAGE)
* frequencyBodyGyroscopeMagnitude-std(): Standard deviation of signal from gyroscope - magnitude (AVERAGE)
* frequencyBodyGyroscopeJerkMagnitude-std(): Standard deviation of Jerk signal from gyroscope - magnitude (AVERAGE)