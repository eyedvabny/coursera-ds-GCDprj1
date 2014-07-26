Summarized Accelerometer Activity Data
======================================
```
1   Subject                     (int)
2	Activity                    (chr)
3	tBodyAcc-mean()-X           (float)
4	tBodyAcc-std()-X            (float)
5	tBodyAcc-mean()-Y           (float)
6	tBodyAcc-std()-Y            (float)
7	tBodyAcc-mean()-Z           (float)
8	tBodyAcc-std()-Z            (float)
9	tGravityAcc-mean()-X        (float)
10	tGravityAcc-std()-X         (float)
11	tGravityAcc-mean()-Y        (float)
12	tGravityAcc-std()-Y         (float)
13	tGravityAcc-mean()-Z        (float)
14	tGravityAcc-std()-Z         (float)
15	tBodyAccJerk-mean()-X       (float)
16	tBodyAccJerk-std()-X        (float)
17	tBodyAccJerk-mean()-Y       (float)
18	tBodyAccJerk-std()-Y        (float)
19	tBodyAccJerk-mean()-Z       (float)
20	tBodyAccJerk-std()-Z        (float)
21	tBodyGyro-mean()-X          (float)
22	tBodyGyro-std()-X           (float)
23	tBodyGyro-mean()-Y          (float)
24	tBodyGyro-std()-Y           (float)
25	tBodyGyro-std()-X.1         (float)
26	tBodyGyro-std()-Z           (float)
27	tBodyGyroJerk-mean()-X      (float)
28	tBodyGyroJerk-std()-X       (float)
29	tBodyGyroJerk-mean()-Y      (float)
30	tBodyGyroJerk-std()-Y       (float)
31	tBodyGyroJerk-mean()-Z      (float)
32	tBodyGyroJerk-std()-Z       (float)
33	tBodyAccMag-mean()          (float)
34	tBodyAccMag-std()           (float)
35	tGravityAccMag-mean()       (float)
36	tGravityAccMag-std()        (float)
37	tBodyAccJerkMag-mean()      (float)
38	tBodyAccJerkMag-std()       (float)
39	tBodyGyroMag-mean()         (float)
40	tBodyGyroMag-std()          (float)
41	tBodyGyroJerkMag-mean()     (float)
42	tBodyGyroJerkMag-std()      (float)
43	fBodyAcc-mean()-X           (float)
44	fBodyAcc-std()-X            (float)    
45	fBodyAcc-mean()-Y           (float)
46	fBodyAcc-std()-Y            (float)
47	fBodyAcc-mean()-Z           (float)
48	fBodyAcc-std()-Z            (float)
49	fBodyAccJerk-mean()-X       (float)
50	fBodyAccJerk-std()-X        (float)
51	fBodyAccJerk-mean()-Y       (float)
52	fBodyAccJerk-std()-Y        (float)
53	fBodyAccJerk-mean()-Z       (float)
54	fBodyAccJerk-std()-Z        (float)
55	fBodyGyro-mean()-X          (float)
56	fBodyGyro-std()-X           (float)
57	fBodyGyro-mean()-Y          (float)
58	fBodyGyro-std()-Y           (float)
59	fBodyGyro-mean()-Z          (float)
60	fBodyGyro-std()-Z           (float)
61	fBodyAccMag-mean()          (float)
62	fBodyAccMag-std()           (float)
63	fBodyBodyAccJerkMag-mean()  (float)
64	fBodyBodyAccJerkMag-std()   (float)
65	fBodyBodyGyroMag-mean()     (float)
66	fBodyBodyGyroMag-std()      (float)
67	fBodyBodyGyroJerkMag-mean() (float)
68	fBodyBodyGyroJerkMag-std    (float)
```

**Subject**: Numerical ID of the test subject that contributed the observation. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.

**Activity**: A verbal label describing one of six activities observed during the study: `WALKING`,`WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`.

The source of the feature variables is provided verbatim from the features_info.txt accompanying the original UCI dataset:

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (**tBodyAcc-XYZ** and **tGravityAcc-XYZ**) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (**tBodyAccJerk-XYZ** and **tBodyGyroJerk-XYZ**). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (**tBodyAccMag**, **tGravityAccMag**, **tBodyAccJerkMag**, **tBodyGyroMag**, **tBodyGyroJerkMag**). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing **fBodyAcc-XYZ**, **fBodyAccJerk-XYZ**, **fBodyGyro-XYZ**, **fBodyAccJerkMag**, **fBodyGyroMag**, **fBodyGyroJerkMag**. (Note the 'f' to indicate frequency domain signals).

The values reported in the tidy dataset are *averages* across independent measurements *for a particular activity by a specific test subject*. The original dataset had 10299 observations, with ~57 readings for each activity of each test subject.
