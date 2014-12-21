

#Variables in the code
"X_test" contains the measure of every feature for the test phase without data of the subject and the activity
"X_train" contains the measure of every feature for the train phase without data of the subject and the activity
"data" is the sum of X_test and X_train

"feature" contains the list of every feature. Those features fit the measure of every column of the variable "data".

"datafilter" contains in the first column the number of the feature and in the second column the name of the feature containing std() or mean() (and not meanFreq()).

"dataMeanStd" contains all the measurements from the variable "data" with only data from feature measuring std() or mean().

"dataSubject" is the list of each subject passing experiences. (30 different persons)

"dataActivity" is the list of each activity id for each measurements.
Conversion activity id>activity name :
1/WALKING
2/WALKING_UPSTAIRS
3/WALKING_DOWNSTAIRS
4/SITTING
5/STANDING
6/LAYING

##datafinal
"datafinal" is a tidy data set gathering activity name,subject and data feature measuring std() and mean() for each measurement.

The name of the "datafinal" columns are subject,Activity and the name of each feature.
##EachActivitySubjectMean
"EachActivitySubjectMean" contains the mean for each feature for each couple of subject and activity.

#dimension of features measurement in variable "EachActivitySubjectMean" and "datafinal"
every results given by feature whose name contains "acc" are in g.
every results given by feature whose name contains "gyro" are in radian/sec.
