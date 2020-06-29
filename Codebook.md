---
title: ''
output: html_document
---

# Codebook
The file "Subject_Activity_Average.txt" contains a table with 36 rows and 67 columns. Following is the list of of columns/fields. Each row represents an pbservation - either the subject or activity for which the remaining variables are averaged.

**1. Group (Subject/Activity)** - The variable by which the data is grouped and averaged for. It consists of 36 groups :

30 subjects - numbered 1 to 30.

6 activities - Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying.

**Columns 2-67** represent the measurements under consideration in the study. Each column name is the name of the variable measured (either mean or std) and the value in each row is the average value of that variable for the group corresponding to that row. The following measures are dervied from linear accleration signals measured by an accelerometer (Acc) and angular velocity signals measured by a gyroscope (Gyro), in time. Linear acceleration was divided into body acceleration and gravity acceleration.
The time domain signals were converted to frequency domain signals  by Fast Fourier transform (FFT).


**2. tBodyAcc-mean()-X** - Mean of the time domain body acceleration signals measured in the X-direction.

**3. tBodyAcc-mean()-Y** - Mean of the time domain body acceleration signals measured in the Y-direction

**4. tBodyAcc-mean()-Z** - Mean of the time domain body acceleration signals measured in the Z-direction

**5. tBodyAcc-std()-X** -  Standard deviation of the time domain body acceleration signals measured in the X-direction

**6. tBodyAcc-std()-Y** -  Standard deviation of the time domain body acceleration signals measured in the Y-direction

**7. tBodyAcc-std()-Z** -  Standard deviation of the time domain body acceleration signals measured in the Z-direction

**8. tGravityAcc-mean()-X** - Mean of the time domain of the gravity acceleration signals measured in the X-direction

**9. tGravityAcc-mean()-Y** - Mean of the time domain of the gravity acceleration signals measured in the Y-direction

**10. tGravityAcc-mean()-Z** - Mean of the time domain of the gravity acceleration signals measured in the Z-direction

**11. tGravityAcc-std()-X** - Standard deviation of the time domain of the gravity acceleration signals measured in the X-direction

**12. tGravityAcc-std()-Y** - Standard deviation of the time domain of the gravity acceleration signals measured in the Y-direction

**13. tGravityAcc-std()-Z** - Standard deviation of the time domain of the gravity acceleration signals measured in the Z-direction

**14. tBodyAccJerk-mean()-X** - Mean of the time domain of jerk signals from linear acceleration measured in the X-direction

**15. tBodyAccJerk-mean()-Y** - Mean of the time domain of jerk signals from linear acceleration measured in the Y-direction

**16. tBodyAccJerk-mean()-Z** - Mean of the time domain of jerk signals from linear acceleration measured in the Z-direction

**17. tBodyAccJerk-std()-X** - Standard deviation of the time domain of jerk signals from linear acceleration measured in the X-direction

**18. tBodyAccJerk-std()-Y** - Standard deviation of the time domain of jerk signals from linear acceleration measured in the Y-direction

**19. tBodyAccJerk-std()-Z** - Standard deviation of the time domain of jerk signals from linear acceleration measured in the Z-direction

**20. tBodyGyro-mean()-X** - Mean of the time domain of angular velocity measured in the X-direction

**21. tBodyGyro-mean()-Y** - Mean of the time domain of angular velocity measured in the Y-direction

**22. tBodyGyro-mean()-Z** - Mean of the time domain of angular velocity measured in the Z-direction

**23. tBodyGyro-std()-X** - Standard deviation of the time domain of angular velocity measured in the X-direction

**24. tBodyGyro-std()-Y** - Standard deviation of the time domain of angular velocity measured in the Y-direction

**25. tBodyGyro-std()-Z** - Standard deviation of the time domain of angular velocity measured in the Z-direction

**26. tBodyGyroJerk-mean()-X** - Mean of the time domain of jerk signals from angular velocity measured in the X-direction

**27. tBodyGyroJerk-mean()-Y** - Mean of the time domain of jerk signals from angular velocity measured in the Y-direction

**28. tBodyGyroJerk-mean()-Z** - Mean of the time domain of jerk signals from angular velocity measured in the Z-direction

**29. tBodyGyroJerk-std()-X** - Standard deviation of the time domain of jerk signals from angular velocity measured in the X-direction

**30. tBodyGyroJerk-std()-Y** - Standard deviation of the time domain of jerk signals from angular velocity measured in the Y-direction

**31. tBodyGyroJerk-std()-Z** - Standard deviation of the time domain of jerk signals from angular velocity measured in the Z-direction

**32. tBodyAccMag-mean()** - Mean of the magnitude of the time domain of body acceleration calculated by Euclidean norm

**33. tBodyAccMag-std()** - Standard deviation of the magnitude of the time domain of body acceleration calculated by Euclidean norm

**34. tGravityAccMag-mean()** - Mean of the magnitude of the time domain of gravity acceleration calculated by Euclidean norm

**35. tGravityAccMag-std()** - Standard deviaion of the magnitude of the time domain of gravity acceleration calculated by Euclidean norm

**36. tBodyAccJerkMag-mean()** - Mean of the magnitude of the time domain of jerk signals from linear acceleration calculated by Euclidean norm

**37. tBodyAccJerkMag-std()** - Standard deviation of the magnitude of the time domain of jerk signals from linear acceleration calculated by Euclidean norm

**38. tBodyGyroMag-mean()** - Mean of the magnitude of the time domain of angular velocity calculated by Euclidean norm

**39. tBodyGyroMag-std()** - Standard deviation of the magnitude of the time domain of angular velocity calculated by Euclidean norm

**40. tBodyGyroJerkMag-mean()** - Mean of the magnitude of the time domain of jerk signals from angular velocity calculated by Euclidean norm

**41. tBodyGyroJerkMag-std()** - Standard deviation of the magnitude of the time domain of jerk signals from angular velocity calculated by Euclidean norm

**42. fBodyAcc-mean()-X** - Mean of the frequency domain body acceleration signals measured in the X-direction

**43. fBodyAcc-mean()-Y** - Mean of the frequency domain body acceleration signals measured in the Y-direction

**44. fBodyAcc-mean()-Z** Mean of the frequency domain body acceleration signals measured in the Z-direction

**45. fBodyAcc-std()-X** - Standard deviation of the frequency domain body acceleration signals measured in the X-direction

**46. fBodyAcc-std()-Y** - Standard deviation of the frequency domain body acceleration signals measured in the Y-direction

**47. fBodyAcc-std()-Z** - Standard deviation of the frequency domain body acceleration signals measured in the Z-direction

**48. fBodyAccJerk-mean()-X** - Mean of the frequency domain of jerk signals from linear acceleration signals measured in the X-direction

**49. fBodyAccJerk-mean()-Y** - Mean of the frequency domain of jerk signals from linear acceleration signals measured in the Y-direction

**50. fBodyAccJerk-mean()-Z** - Mean of the frequency domain of jerk signals from linear acceleration signals measured in the Z-direction

**51. fBodyAccJerk-std()-X** - Standard deviation of the frequency domain of jerk signals from linear acceleration signals measured in the X-direction

**52. fBodyAccJerk-std()-Y** - Standard deviation of the frequency domain of jerk signals from linear acceleration signals measured in the Y-direction

**53. fBodyAccJerk-std()-Z** - Standard deviation of the frequency domain of jerk signals from linear acceleration signals measured in the Z-direction

**54. fBodyGyro-mean()-X** - Mean of the frequency domain of jerk signals from angular velocity signals measured in the X-direction

**55. fBodyGyro-mean()-Y** - Mean of the frequency domain of jerk signals from angular velocity signals measured in the Y-direction

**56. fBodyGyro-mean()-Z** - Mean of the frequency domain of jerk signals from angular velocity signals measured in the Z-direction

**57. fBodyGyro-std()-X** - Standard deviation of the frequency domain of jerk signals from angular velocity signals measured in the X-direction

**58. fBodyGyro-std()-Y** - Standard deviation of the frequency domain of jerk signals from angular velocity signals measured in the Y-direction

**59. fBodyGyro-std()-Z**- Standard deviation of the frequency domain of jerk signals from angular velocity signals measured in the Z-direction

**60. fBodyAccMag-mean()** - Mean of the magnitude of the frequency domain of linear acceleration calculated by Euclidean norm

**61. fBodyAccMag-std()** - Standard deviation of the magnitude of the frequency domain of linear acceleration calculated by Euclidean norm

**62. fBodyBodyAccJerkMag-mean()** - Mean of the magnitude of the frequency domain of jerk signals from linear acceleration calculated by Euclidean norm

**63. fBodyBodyAccJerkMag-std()** - Standard deviation of the magnitude of the frequency domain of jerk signals from linear acceleration calculated by Euclidean norm

**64. fBodyBodyGyroMag-mean()** - Mean of the magnitude of the frequency domain of angular velocity calculated by Euclidean norm

**65. fBodyBodyGyroMag-std()** - Standard deviation of the magnitude of the frequency domain of angular velocity calculated by Euclidean norm

**66. fBodyBodyGyroJerkMag-mean()** - Mean of the magnitude of the frequency domain of jerk signals from angular velocity calculated by Euclidean norm

**67. fBodyBodyGyroJerkMag-std()** - Standard deviation of the magnitude of the frequency domain of jerk signals from angular velocity calculated by Euclidean norm
