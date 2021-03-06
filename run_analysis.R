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

# Rename columns in x by features. I'll prepend 'V1', 'V2', 'V3', etc,
# because there is some duplicates that can cause some problems in latter
# steps.
features <- read.table('UCI HAR Dataset/features.txt')
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

## Step 4.

# I think that variable names taken from the features.txt are already
# meaningful enough. So I'm just going to remove the leading 'Vxxx_'.
names(merged_set) <- sub('^V.{1,3}_', '', names(merged_set))


## Step 5.
## From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.

final_data <- merged_set %>%
              group_by(subject, activity) %>%
              summarise_each(funs(mean))
rm('merged_set')
names(final_data)[3:81] <- paste0('mean(', names(final_data)[3:81], ')')

write.table(final_data, file='tidy.txt', row.name=FALSE)
