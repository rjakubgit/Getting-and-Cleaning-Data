###Description of the research and variables
==========================================

#####The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscop-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

#####Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

#####Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

#####These signals were used to estimate variables of the feature vector for each pattern.'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions:

######timeBodyAccelerometer-XYZ
######timeGravityAccelerometer-XYZ
######timeBodyAccelerometerJerk-XYZ
######timeBodyGyroscope-XYZ
######timeBodyGyroscopeJerk-XYZ
######timeBodyAccelerometerMagnitude
######timeGravityAccelerometerMagnitude
######timeBodyAccelerometerJerkMagnitude
######timeBodyGyroscopeMagnitude
######timeBodyGyroscopeJerkMagnitude
######frequency-XYZ
######frequencyBodyAccelerometerJerk-XYZ
######frequencyBodyGyroscope-XYZ
######frequencyBodyAccelerometerMagnitude
######frequencyBodyAccelerometerJerkMagnitude
######frequencyBodyGyroscopeMagnitude
######frequencyBodyGyroscopeJerkMagnitude

#####Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

######gravityMean
######timeBodyAccelerometerMean
######timeBodyAccelerometerJerkMean
######timeBodyGyroscopeMean
######timeBodyGyroscopeJerkMean

#####The variables that were estimated from every of these signals are: 

######mean(): Mean value
######std(): Standard deviation

#####The above-described measurements were made a few dozen times for each activity performed by each of 30 subjects (a total of 10299 observations). 
#####Then the carried out measurements were averaged. Due to such computations the tidy data set contains only 180 observations for each variable - 1 for each of 6 activities performed by each of 30 tested subjects.