# Project2_TidyData
This repository contains the data and R code for Coursera Getting and Cleaning Data MOOC project 2

##Contents of the Repository
- run_analysis.R is the script that creates the tidy_data.txt from the raw data
- CodeBook.md contains a detailed description of how hte script works to clean the data, details on the original raw data and details on the format of the tidy_data
- README.md - this document contains a detailed description of how the processiong script works and a link to the tidy_data.txt file stored in the assignment submission website.

##Description of the run_analysis.R script for creating tidy_data.txt
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

## The tidy_data.txt file can be found at the following link where it was uploaded into the coursera assignment submission page
https://s3.amazonaws.com/coursera-uploads/user-06e8aa5bcd92577e9499b796/975118/asst-3/8e54ff10909511e59d30135692c38c70.txt


