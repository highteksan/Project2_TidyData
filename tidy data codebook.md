# Tidy Data Codebook for Getting and Cleaning Data Class Project
Highteksan  
November 21, 2015 

## Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

##Study design and data processing

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Notes on the original (raw) data 

==================================================================

Human Activity Recognition Using Smartphones Dataset
Version 1.0

==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###The original dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

###The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Features in the raw data set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

###Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

###License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


##Creating the tidy datafile

The tidy datafile is created with an R script called run_analysis.R that does the following. 

- Merges the raw training and the test sets described above to create one data set called train_test.

- Extracts only the measurements on the mean and standard deviation for each measurement. 

- Uses descriptive activity names to name the activities in the data set.  The activity names are listed in the raw data file named activity_labels.txt. 

- Appropriately labels the data set with descriptive variable names. The naming convention used in teh original dataset is retained to give continuity with the raw data source measurements.

- Using the train_data data set created with the above 4 steps, a second, independent tidy data set is created.  This data set is named meansDF. It contains the average of each variable for each activity and each subject.

##Guide to create the tidy data file
1. Download the data from the URL that points to the zip file containing the raw data files.  Place them in the working directory for the project called "Project2_TidyData""
2. Unzip the raw data files in place.  They are located in a sub-folder of the working directory called "UCI HAR Dataset".  The test data is in the "test" subfolder.  The train data is in the "train" subfolder
3. Construct the data frame test_train by combining two data frames containing the test and train data as followsfrom various files as follows:
   - the test data frame is created by combining the subject_test.txt, y_test.txt and X_test.txt data using fread() and cbind.  This data frame contains 563 variables and 2947 observations.  
   - the train data frame is created by combing the subject_train.txt, y_train.txt and Xtrain.txt data using fread() and cbind. This data frame contains 563 variables and 7352 observations.
   - train_test data frame is created by using rbind to combine train and test data frames into one.  This data frame has 563 variables and 10299 observations
   - Note that the Inertial Signals are not used in creating this data as they are simply the underlying signals used to create the X_train and X_test data.
4. Add the column names to the test_train data frame by reading features.txt into a vector that also includes Subject and Activity column names.  Use colnames to assign this vector as the column names for train_test dataframe.The train_test data frame now contains the appropriate variable names and all observation classes are numerica or character as indicated by the type of data.    
5. Clean train_test by extracting only the variables that are the mean() and standard deviation, std(), data derived from the accelerometer signals.  This is done using dplyr select() function with the contains() helper.  This cleaned version of train_test contains 68 variables and 10299 observations 
6. Take the mean of each variable column for each subject and activity.  This is done using dplyr constructs.  The resulting meanDF data frame contains 68 variables and 180 observations.  This is correct since there are 30 subjects and 6 activities for each subject.
7. Write the tidy_data.txt file to the working directory using table.write() with row.names = FALSE.

##Description of the variables in the tidy_data.txt file

- The tidy_data.txt file in the working directory contains the new tidy data set.  There are 68 variables and 180 observations.
- IMPORTANT NOTE: The variable naming convention used in the raw data has been preserved in the tidy data set.  However, all of the variables (with exception of Subject and Activity) are now the mean of the original data for each subject/activity.  This method of naming gives continuity to the original data naming convension, but requires that the user keep this in mind for the purposes of answering questionsi using this data set.

###Description of Variables


1. Subject variable is the number corresponding the the subject who is perforoming the test.  There are 30 subjects indicated by numeric 1 to 30.  This variable is numeric.

2. Activity variable is the description of the type of test activity. This is a carachter variable.  There are six activities described as follows:
- WALKING
- WALKING UPSTAIRS
- WALKING DOWNSTAIRS
- STANDING
- SITTING
- LAYING 

The remaining variables are all numeric class.  They range from -1.0 to 1.0

3. For each Subject and Activity - Mean of the mean and standard deviation of accelerometer measurements as noted in the variable name by the insertion of mean() or std() between the signal name and the cartesian coordinate indicator xyz.  Example: tBodyAcc-std()-X or tBodyAcc-mean()-Y
- tBodyAcc-XYZ units: m/s2
- tGravityAcc-XYZ units: m/s2
- tBodyAccJerk-XYZ units: m/s2

4. For each Subject and Activity - Mean of the mean and standard deviation of gyroscope measurements as noted in the variable name by the insertion of mean() or std() between the signal name and the cartesian coordinate indicator xyz.  Example: tBodyGyro-std()-X or tBodyGyro-mean()-Y
- tBodyGyro-XYZ units: degrees/second
- tBodyGyroJerk-XYZ units: degress/second

5. For each Subject and Activity - Mean of the mean and standard deviation of magnetometer measurements as noted in the variable name by the insertion of mean() or std() after the signal name.  Example: tBodyAccMag-std() or tBodyGyro-mean()
- tBodyAccMag units: Tesla or As/m2
- tGravityAccMag units: Tesla or As/m2
- tBodyAccJerkMag units: Tesla or As/m2
- tBodyGyroMag units: Tesla or As/m2
- tBodyGyroJerkMag: Tesla or As/m2

6. For each Subject and Activity - Mean of the mean and tandard deviation of the FFT of accelerometer, gyroscope and magnetometer mearurements as noted in the variable name by the insertion of mean() or std() after the signal name.  Example: fBodyAcc-std()-X or fBodyGyro-mean()-Y
- fBodyAcc-XYZ units: Hz
- fBodyAccJerk-XYZ units: Hz
- fBodyGyro-XYZ units: Hz
- fBodyAccMag units: Hz
- fBodyAccJerkMag units: Hz
- fBodyGyroMag units: Hz
- fBodyGyroJerkMag units: Hz

##Sources

- "Human Activity Recognition Using Smartphones Dataset Version 1.0" Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
- "18 Months of CTA Advice"", Getting and Cleaning Data DSS comminity Forum, David Hood 2015

