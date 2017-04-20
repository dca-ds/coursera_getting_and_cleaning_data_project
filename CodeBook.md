# Code Book

This document provides a summary of the data in `tidyData.txt`.

## Identifiers:

  * `subject` - the ID of the test subject (an integer from 1 to 30) 
  * `activity` - the activity performed by the subject (e.g., `walking_downstairs`)

## Measurements:

The names of each measured variable are of the form:

  [time or frequency domain][device][mean or std][orthogonal direction]

where the [time or frequency domain] string indicates measurements in the time or 
the frequency domain (string = `timeDomain` or `frequencyDomain`);

the [device] string indicates which device was used to make the measurement 
(string = `BodyAccelerometer', 'GravityAccelerometer`, or `BodyGyroscope`);

the [mean or std] string indicates whether the value reported is the mean or
the standard deviation of all observations for the subject-activity pair 
(string = `Mean` or `StandardDeviation`); and

the [orthogonal direction] string indicates the direction in 3-dimensional space 
along which the device measurement was taken (string = `X`, `Y`, or `Z`).

The complete list of measurement variables is as follows:

  * timeDomainBodyAccelerometerMeanX
  * timeDomainBodyAccelerometerMeanY
  * timeDomainBodyAccelerometerMeanZ
  * timeDomainBodyAccelerometerStandardDeviationX
  * timeDomainBodyAccelerometerStandardDeviationY
  * timeDomainBodyAccelerometerStandardDeviationZ
  * timeDomainGravityAccelerometerMeanX
  * timeDomainGravityAccelerometerMeanY
  * timeDomainGravityAccelerometerMeanZ
  * timeDomainGravityAccelerometerStandardDeviationX
  * timeDomainGravityAccelerometerStandardDeviationY
  * timeDomainGravityAccelerometerStandardDeviationZ
  * timeDomainBodyAccelerometerJerkMeanX
  * timeDomainBodyAccelerometerJerkMeanY
  * timeDomainBodyAccelerometerJerkMeanZ
  * timeDomainBodyAccelerometerJerkStandardDeviationX
  * timeDomainBodyAccelerometerJerkStandardDeviationY
  * timeDomainBodyAccelerometerJerkStandardDeviationZ
  * timeDomainBodyGyroscopeMeanX
  * timeDomainBodyGyroscopeMeanY
  * timeDomainBodyGyroscopeMeanZ
  * timeDomainBodyGyroscopeStandardDeviationX
  * timeDomainBodyGyroscopeStandardDeviationY
  * timeDomainBodyGyroscopeStandardDeviationZ
  * timeDomainBodyGyroscopeJerkMeanX
  * timeDomainBodyGyroscopeJerkMeanY
  * timeDomainBodyGyroscopeJerkMeanZ
  * timeDomainBodyGyroscopeJerkStandardDeviationX
  * timeDomainBodyGyroscopeJerkStandardDeviationY
  * timeDomainBodyGyroscopeJerkStandardDeviationZ
  * timeDomainBodyAccelerometerMagnitudeMean
  * timeDomainBodyAccelerometerMagnitudeStandardDeviation
  * timeDomainGravityAccelerometerMagnitudeMean
  * timeDomainGravityAccelerometerMagnitudeStandardDeviation
  * timeDomainBodyAccelerometerJerkMagnitudeMean
  * timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
  * timeDomainBodyGyroscopeMagnitudeMean
  * timeDomainBodyGyroscopeMagnitudeStandardDeviation
  * timeDomainBodyGyroscopeJerkMagnitudeMean
  * timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
  * frequencyDomainBodyAccelerometerMeanX
  * frequencyDomainBodyAccelerometerMeanY
  * frequencyDomainBodyAccelerometerMeanZ
  * frequencyDomainBodyAccelerometerStandardDeviationX
  * frequencyDomainBodyAccelerometerStandardDeviationY
  * frequencyDomainBodyAccelerometerStandardDeviationZ
  * frequencyDomainBodyAccelerometerMeanFrequencyX
  * frequencyDomainBodyAccelerometerMeanFrequencyY
  * frequencyDomainBodyAccelerometerMeanFrequencyZ
  * frequencyDomainBodyAccelerometerJerkMeanX
  * frequencyDomainBodyAccelerometerJerkMeanY
  * frequencyDomainBodyAccelerometerJerkMeanZ
  * frequencyDomainBodyAccelerometerJerkStandardDeviationX
  * frequencyDomainBodyAccelerometerJerkStandardDeviationY
  * frequencyDomainBodyAccelerometerJerkStandardDeviationZ
  * frequencyDomainBodyAccelerometerJerkMeanFrequencyX
  * frequencyDomainBodyAccelerometerJerkMeanFrequencyY
  * frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
  * frequencyDomainBodyGyroscopeMeanX
  * frequencyDomainBodyGyroscopeMeanY
  * frequencyDomainBodyGyroscopeMeanZ
  * frequencyDomainBodyGyroscopeStandardDeviationX
  * frequencyDomainBodyGyroscopeStandardDeviationY
  * frequencyDomainBodyGyroscopeStandardDeviationZ
  * frequencyDomainBodyGyroscopeMeanFrequencyX
  * frequencyDomainBodyGyroscopeMeanFrequencyY
  * frequencyDomainBodyGyroscopeMeanFrequencyZ
  * frequencyDomainBodyAccelerometerMagnitudeMean
  * frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
  * frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
  * frequencyDomainBodyAccelerometerJerkMagnitudeMean
  * frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
  * frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
  * frequencyDomainBodyGyroscopeMagnitudeMean
  * frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
  * frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
  * frequencyDomainBodyGyroscopeJerkMagnitudeMean
  * frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
  * frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

## Activity Labels:

The activity labels describe the activity undertaken by the subject.  

The activity labels and their corresponding numeric activity IDs are as follows:

  * `walking` (value = 1): subject was walking during the test
  * `walking_upstairs` (value = 2): subject was walking up a staircase during the test
  * `walking_downstairs` (value = 3): subject was walking down a staircase during the test
  * `sitting` (value = 4): subject was sitting down during the test
  * `standing` (value = 5): subject was standing erect during the test
  * `laying` (value = 6): subject was reclining during the test
