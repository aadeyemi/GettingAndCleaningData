Synopsis
--------

This is a codebook that describes all the variables and summaries
calculated, along with units, and other relevant information performed
on the original dataset.

Data
----

The data used for this project were collected from the accelerometers of
Samsung Galaxy S smartphones of test subjects and were obtained from

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

see reference \[1\] for more details

Description
-----------

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. The acceleration
signal was separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz. The body linear acceleration
and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). The magnitude of these
three-dimensional signals were calculated using the Euclidean norm
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ,
tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag,
tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ,
fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag,
fBodyGyroJerkMag,

A set of variables that were estimated from these signals. Of these
variables, the ones of interest are:

-   mean: Mean value,
-   std: Standard deviation

Other additional vectors obtained by averaging the signals in a signal
window sample are:

-   gravityMean
-   tBodyAccMean
-   tBodyAccJerkMean
-   tBodyGyroMean
-   tBodyGyroJerkMean

The complete list of variables of each feature vector is available in
'features.txt'

The processing script run\_analysis.R
-------------------------------------

The file *run\_analysis.R* does the following:

1.  Merges the training and the test sets to create one data set
2.  Extracts only the measurements on the mean and standard deviation
    for each measurement
3.  Uses descriptive activity names to name the activities in the data
    set
4.  Appropriately labels the data set with descriptive variable names
5.  Creates a new, independent tidy data set with the average of each
    variable for each activity and each subject

A walkthrough of the *run\_analysis.R* file can be found in the
README.md file in this repository.

References
----------

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity
Recognition Using Smartphones. 21th European Symposium on Artificial
Neural Networks, Computational Intelligence and Machine Learning, ESANN
2013. Bruges, Belgium 24-26 April 2013.
