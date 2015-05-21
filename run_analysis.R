library(plyr)
library(dplyr)

## Step 0.
## Download and unzip raw data if needed.
if(!file.exists('UCI HAR Dataset/')) {
  url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

  print('Downloading data.')
  code <- download.file(url, 'dataset.zip', method='curl')
  if(code != 0) {
    print('Cannot download data.')
  }

  print('Unziping data')
  unzip('dataset.zip', './')
}

## Step 1.
## Merge the training and the test sets to create one data set.

print('Merging data, this could take some time…')

# Merge y_test.txt and y_train.txt together by row.
y_test     <- read.table('UCI HAR Dataset/test/y_test.txt')
y_train    <- read.table('UCI HAR Dataset/train/y_train.txt')
activities <- rbind(y_test, y_train)
rm('y_test')
rm('y_train')
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
# This is not strictly needed before step 3, but I think it's easier to
# rename all the activities values right now.
activities <- join(activities, activity_labels)
activities <- tbl_df(activities)
activities <- select(activities, activity=V2)
rm('activity_labels')

# Merge subject_test.txt and subject_train.txt together by row.
subject_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
subject_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
subject <- rbind(subject_test, subject_train)
rm('subject_test')
rm('subject_train')
subject <- tbl_df(subject)
subject <- rename(subject, subject=V1)

# Merge X_test.txt and X_train.txt together by row.
x_test  <- read.table('UCI HAR Dataset/test/X_test.txt')
x_train <- read.table('UCI HAR Dataset/train/X_train.txt')
x       <- rbind(x_test, x_train)
rm('x_test')
rm('x_train')

# Rename columns in x by features.
features <- read.table('UCI HAR Dataset/features.txt')
# names(x) <- features$V2
names(x) <- paste0(names(x), '_', features$V2)
rm('features')

# Merge subject, activities and x by column.
merged_set <- cbind(subject, activities, x)
rm('subject')
rm('activities')
rm('x')

## Step 2.
## Extracts only the measurements on the mean and standard deviation for
## each measurement. 
merged_set <- tbl_df(merged_set)
merged_set <- select(merged_set,
                     matches('subject|activity|mean|std', ignore.case=FALSE))

## Step 3. Already done in step 1.
