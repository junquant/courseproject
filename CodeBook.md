#This codebook describes the columns in the final data set **aggData** that is output by the R Script run_analysis.R.

* **SubjectID**: Each number uniquely identifies the subject who performed the activity. the SubjectID ranges from 1 to 30.

* **Activity**: Describes the activity that the person performed wearing the smartphone. The activities are:
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING
	
* **Features Columns**
	* The following convention were used to name the features:
		* Columns names that were derived in time were prefixed with T
		* Columns names that were derived in frequency were prefixed with F
		* The 3 types of statistics, Mean, Standard Deviation (Std) and Weighted average of the frequency components (MeanFreq) were appended as suffix to the column names.
		* Columns names used to denote 3-axial signals in the X, Y and Z directions were further appended with X,Y and Z after the statistics suffix.
		* Features are CamelCased with spaces and punctuations removed from the original feature names.
		* The values for features are mean values summarised by SubjectID and Activity. For example, TBodyAccMeanX is the mean value of tBodyAcc-mean()-X summarised by SubjectID and Activity. 
		* The mapping from the original features to the features in **aggData** are as follows: 
	
		* tBodyAcc-mean()-X -> TBodyAccMeanX
		* tBodyAcc-mean()-Y -> TBodyAccMeanY
		* tBodyAcc-mean()-Z -> TBodyAccMeanZ
		* tBodyAcc-std()-X -> TBodyAccStdX
		* tBodyAcc-std()-Y -> TBodyAccStdY
		* tBodyAcc-std()-Z -> TBodyAccStdZ
		* tGravityAcc-mean()-X -> TGravityAccMeanX
		* tGravityAcc-mean()-Y -> TGravityAccMeanY
		* tGravityAcc-mean()-Z -> TGravityAccMeanZ
		* tGravityAcc-std()-X -> TGravityAccStdX
		* tGravityAcc-std()-Y -> TGravityAccStdY
		* tGravityAcc-std()-Z -> TGravityAccStdZ
		* tBodyAccJerk-mean()-X -> TBodyAccJerkMeanX
		* tBodyAccJerk-mean()-Y -> TBodyAccJerkMeanY
		* tBodyAccJerk-mean()-Z -> TBodyAccJerkMeanZ
		* tBodyAccJerk-std()-X -> TBodyAccJerkStdX
		* tBodyAccJerk-std()-Y -> TBodyAccJerkStdY
		* tBodyAccJerk-std()-Z -> TBodyAccJerkStdZ
		* tBodyGyro-mean()-X -> TBodyGyroMeanX
		* tBodyGyro-mean()-Y -> TBodyGyroMeanY
		* tBodyGyro-mean()-Z -> TBodyGyroMeanZ
		* tBodyGyro-std()-X -> TBodyGyroStdX
		* tBodyGyro-std()-Y -> TBodyGyroStdY
		* tBodyGyro-std()-Z -> TBodyGyroStdZ
		* tBodyGyroJerk-mean()-X -> TBodyGyroJerkMeanX
		* tBodyGyroJerk-mean()-Y -> TBodyGyroJerkMeanY
		* tBodyGyroJerk-mean()-Z -> TBodyGyroJerkMeanZ
		* tBodyGyroJerk-std()-X -> TBodyGyroJerkStdX
		* tBodyGyroJerk-std()-Y -> TBodyGyroJerkStdY
		* tBodyGyroJerk-std()-Z -> TBodyGyroJerkStdZ
		* tBodyAccMag-mean() -> TBodyAccMagMean
		* tBodyAccMag-std() -> TBodyAccMagStd
		* tGravityAccMag-mean() -> TGravityAccMagMean
		* tGravityAccMag-std() -> TGravityAccMagStd
		* tBodyAccJerkMag-mean() -> TBodyAccJerkMagMean
		* tBodyAccJerkMag-std() -> TBodyAccJerkMagStd
		* tBodyGyroMag-mean() -> TBodyGyroMagMean
		* tBodyGyroMag-std() -> TBodyGyroMagStd
		* tBodyGyroJerkMag-mean() -> TBodyGyroJerkMagMean
		* tBodyGyroJerkMag-std() -> TBodyGyroJerkMagStd
		* fBodyAcc-mean()-X -> FBodyAccMeanX
		* fBodyAcc-mean()-Y -> FBodyAccMeanY
		* fBodyAcc-mean()-Z -> FBodyAccMeanZ
		* fBodyAcc-std()-X -> FBodyAccStdX
		* fBodyAcc-std()-Y -> FBodyAccStdY
		* fBodyAcc-std()-Z -> FBodyAccStdZ
		* fBodyAcc-meanFreq()-X -> FBodyAccMeanFreqX
		* fBodyAcc-meanFreq()-Y -> FBodyAccMeanFreqY
		* fBodyAcc-meanFreq()-Z -> FBodyAccMeanFreqZ
		* fBodyAccJerk-mean()-X -> FBodyAccJerkMeanX
		* fBodyAccJerk-mean()-Y -> FBodyAccJerkMeanY
		* fBodyAccJerk-mean()-Z -> FBodyAccJerkMeanZ
		* fBodyAccJerk-std()-X -> FBodyAccJerkStdX
		* fBodyAccJerk-std()-Y -> FBodyAccJerkStdY
		* fBodyAccJerk-std()-Z -> FBodyAccJerkStdZ
		* fBodyAccJerk-meanFreq()-X -> FBodyAccJerkMeanFreqX
		* fBodyAccJerk-meanFreq()-Y -> FBodyAccJerkMeanFreqY
		* fBodyAccJerk-meanFreq()-Z -> FBodyAccJerkMeanFreqZ
		* fBodyGyro-mean()-X -> FBodyGyroMeanX
		* fBodyGyro-mean()-Y -> FBodyGyroMeanY
		* fBodyGyro-mean()-Z -> FBodyGyroMeanZ
		* fBodyGyro-std()-X -> FBodyGyroStdX
		* fBodyGyro-std()-Y -> FBodyGyroStdY
		* fBodyGyro-std()-Z -> FBodyGyroStdZ
		* fBodyGyro-meanFreq()-X -> FBodyGyroMeanFreqX
		* fBodyGyro-meanFreq()-Y -> FBodyGyroMeanFreqY
		* fBodyGyro-meanFreq()-Z -> FBodyGyroMeanFreqZ
		* fBodyAccMag-mean() -> FBodyAccMagMean
		* fBodyAccMag-std() -> FBodyAccMagStd
		* fBodyAccMag-meanFreq() -> FBodyAccMagMeanFreq
		* fBodyBodyAccJerkMag-mean() -> FBodyBodyAccJerkMagMean
		* fBodyBodyAccJerkMag-std() -> FBodyBodyAccJerkMagStd
		* fBodyBodyAccJerkMag-meanFreq() -> FBodyBodyAccJerkMagMeanFreq
		* fBodyBodyGyroMag-mean() -> FBodyBodyGyroMagMean
		* fBodyBodyGyroMag-std() -> FBodyBodyGyroMagStd
		* fBodyBodyGyroMag-meanFreq() -> FBodyBodyGyroMagMeanFreq
		* fBodyBodyGyroJerkMag-mean() -> FBodyBodyGyroJerkMagMean
		* fBodyBodyGyroJerkMag-std() -> FBodyBodyGyroJerkMagStd
		* fBodyBodyGyroJerkMag-meanFreq() -> FBodyBodyGyroJerkMagMeanFreq

_For information on the original features and their meaning, the README.txt and features_info.txt that comes together with the data set should be referenced. The features_info.txt is appended below for easy reference._

######features_info.txt

######Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
