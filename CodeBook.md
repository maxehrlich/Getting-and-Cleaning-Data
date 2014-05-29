The features_info.txt file from the download describes the meaning of the following 17 basic items:

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

 Once the script's data frame is completely built, it contains these columns:

[1] "subject"

[2] "activity"

[3] "time.body.acceleration.mean.x"

[4] "time.body.acceleration.mean.y"

[5] "time.body.acceleration.mean.z"

[6] "time.gravity.acceleration.mean.x"

[7] "time.gravity.acceleration.mean.y"

[8] "time.gravity.acceleration.mean.z"

[9] "time.body.acceleration.jerk.mean.x"

[10] "time.body.acceleration.jerk.mean.y"

[11] "time.body.acceleration.jerk.mean.z"

[12] "time.body.gyro.mean.x"

[13] "time.body.gyro.mean.y"

[14] "time.body.gyro.mean.z"

[15] "time.body.gyro.jerk.mean.x"

[16] "time.body.gyro.jerk.mean.y"

[17] "time.body.gyro.jerk.mean.z"

[18] "time.body.acceleration.magnitude.mean"

[19] "time.gravity.acceleration.magnitude.mean"

[20] "time.body.acceleration.jerk.magnitude.mean"

[21] "time.body.gyro.magnitude.mean"

[22] "time.body.gyro.jerk.magnitude.mean"

[23] "fft.body.acceleration.mean.x"

[24] "fft.body.acceleration.mean.y"

[25] "fft.body.acceleration.mean.z"

[26] "fft.body.acceleration.jerk.mean.x"

[27] "fft.body.acceleration.jerk.mean.y"

[28] "fft.body.acceleration.jerk.mean.z"

[29] "fft.body.gyro.mean.x"

[30] "fft.body.gyro.mean.y"

[31] "fft.body.gyro.mean.z"

[32] "fft.body.acceleration.magnitude.mean"

[33] "fft.body.body.acceleration.jerk.magnitude.mean" [34] "fft.body.body.gyro.magnitude.mean"

[35] "fft.body.body.gyro.jerk.magnitude.mean"

[36] "time.body.acceleration.std.x"

[37] "time.body.acceleration.std.y"

[38] "time.body.acceleration.std.z"

[39] "time.gravity.acceleration.std.x"

[40] "time.gravity.acceleration.std.y"

[41] "time.gravity.acceleration.std.z"

[42] "time.body.acceleration.jerk.std.x"

[43] "time.body.acceleration.jerk.std.y"

[44] "time.body.acceleration.jerk.std.z"

[45] "time.body.gyro.std.x"

[46] "time.body.gyro.std.y"

[47] "time.body.gyro.std.z"

[48] "time.body.gyro.jerk.std.x"

[49] "time.body.gyro.jerk.std.y"

[50] "time.body.gyro.jerk.std.z"

[51] "time.body.acceleration.magnitude.std"

[52] "time.gravity.acceleration.magnitude.std"

[53] "time.body.acceleration.jerk.magnitude.std"

[54] "time.body.gyro.magnitude.std"

[55] "time.body.gyro.jerk.magnitude.std"

[56] "fft.body.acceleration.std.x"

[57] "fft.body.acceleration.std.y"

[58] "fft.body.acceleration.std.z"

[59] "fft.body.acceleration.jerk.std.x"

[60] "fft.body.acceleration.jerk.std.y"

[61] "fft.body.acceleration.jerk.std.z"

[62] "fft.body.gyro.std.x"

[63] "fft.body.gyro.std.y"

[64] "fft.body.gyro.std.z"

[65] "fft.body.acceleration.magnitude.std"

[66] "fft.body.body.acceleration.jerk.magnitude.std" [67] "fft.body.body.gyro.magnitude.std"

[68] "fft.body.body.gyro.jerk.magnitude.std"


Then the script aggregates the file by its subject and activity columns. 
Each line of the aggregated data frame has the average of every variable for a certain activity-subject combination.
