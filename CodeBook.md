Overview
========

This document describes data inside the file `tidy.txt`. To get the `tidy.txt`
file, run the provided R script `run_analysis.R` (See [README](./README.md) for
more details about how to run the script).

The original, raw, data set could be obtained here :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Data Dictionary
===============

The layout of the dictionary for each variable is :

    number name
    type
    description

Except for variable 3 to 81 for which there is no description. Those variables
are the average of each original list of values for each activity and each
subject.


1 subject
integer
ID (1 to 30) of a participant of the study.

2 activity
factor
One of 6 possible activities wearing the phone:
    LAYING
    SITTING
    STANDING
    WALKING
    WALKING_DOWNSTAIRS
    WALKING_UPSTAIRS

3 mean(tBodyAcc-mean()-X)
numeric
Mean of the tBodyAcc-mean()-X values (see features_info.txt of the original
dataset).

4 mean(tBodyAcc-mean()-Y)
numeric
Mean of the tBodyAcc-mean()-Y values (see features_info.txt of the original
dataset).

5 mean(tBodyAcc-mean()-Z)
numeric
Mean of the tBodyAcc-mean()-Z values (see features_info.txt of the original
dataset).

6 mean(tBodyAcc-std()-X)
numeric
Mean of the tBodyAcc-std()-X values (see features_info.txt of the original
dataset).

7 mean(tBodyAcc-std()-Y)
numeric
Mean of the tBodyAcc-std()-Y values (see features_info.txt of the original
dataset).

8 mean(tBodyAcc-std()-Z)
numeric
Mean of the tBodyAcc-std()-Z values (see features_info.txt of the original
dataset).

9 mean(tGravityAcc-mean()-X)
numeric
Mean of the tGravityAcc-mean()-X values (see features_info.txt of the original
dataset).

10 mean(tGravityAcc-mean()-Y)
numeric
Mean of the tGravityAcc-mean()-Y values (see features_info.txt of the original
dataset).

11 mean(tGravityAcc-mean()-Z)
numeric
Mean of the tGravityAcc-mean()-Z values (see features_info.txt of the original
dataset).

12 mean(tGravityAcc-std()-X)
numeric
Mean of the tGravityAcc-std()-X values (see features_info.txt of the original
dataset).

13 mean(tGravityAcc-std()-Y)
numeric
Mean of the tGravityAcc-std()-Y values (see features_info.txt of the original
dataset).

14 mean(tGravityAcc-std()-Z)
numeric
Mean of the tGravityAcc-std()-Z values (see features_info.txt of the original
dataset).

15 mean(tBodyAccJerk-mean()-X)
numeric
Mean of the tBodyAccJerk-mean()-X values (see features_info.txt of the original
dataset).

16 mean(tBodyAccJerk-mean()-Y)
numeric
Mean of the tBodyAccJerk-mean()-Y values (see features_info.txt of the original
dataset).

17 mean(tBodyAccJerk-mean()-Z)
numeric
Mean of the tBodyAccJerk-mean()-Z values (see features_info.txt of the original
dataset).

18 mean(tBodyAccJerk-std()-X)
numeric
Mean of the tBodyAccJerk-std()-X values (see features_info.txt of the original
dataset).

19 mean(tBodyAccJerk-std()-Y)
numeric
Mean of the tBodyAccJerk-std()-Y values (see features_info.txt of the original
dataset).

20 mean(tBodyAccJerk-std()-Z)
numeric
Mean of the tBodyAccJerk-std()-Z values (see features_info.txt of the original
dataset).

21 mean(tBodyGyro-mean()-X)
numeric
Mean of the tBodyGyro-mean()-X values (see features_info.txt of the original
dataset).

22 mean(tBodyGyro-mean()-Y)
numeric
Mean of the tBodyGyro-mean()-Y values (see features_info.txt of the original
dataset).

23 mean(tBodyGyro-mean()-Z)
numeric
Mean of the tBodyGyro-mean()-Z values (see features_info.txt of the original
dataset).

24 mean(tBodyGyro-std()-X)
numeric
Mean of the tBodyGyro-std()-X values (see features_info.txt of the original
dataset).

25 mean(tBodyGyro-std()-Y)
numeric
Mean of the tBodyGyro-std()-Y values (see features_info.txt of the original
dataset).

26 mean(tBodyGyro-std()-Z)
numeric
Mean of the tBodyGyro-std()-Z values (see features_info.txt of the original
dataset).

27 mean(tBodyGyroJerk-mean()-X)
numeric
Mean of the tBodyGyroJerk-mean()-X values (see features_info.txt of the original
dataset).

28 mean(tBodyGyroJerk-mean()-Y)
numeric
Mean of the tBodyGyroJerk-mean()-Y values (see features_info.txt of the original
dataset).

29 mean(tBodyGyroJerk-mean()-Z)
numeric
Mean of the tBodyGyroJerk-mean()-Z values (see features_info.txt of the original
dataset).

30 mean(tBodyGyroJerk-std()-X)
numeric
Mean of the tBodyGyroJerk-std()-X values (see features_info.txt of the original
dataset).

31 mean(tBodyGyroJerk-std()-Y)
numeric
Mean of the tBodyGyroJerk-std()-Y values (see features_info.txt of the original
dataset).

32 mean(tBodyGyroJerk-std()-Z)
numeric
Mean of the tBodyGyroJerk-std()-Z values (see features_info.txt of the original
dataset).

33 mean(tBodyAccMag-mean())
numeric
Mean of the tBodyAccMag-mean() values (see features_info.txt of the original
dataset).

34 mean(tBodyAccMag-std())
numeric
Mean of the tBodyAccMag-std() values (see features_info.txt of the original
dataset).

35 mean(tGravityAccMag-mean())
numeric
Mean of the tGravityAccMag-mean() values (see features_info.txt of the original
dataset).

36 mean(tGravityAccMag-std())
numeric
Mean of the tGravityAccMag-std() values (see features_info.txt of the original
dataset).

37 mean(tBodyAccJerkMag-mean())
numeric
Mean of the tBodyAccJerkMag-mean() values (see features_info.txt of the original
dataset).

38 mean(tBodyAccJerkMag-std())
numeric
Mean of the tBodyAccJerkMag-std() values (see features_info.txt of the original
dataset).

39 mean(tBodyGyroMag-mean())
numeric
Mean of the tBodyGyroMag-mean() values (see features_info.txt of the original
dataset).

40 mean(tBodyGyroMag-std())
numeric
Mean of the tBodyGyroMag-std() values (see features_info.txt of the original
dataset).

41 mean(tBodyGyroJerkMag-mean())
numeric
Mean of the tBodyGyroJerkMag-mean() values (see features_info.txt of the original
dataset).

42 mean(tBodyGyroJerkMag-std())
numeric
Mean of the tBodyGyroJerkMag-std() values (see features_info.txt of the original
dataset).

43 mean(fBodyAcc-mean()-X)
numeric
Mean of the fBodyAcc-mean()-X values (see features_info.txt of the original
dataset).

44 mean(fBodyAcc-mean()-Y)
numeric
Mean of the fBodyAcc-mean()-Y values (see features_info.txt of the original
dataset).

45 mean(fBodyAcc-mean()-Z)
numeric
Mean of the fBodyAcc-mean()-Z values (see features_info.txt of the original
dataset).

46 mean(fBodyAcc-std()-X)
numeric
Mean of the fBodyAcc-std()-X values (see features_info.txt of the original
dataset).

47 mean(fBodyAcc-std()-Y)
numeric
Mean of the fBodyAcc-std()-Y values (see features_info.txt of the original
dataset).

48 mean(fBodyAcc-std()-Z)
numeric
Mean of the fBodyAcc-std()-Z values (see features_info.txt of the original
dataset).

49 mean(fBodyAcc-meanFreq()-X)
numeric
Mean of the fBodyAcc-meanFreq()-X values (see features_info.txt of the original
dataset).

50 mean(fBodyAcc-meanFreq()-Y)
numeric
Mean of the fBodyAcc-meanFreq()-Y values (see features_info.txt of the original
dataset).

51 mean(fBodyAcc-meanFreq()-Z)
numeric
Mean of the fBodyAcc-meanFreq()-Z values (see features_info.txt of the original
dataset).

52 mean(fBodyAccJerk-mean()-X)
numeric
Mean of the fBodyAccJerk-mean()-X values (see features_info.txt of the original
dataset).

53 mean(fBodyAccJerk-mean()-Y)
numeric
Mean of the fBodyAccJerk-mean()-Y values (see features_info.txt of the original
dataset).

54 mean(fBodyAccJerk-mean()-Z)
numeric
Mean of the fBodyAccJerk-mean()-Z values (see features_info.txt of the original
dataset).

55 mean(fBodyAccJerk-std()-X)
numeric
Mean of the fBodyAccJerk-std()-X values (see features_info.txt of the original
dataset).

56 mean(fBodyAccJerk-std()-Y)
numeric
Mean of the fBodyAccJerk-std()-Y values (see features_info.txt of the original
dataset).

57 mean(fBodyAccJerk-std()-Z)
numeric
Mean of the fBodyAccJerk-std()-Z values (see features_info.txt of the original
dataset).

58 mean(fBodyAccJerk-meanFreq()-X)
numeric
Mean of the fBodyAccJerk-meanFreq()-X values (see features_info.txt of the original
dataset).

59 mean(fBodyAccJerk-meanFreq()-Y)
numeric
Mean of the fBodyAccJerk-meanFreq()-Y values (see features_info.txt of the original
dataset).

60 mean(fBodyAccJerk-meanFreq()-Z)
numeric
Mean of the fBodyAccJerk-meanFreq()-Z values (see features_info.txt of the original
dataset).

61 mean(fBodyGyro-mean()-X)
numeric
Mean of the fBodyGyro-mean()-X values (see features_info.txt of the original
dataset).

62 mean(fBodyGyro-mean()-Y)
numeric
Mean of the fBodyGyro-mean()-Y values (see features_info.txt of the original
dataset).

63 mean(fBodyGyro-mean()-Z)
numeric
Mean of the fBodyGyro-mean()-Z values (see features_info.txt of the original
dataset).

64 mean(fBodyGyro-std()-X)
numeric
Mean of the fBodyGyro-std()-X values (see features_info.txt of the original
dataset).

65 mean(fBodyGyro-std()-Y)
numeric
Mean of the fBodyGyro-std()-Y values (see features_info.txt of the original
dataset).

66 mean(fBodyGyro-std()-Z)
numeric
Mean of the fBodyGyro-std()-Z values (see features_info.txt of the original
dataset).

67 mean(fBodyGyro-meanFreq()-X)
numeric
Mean of the fBodyGyro-meanFreq()-X values (see features_info.txt of the original
dataset).

68 mean(fBodyGyro-meanFreq()-Y)
numeric
Mean of the fBodyGyro-meanFreq()-Y values (see features_info.txt of the original
dataset).

69 mean(fBodyGyro-meanFreq()-Z)
numeric
Mean of the fBodyGyro-meanFreq()-Z values (see features_info.txt of the original
dataset).

70 mean(fBodyAccMag-mean())
numeric
Mean of the fBodyAccMag-mean() values (see features_info.txt of the original
dataset).

71 mean(fBodyAccMag-std())
numeric
Mean of the fBodyAccMag-std() values (see features_info.txt of the original
dataset).

72 mean(fBodyAccMag-meanFreq())
numeric
Mean of the fBodyAccMag-meanFreq() values (see features_info.txt of the original
dataset).

73 mean(fBodyBodyAccJerkMag-mean())
numeric
Mean of the fBodyBodyAccJerkMag-mean() values (see features_info.txt of the original
dataset).

74 mean(fBodyBodyAccJerkMag-std())
numeric
Mean of the fBodyBodyAccJerkMag-std() values (see features_info.txt of the original
dataset).

75 mean(fBodyBodyAccJerkMag-meanFreq())
numeric
Mean of the fBodyBodyAccJerkMag-meanFreq() values (see features_info.txt of the original
dataset).

76 mean(fBodyBodyGyroMag-mean())
numeric
Mean of the fBodyBodyGyroMag-mean() values (see features_info.txt of the original
dataset).

77 mean(fBodyBodyGyroMag-std())
numeric
Mean of the fBodyBodyGyroMag-std() values (see features_info.txt of the original
dataset).

78 mean(fBodyBodyGyroMag-meanFreq())
numeric
Mean of the fBodyBodyGyroMag-meanFreq() values (see features_info.txt of the original
dataset).

79 mean(fBodyBodyGyroJerkMag-mean())
numeric
Mean of the fBodyBodyGyroJerkMag-mean() values (see features_info.txt of the original
dataset).

80 mean(fBodyBodyGyroJerkMag-std())
numeric
Mean of the fBodyBodyGyroJerkMag-std() values (see features_info.txt of the original
dataset).

81 mean(fBodyBodyGyroJerkMag-meanFreq())
numeric
Mean of the fBodyBodyGyroJerkMag-meanFreq() values (see features_info.txt of the original
dataset).

