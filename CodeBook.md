####Code Book
```
run_analysis()
```
Variable Name|Description|Unit|Acceptable Values
-------------|-----------|----|-----------------
mode|Experimentation environment|None|(TRAIN, TEST)
subject|Unique identifier of the volunteers|None|(1:30) 
activity|Activity performed during the experimentation|None|(WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING)  
tBodyAcc.mean.X|Body motion linear acceleration mean on the X-axis|g|[-1:1]
tBodyAcc.mean.Y|Body motion linear acceleration mean on the Y-axis|g|[-1:1]
tBodyAcc.mean.Z|Body motion linear acceleration mean on the Z-axis|g|[-1:1]
tBodyAcc.std.X|Body motion linear acceleration standard deviation on the X-axis|g|[-1:1]
tBodyAcc.std.Y|Body motion linear acceleration standard deviation on the Y-axis|g|[-1:1]
tBodyAcc.std.Z|Body motion linear acceleration standard deviation on the X-axis|g|[-1:1]
tGravityAcc.mean.X|Gravitational motion linear acceleration mean on the X-axis|g|[-1:1]
tGravityAcc.mean.Y|Gravitational motion linear acceleration mean on the Y-axis|g|[-1:1]
tGravityAcc.mean.Z|Gravitational motion linear acceleration mean on the Z-axis|g|[-1:1]
tGravityAcc.std.X|Gravitational motion linear acceleration standard deviation on the X-axis|g|[-1:1]
tGravityAcc.std.Y|Gravitational motion linear acceleration standard deviation on the Y-axis|g|[-1:1]
tGravityAcc.std.Z|Gravitational motion linear acceleration standard deviation on the Z-axis|g|[-1:1]
tBodyAccJerk.mean.X|Body motion linear jerk mean on the X-axis|m/s^3|[-1:1]
tBodyAccJerk.mean.Y|Body motion linear jerk mean on the Y-axis|m/s^3|[-1:1]
tBodyAccJerk.mean.Z|Body motion linear jerk mean on the Z-axis|m/s^3|[-1:1]
tBodyAccJerk.std.X|Body motion linear jerk standard deviation on the X-axis|m/s^3|[-1:1]
tBodyAccJerk.std.Y|Body motion linear jerk standard deviation on the X-axis|m/s^3|[-1:1]
tBodyAccJerk.std.Z|Body motion linear jerk standard deviation on the X-axis|m/s^3|[-1:1]
tBodyGyro.mean.X|Body motion gyroscopic acceleration mean on the X-axis|rad/s^2|[-1:1]
tBodyGyro.mean.Y|Body motion gyroscopic acceleration mean on the Y-axis|rad/s^2|[-1:1]
tBodyGyro.mean.Z|Body motion gyroscopic acceleration mean on the Z-axis|rad/s^2|[-1:1]
tBodyGyro.std.X|Body motion gyroscopic acceleration standard deviation on the X-axis|rad/s^2|[-1:1]
tBodyGyro.std.Y|Body motion gyroscopic acceleration standard deviation on the X-axis|rad/s^2|[-1:1]
tBodyGyro.std.Z|Body motion gyroscopic acceleration standard deviation on the X-axis|rad/s^2|[-1:1]
tBodyGyroJerk.mean.X|Body motion gyroscopic jerk mean on the X-axis|rad/s^3|[-1:1]
tBodyGyroJerk.mean.Y|Body motion gyroscopic jerk mean on the Y-axis|rad/s^3|[-1:1]
tBodyGyroJerk.mean.Z|Body motion gyroscopic jerk mean on the Z-axis|rad/s^3|[-1:1]
tBodyGyroJerk.std.X|Body motion gyroscopic jerk standard deviation on the X-axis|rad/s^3|[-1:1]
tBodyGyroJerk.std.Y|Body motion gyroscopic jerk standard deviation on the Y-axis|rad/s^3|[-1:1]
tBodyGyroJerk.std.Z|Body motion gyroscopic jerk standard deviation on the Z-axis|rad/s^3|[-1:1]
tBodyAccMag.mean|Body motion linear acceleration magnitude mean|g|[-1:1]
tBodyAccMag.std|Body motion linear acceleration magnitude standard deviation|g|[-1:1]
tGravityAccMag.mean|Gravitational motion linear acceleration magnitude mean|g|[-1:1]
tGravityAccMag.std|Gravitational motion linear acceleration magnitude standard deviation|g|[-1:1]
tBodyAccJerkMag.mean|Body motion linear jerk magnitude mean|m/s^3|[-1:1]
tBodyAccJerkMag.std|Body motion linear jerk magnitude standard deviation|m/s^3|[-1:1]
tBodyGyroMag.mean|Body motion gyroscopic acceleration magnitude mean|rad/s^2|[-1:1]
tBodyGyroMag.std|Body motion gyroscopic acceleration magnitude standard deviation|rad/s^2|[-1:1]
tBodyGyroJerkMag.mean|Body motion gyroscopic jerk magnitude mean|rad/s^3|[-1:1]
tBodyGyroJerkMag.std|Body motion gyroscopic jerk magnitude standard deviation|rad/s^3|[-1:1]
fBodyAcc.mean.X|Fast Fourrier transform of Body motion linear acceleration mean on the X-axis|Hz|[-1:1]
fBodyAcc.mean.Y|Fast Fourrier transform of Body motion linear acceleration mean on the Y-axis|Hz|[-1:1]
fBodyAcc.mean.Z|Fast Fourrier transform of Body motion linear acceleration mean on the Z-axis|Hz|[-1:1]
fBodyAcc.std.X|Fast Fourrier transform of Body motion linear acceleration standard deviation on the X-axis|g|[-1:1]
fBodyAcc.std.Y|Fast Fourrier transform of Body motion linear acceleration standard deviation on the Y-axis|g|[-1:1]
fBodyAcc.std.Z|Fast Fourrier transform of Body motion linear acceleration standard deviation on the Z-axis|g|[-1:1]
fBodyAccJerk.mean.X|Fast Fourrier transform of Body motion linear jerk mean on the X-axis|Hz|[-1:1]
fBodyAccJerk.mean.Y|Fast Fourrier transform of Body motion linear jerk mean on the Y-axis|Hz|[-1:1]
fBodyAccJerk.mean.Z|Fast Fourrier transform of Body motion linear jerk mean on the Z-axis|Hz|[-1:1]
fBodyAccJerk.std.X|Fast Fourrier transform of Body motion linear jerk standard deviation on the X-axis|Hz|[-1:1]
fBodyAccJerk.std.Y|Fast Fourrier transform of Body motion linear jerk standard deviation on the Y-axis|Hz|[-1:1]
fBodyAccJerk.std.Z|Fast Fourrier transform of Body motion linear jerk standard deviation on the Z-axis|Hz|[-1:1]
fBodyGyro.mean.X|Fast Fourrier transform of Body motion gyroscopic acceleration mean on the X-axis|Hz|[-1:1]
fBodyGyro.mean.Y|Fast Fourrier transform of Body motion gyroscopic acceleration mean on the Y-axis|Hz|[-1:1]
fBodyGyro.mean.Z|Fast Fourrier transform of Body motion gyroscopic acceleration mean on the Z-axis|Hz|[-1:1]
fBodyGyro.std.X|Fast Fourrier transform of Body motion gyroscopic acceleration standard deviation on the X-axis|Hz|[-1:1]
fBodyGyro.std.Y|Fast Fourrier transform of Body motion gyroscopic acceleration standard deviation on the Y-axis|Hz|[-1:1]
fBodyGyro.std.Z|Fast Fourrier transform of Body motion gyroscopic acceleration standard deviation on the Z-axis|Hz|[-1:1]
fBodyAccMag.mean|Fast Fourrier transform of Body motion linear acceleration magnitude mean|Hz|[-1:1]
fBodyAccMag.std|Fast Fourrier transform of Body motion linear acceleration magnitude standard deviation|Hz|[-1:1]
fBodyBodyAccJerkMag.mean|Fast Fourrier transform of Body motion gyroscopic jerk magnitude mean|Hz|[-1:1]
fBodyBodyAccJerkMag.std|Fast Fourrier transform of Body motion gyroscopic jerk magnitude mean|Hz|[-1:1]
fBodyBodyGyroMag.mean|Fast Fourrier transform of Body motion gyroscopic jerk magnitude mean|Hz|[-1:1]
fBodyBodyGyroMag.std|Fast Fourrier transform of Body motion gyroscopic jerk magnitude standard deviation|Hz|[-1:1]
fBodyBodyGyroJerkMag.mean|Fast Fourrier transform of Body motion gyroscopic jerk magnitude mean|Hz|[-1:1]
fBodyBodyGyroJerkMag.std|Fast Fourrier transform of Body motion gyroscopic jerk magnitude mean|Hz|[-1:1]

> 1g is equivalent to 9.80665 m/s^2 



```
#gcdw4.summary.txt
```
