Human Activity Recognition Using Smartphones Dataset
===========
### Version 1.2

# Authors
===========
### Original Raw Dataset:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

### Contributor: 
Emily W.R.



Human Activity Dataset Repo
===========
This repo contains the following to reproduce a tidy data set:
 1. An R script, run_analysis.R, to fully reproduce the tidy data set [from the raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
 2. A Codebook containing a description of the reproduced tidy data set, Codebook.md.
 3. A summary tidy data set containing the means of each variable by participant and activity, Summary_Human_Activity_Dataset.txt

### Run_analysis.R should:
 * download an online zip file, 
 * install and load (if not available) the R package reshape2
 * output the tidy data set described in Codebook.md, Human_Activity_Dataset.txt
 * ouput the mean values for each variable by participant and activity, Summary_Human_Activity_Dataset.txt

### Loading the Tidy Dataset

Once the R script has been run and the tidy dataset Human_Activity_Dataset.txt
and its mean variable summary file, Summary_Human_Activity_Dataset, have been produced:
From R, navigate to the directory containing the file, then type:
### read.table("Human_Activity_Dataset.txt",header=T,sep = "\t")

To load the summary dataset, use the same procedure:
### read.table("Summary_Human_Activity_Dataset.txt",header=T,sep = "\t") 

### Data Description 

This dataset was compiled from raw experimental data from 
  The Non Linear Complex Systems Laboratory at the Università degli 
  Studi di Genova in Genoa, Italy. The experiments were carried out 
  with a group of 30 volunteers from ages 19-48 years old. Each person 
  performed six activities (WALKING, WALKING_UPSTAIRS, 
  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
  (Samsung Galaxy S II) on the waist. Using its embedded accelerometer 
  and gyroscope, researchers captured 3-axial linear acceleration and 
  3-axial angular velocity at a constant rate of 50Hz. 

This tidy dataset contains the means and standard deviations of 
  all the recorded measurements taken of each of the subjects while 
  performing the 6 activities. These measurements were taken in 3 
  dimensional vector space, and where a measurement refers to one of the 
  three dimensions, X, Y or Z, this will be acknowledged in the variable
  name and description.  

### Technical Data Collection Information 

The measurements in this datasetcome from the accelerometer and 
  gyroscope 3-axial raw signals; the variable names contain the word 
  Acceleration or Gyration to signal their source. These time variables 
  were captured at a constant frequency of 50 Hz. Then they were 
  filtered using a median filter and a 3rd order low pass Butterworth 
  filter with a corner frequency of 20 Hz to remove noise. Similarly, 
  the acceleration signal was then separated into body and gravity 
  acceleration signals (Time.Body.Acceleration and 
  Time.Gravity.Acceleration variables) using another low pass 
  Butterworth filter with a corner frequency of 0.3 Hz.  Subsequently, 
  the body linear acceleration and angular velocity were derived in 
  time to obtain Jerk signals (Time.Body.Jerk.Acceleration and 
  Time.Body.Jerk.Gyration variables). Also the magnitude of these 
  three-dimensional signals were calculated using the Euclidean norm 
  (Magnitude.of.Time.Body.Acceleration, 
  Magnitude.of.Time.Gravity.Acceleration,
  Magnitude.of.Time.Body.Jerk.Acceleration,
  Magnitude.of.Time.Body.Gyration,
  Magnitude.of.Time.Body.Jerk.Gyration).  Finally a Fast Fourier 
  Transform (FFT) was applied to some of these signals producing 
  Frequency.Body.Acceleration, Frequency.Body.Jerk.Acceleration,
  Frequency.Body.Gyration, 
  Magnitude.of.Frequency.Body.Jerk.Acceleration, 
  Magnitude.of.Frequency.Body.Gyration,
  Magnitude.of.Frequency.Body.Jerk.Gyration variables. 

The following data collection description contains technical 
  information from the original researchers: 
 The sensor signals 
  (accelerometer and gyroscope) were pre-processed by applying noise 
  filters and then sampled in fixed-width sliding windows of 2.56 sec 
  and 50% overlap (128 readings/window). The sensor acceleration signal, 
  which has gravitational and body motion components, was separated 
  using a Butterworth low-pass filter into body acceleration and 
  gravity. The gravitational force is assumed to have only low 
  frequency components, therefore a filter with 0.3 Hz cutoff 
  frequency was used. From each window, a vector of features was 
  obtained by calculating variables from the time and frequency 
  domain. 

License: 
=========== 
More information about the original dataset can be found in the 
  following publication: 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
  Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using
  a Multiclass Hardware-Friendly Support Vector Machine. International 
  Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, 
  Spain. Dec 2012 

This dataset is distributed AS-IS and no responsibility implied or 
  explicit can be addressed to the authors or their institutions for 
  its use or misuse. Any commercial use is prohibited. 
