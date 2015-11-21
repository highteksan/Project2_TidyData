## This script builds the data set and creates the new tidy data. Please reference the readme.md for more details
## Also reference the tidy data codebook.md for full information on the data, cleaning process, etc.

## initialize the required libraries
library(data.table)
library(dplyr)

## if not already done, download the data and unzip the files into the working directory
if (!file.exists("rawData.zip")) { 
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, "rawData.zip")
unzip("rawData.zip")
}
## form the data frame for test by reading the subject_test data into the first column.  Then read the 
## activity data into the second column using cbind.  Then read the measurement data and use 
## cbind to combine.
test <- fread("./uci har dataset/test/subject_test.txt")
test <- cbind(test, fread("./uci har dataset/test/y_test.txt"))
test <- cbind(test, fread("./uci har dataset/test/x_test.txt"))

## form the data frame for train - same procedure as above
train  <- fread("./uci har dataset/train/subject_train.txt")
train <- cbind(train, fread("./uci har dataset/train/y_train.txt"))
train <- cbind(train, fread("./uci har dataset/train/x_train.txt"))

## combine the two data frames into one data set using rbind.
train_test <- rbind(train, test)

## Add the meaningful variable names by reading the text file and creating a new vector of column
## names that includes Subject and Activity.
colvector <- fread("./uci har dataset/features.txt", drop = 1)
newcols <- c("Subject", "Activity", colvector[[1]])
colnames(train_test) <- newcols

## Extract only mean and standard deviation data by subsetting only the column names that contain 
## std() or mean().  Subject and Activity columns are also included.
train_test <- select(train_test, contains("Subject"), 
                                contains("Activity"), 
                                contains("std()"), 
                                contains("mean()"))

## assign activity names by replacing the numeric activity code with the corresponding string
activity <- fread("./uci har dataset/activity_labels.txt")

  train_test$Activity[train_test$Activity == activity[[1, 1]]] <- activity[[1, 2]]
  train_test$Activity[train_test$Activity == activity[[2, 1]]] <- activity[[2, 2]]
  train_test$Activity[train_test$Activity == activity[[3, 1]]] <- activity[[3, 2]]
  train_test$Activity[train_test$Activity == activity[[4, 1]]] <- activity[[4, 2]]
  train_test$Activity[train_test$Activity == activity[[5, 1]]] <- activity[[5, 2]]
  train_test$Activity[train_test$Activity == activity[[6, 1]]] <- activity[[6, 2]]

## create the new tidy_data data frame using the dplyr verbs group_by(), summarise_each() and arrange() using a 
## chaining construct with %>% (then). 

meanDF <- train_test %>% ## within the train_test data frame
                group_by(Subject, Activity) %>% ## group by Subject and Activity then
                summarise_each(funs(mean), contains("std()"), contains("mean()")) %>% ## take the mean then
                arrange(Subject) ## sort in ascending order by Subject

## write the file to disk
write.table(meanDF, "tidy_data.txt",  row.names = FALSE, sep=" ")

## test read the data back in to a data frame to make sure it is formated correctly.  Get the file from the link
## that points to the file upload for the assignment submission.

URL <- "https://s3.amazonaws.com/coursera-uploads/user-06e8aa5bcd92577e9499b796/975118/asst-3/8e54ff10909511e59d30135692c38c70.txt"
test_tidy_data <- fread(URL, showProgress = FALSE) 
View(test_tidy_data)

