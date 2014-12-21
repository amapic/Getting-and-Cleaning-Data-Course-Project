
#Variables in the code
"X_test" contains the measure of every feature for the test phase without data of the subject and the activity
"X_train" contains the measure of every feature for the train phase without data of the subject and the activity
"data" is the sum by row of X_test and X_train

"feature" contains the list of every feature. Those features fit the measure of every column of the variable "data".

"datafilter" contains in the first column the number of the feature and in the second column the name of the feature containing std() or mean() (and not meanFreq()). 66 features measure the std or the mean.

"dataMeanStd" contains all the measurements from the variable "data" with only data from feature measuring std() or mean().

"dataSubject" is the list of each subject passing experiences. Each subject is symbolized by a number (30 different persons).

"dataActivity" is the list of each activity id for each measurements.
Conversion activity id>activity name :
1/WALKING
2/WALKING_UPSTAIRS
3/WALKING_DOWNSTAIRS
4/SITTING
5/STANDING
6/LAYING

##datafinal
"datafinal" is a tidy data set gathering activity name,subject and data feature measuring std() and mean() for each measurement. See the list of the 66 concerned features below.
the "(",")","-" have been deleted from the features name and they have been passed in lower case. The mistake with features name containing "BodyBody" has been corrected.

##EachActivitySubjectMean
"EachActivitySubjectMean" contains the mean for each feature measuring std() and mean() for each couple of subject and activity. See the list of the 66 concerned features below.
"EachActivitySubjectMean" has 180 rows. Each one of the 30 persons passing the test did the 6 activity.
the "(",")","-" have been deleted from the features name and they have been passed in lower case. The mistake with features name containing "BodyBody" has been corrected.

#dimension of features results in variable "EachActivitySubjectMean" and "datafinal"
every results given by feature whose name contains "acc" are in g.
every results given by feature whose name contains "gyro" are in radian/sec.

#list of features measuring std and mean
tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz
tbodyaccstdx
tbodyaccstdy
tbodyaccstdz
tgravityaccmeanx
tgravityaccmeany
tgravityaccmeanz
tgravityaccstdx
tgravityaccstdy
tgravityaccstdz
tbodyaccjerkmeanx
tbodyaccjerkmeany
tbodyaccjerkmeanz
tbodyaccjerkstdx
tbodyaccjerkstdy
tbodyaccjerkstdz
tbodygyromeanx
tbodygyromeany
tbodygyromeanz
tbodygyrostdx
tbodygyrostdy
tbodygyrostdz
tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz
tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz
tbodyaccmagmean
tbodyaccmagstd
tgravityaccmagmean
tgravityaccmagstd
tbodyaccjerkmagmean
tbodyaccjerkmagstd
tbodygyromagmean
tbodygyromagstd
tbodygyrojerkmagmean
tbodygyrojerkmagstd
fbodyaccmeanx
fbodyaccmeany
fbodyaccmeanz
fbodyaccstdx
fbodyaccstdy
fbodyaccstdz
fbodyaccjerkmeanx
fbodyaccjerkmeany
fbodyaccjerkmeanz
fbodyaccjerkstdx
fbodyaccjerkstdy
fbodyaccjerkstdz
fbodygyromeanx
fbodygyromeany
fbodygyromeanz
fbodygyrostdx
fbodygyrostdy
fbodygyrostdz
fbodyaccmagmean
fbodyaccmagstd
fbodyaccjerkmagmean
fbodyaccjerkmagstd
fbodygyromagmean
fbodygyromagstd
fbodygyrojerkmagmean
fbodygyrojerkmagstd

