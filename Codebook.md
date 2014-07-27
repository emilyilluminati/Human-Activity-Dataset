CODEBOOK FOR HUMAN ACTIVITY RECOGNITION USING 
  SMARTPHONES DATASET 
=========== 





Data Description 
=========== 
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

Technical Data Collection Information 
=========== 
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

ACTIVITY 
     Position:  1 
           Activity 

     Factor variable containing 6 levels
      1   WALKING 
      2   WALKING_UPSTAIRS 
      3   WALKING_DOWNSTAIRS 
      4   SITTING 
      5   STANDING 
      6   LAYING 



SUBJECTID 
     Position:  2 
           SubjectID 

     Factor variable containing 30 levels
      1:30 Human Subject IDs



MEAN.X.TIME.BODY.ACCELERATION 
     Position:  3 
           Mean X Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 0.2626 0.2772 0.2743 0.2884 1.0000 



MEAN.Y.TIME.BODY.ACCELERATION 
     Position:  4 
           Mean Y Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0249 -0.0172 -0.0177 -0.0106 1.0000 



MEAN.Z.TIME.BODY.ACCELERATION 
     Position:  5 
           Mean Z Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.1210 -0.1086 -0.1089 -0.0976 1.0000 



STD.DEV.OF.X.TIME.BODY.ACCELERATION 
     Position:  6 
           Standard Deviation of X Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9924 -0.9430 -0.6078 -0.2503 1.0000 



STD.DEV.OF.Y.TIME.BODY.ACCELERATION 
     Position:  7 
           Standard Deviation of Y Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9770 -0.8350 -0.5102 -0.0573 1.0000 



STD.DEV.OF.Z.TIME.BODY.ACCELERATION 
     Position:  8 
           Standard Deviation of Z Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9791 -0.8508 -0.6131 -0.2787 1.0000 



MEAN.X.TIME.GRAVITY.ACCELERATION 
     Position:  9 
           Mean X Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 0.8116 0.9218 0.6692 0.9547 1.0000 



MEAN.Y.TIME.GRAVITY.ACCELERATION 
     Position:  10 
           Mean Y Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.2429 -0.1436 0.0040 0.1189 1.0000 



MEAN.Z.TIME.GRAVITY.ACCELERATION 
     Position:  11 
           Mean Z Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.1167 0.0368 0.0921 0.2163 1.0000 



STD.DEV.OF.X.TIME.GRAVITY.ACCELERATION 
     Position:  12 
           Standard Deviation of X Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9949 -0.9819 -0.9652 -0.9615 1.0000 



STD.DEV.OF.Y.TIME.GRAVITY.ACCELERATION 
     Position:  13 
           Standard Deviation of Y Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9913 -0.9759 -0.9544 -0.9464 1.0000 



STD.DEV.OF.Z.TIME.GRAVITY.ACCELERATION 
     Position:  14 
           Standard Deviation of Z Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9866 -0.9665 -0.9389 -0.9296 1.0000 



MEAN.X.TIME.BODY.JERK.ACCELERATION 
     Position:  15 
           Mean X Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 0.0630 0.0760 0.0789 0.0913 1.0000 



MEAN.Y.TIME.BODY.JERK.ACCELERATION 
     Position:  16 
           Mean Y Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0186 0.0107 0.0079 0.0335 1.0000 



MEAN.Z.TIME.BODY.JERK.ACCELERATION 
     Position:  17 
           Mean Z Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0316 -0.0012 -0.0047 0.0246 1.0000 



STD.DEV.OF.X.TIME.BODY.JERK.ACCELERATION 
     Position:  18 
           Standard Deviation of X Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9913 -0.9513 -0.6398 -0.2912 1.0000 



STD.DEV.OF.Y.TIME.BODY.JERK.ACCELERATION 
     Position:  19 
           Standard Deviation of Y Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9850 -0.9250 -0.6080 -0.2218 1.0000 



STD.DEV.OF.Z.TIME.BODY.JERK.ACCELERATION 
     Position:  20 
           Standard Deviation of Z Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9892 -0.9543 -0.7628 -0.5485 1.0000 



MEAN.X.TIME.BODY.GYRATION 
     Position:  21 
           Mean X Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0458 -0.0278 -0.0310 -0.0106 1.0000 



MEAN.Y.TIME.BODY.GYRATION 
     Position:  22 
           Mean Y Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.1040 -0.0748 -0.0747 -0.0511 1.0000 



MEAN.Z.TIME.BODY.GYRATION 
     Position:  23 
           Mean Z Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 0.0649 0.0863 0.0884 0.1104 1.0000 



STD.DEV.OF.X.TIME.BODY.GYRATION 
     Position:  24 
           Standard Deviation of X Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9872 -0.9016 -0.7212 -0.4822 1.0000 



STD.DEV.OF.Y.TIME.BODY.GYRATION 
     Position:  25 
           Standard Deviation of Y Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9819 -0.9106 -0.6827 -0.4461 1.0000 



STD.DEV.OF.Z.TIME.BODY.GYRATION 
     Position:  26 
           Standard Deviation of Z Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9850 -0.8819 -0.6537 -0.3379 1.0000 



MEAN.X.TIME.BODY.JERK.GYRATION 
     Position:  27 
           Mean X Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.1172 -0.0982 -0.0967 -0.0793 1.0000 



MEAN.Y.TIME.BODY.JERK.GYRATION 
     Position:  28 
           Mean Y Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0587 -0.0406 -0.0423 -0.0252 1.0000 



MEAN.Z.TIME.BODY.JERK.GYRATION 
     Position:  29 
           Mean Z Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.0794 -0.0546 -0.0548 -0.0317 1.0000 



STD.DEV.OF.X.TIME.BODY.JERK.GYRATION 
     Position:  30 
           Standard Deviation of X Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9907 -0.9348 -0.7313 -0.4865 1.0000 



STD.DEV.OF.Y.TIME.BODY.JERK.GYRATION 
     Position:  31 
           Standard Deviation of Y Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9922 -0.9548 -0.7861 -0.6267 1.0000 



STD.DEV.OF.Z.TIME.BODY.JERK.GYRATION 
     Position:  32 
           Standard Deviation of Z Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9926 -0.9503 -0.7399 -0.5097 1.0000 



MEAN.MAGNITUDE.OF.TIME.BODY.ACCELERATION 
     Position:  33 
           Mean Magnitude of Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9819 -0.8746 -0.5482 -0.1201 1.0000 



STD.DEV.OF.MAGNITUDE.OF.TIME.BODY.ACCELERATION 
     Position:  34 
           Standard Deviation of Magnitude of Time Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9822 -0.8437 -0.5912 -0.2423 1.0000 



MEAN.MAGNITUDE.OF.TIME.GRAVITY.ACCELERATION 
     Position:  35 
           Mean Magnitude of Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9819 -0.8746 -0.5482 -0.1201 1.0000 



STD.DEV.OF.MAGNITUDE.OF.TIME.GRAVITY.ACCELERATION 
     Position:  36 
           Standard Deviation of Magnitude of Time Gravity Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9822 -0.8437 -0.5912 -0.2423 1.0000 



MEAN.MAGNITUDE.OF.TIME.BODY.JERK.ACCELERATION 
     Position:  37 
           Mean Magnitude of Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9896 -0.9481 -0.6494 -0.2956 1.0000 



STD.DEV.OF.MAGNITUDE.OF.TIME.BODY.JERK.ACCELERATION 
     Position:  38 
           Standard Deviation of Magnitude of Time Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9907 -0.9288 -0.6278 -0.2733 1.0000 



MEAN.MAGNITUDE.OF.TIME.BODY.GYRATION 
     Position:  39 
           Mean Magnitude of Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9781 -0.8223 -0.6052 -0.2453 1.0000 



STD.DEV.OF.MAGNITUDE.OF.TIME.BODY.GYRATION 
     Position:  40 
           Standard Deviation of Magnitude of Time Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9775 -0.8259 -0.6625 -0.3940 1.0000 



MEAN.MAGNITUDE.OF.TIME.BODY.JERK.GYRATION 
     Position:  41 
           Mean Magnitude of Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9923 -0.9559 -0.7621 -0.5498 1.0000 



STD.DEV.OF.MAGNITUDE.OF.TIME.BODY.JERK.GYRATION 
     Position:  42 
           Standard Deviation of Magnitude of Time Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9922 -0.9403 -0.7780 -0.6093 1.0000 



MEAN.X.FREQ.BODY.ACCELERATION 
     Position:  43 
           Mean X Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9913 -0.9456 -0.6228 -0.2645 1.0000 



MEAN.Y.FREQ.BODY.ACCELERATION 
     Position:  44 
           Mean Y Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9792 -0.8643 -0.5375 -0.1032 1.0000 



MEAN.Z.FREQ.BODY.ACCELERATION 
     Position:  45 
           Mean Z Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9832 -0.8954 -0.6650 -0.3662 1.0000 



STD.DEV.OF.X.FREQ.BODY.ACCELERATION 
     Position:  46 
           Standard Deviation of X Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9929 -0.9416 -0.6034 -0.2493 1.0000 



STD.DEV.OF.Y.FREQ.BODY.ACCELERATION 
     Position:  47 
           Standard Deviation of Y Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9769 -0.8326 -0.5284 -0.0921 1.0000 



STD.DEV.OF.Z.FREQ.BODY.ACCELERATION 
     Position:  48 
           Standard Deviation of Z Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9780 -0.8398 -0.6179 -0.3021 1.0000 



MEAN.X.FREQ.BODY.JERK.ACCELERATION 
     Position:  49 
           Mean X Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9912 -0.9516 -0.6567 -0.3269 1.0000 



MEAN.Y.FREQ.BODY.JERK.ACCELERATION 
     Position:  50 
           Mean Y Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9848 -0.9257 -0.6290 -0.2638 1.0000 



MEAN.Z.FREQ.BODY.JERK.ACCELERATION 
     Position:  51 
           Mean Z Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9873 -0.9475 -0.7436 -0.5133 1.0000 



STD.DEV.OF.X.FREQ.BODY.JERK.ACCELERATION 
     Position:  52 
           Standard Deviation of X Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9920 -0.9562 -0.6550 -0.3203 1.0000 



STD.DEV.OF.Y.FREQ.BODY.JERK.ACCELERATION 
     Position:  53 
           Standard Deviation of Y Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9865 -0.9280 -0.6122 -0.2361 1.0000 



STD.DEV.OF.Z.FREQ.BODY.JERK.ACCELERATION 
     Position:  54 
           Standard Deviation of Z Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9895 -0.9590 -0.7809 -0.5902 1.0000 



MEAN.X.FREQ.BODY.GYRATION 
     Position:  55 
           Mean X Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9853 -0.8917 -0.6721 -0.3836 1.0000 



MEAN.Y.FREQ.BODY.GYRATION 
     Position:  56 
           Mean Y Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9847 -0.9197 -0.7062 -0.4733 1.0000 



MEAN.Z.FREQ.BODY.GYRATION 
     Position:  57 
           Mean Z Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9851 -0.8877 -0.6442 -0.3224 1.0000 



STD.DEV.OF.X.FREQ.BODY.GYRATION 
     Position:  58 
           Standard Deviation of X Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9881 -0.9053 -0.7386 -0.5224 1.0000 



STD.DEV.OF.Y.FREQ.BODY.GYRATION 
     Position:  59 
           Standard Deviation of Y Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9808 -0.9061 -0.6742 -0.4385 1.0000 



STD.DEV.OF.Z.FREQ.BODY.GYRATION 
     Position:  60 
           Standard Deviation of Z Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9862 -0.8915 -0.6904 -0.4167 1.0000 



MEAN.MAGNITUDE.OF.FREQ.BODY.ACCELERATION 
     Position:  61 
           Mean Magnitude of Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9847 -0.8755 -0.5860 -0.2173 1.0000 



STD.DEV.OF.MAGNITUDE.OF.FREQ.BODY.ACCELERATION 
     Position:  62 
           Standard Deviation of Magnitude of Frequency Body Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9829 -0.8547 -0.6595 -0.3823 1.0000 



MEAN.MAGNITUDE.OF.FREQ.BODY.JERK.ACCELERATION 
     Position:  63 
           Mean Magnitude of Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9898 -0.9290 -0.6208 -0.2600 1.0000 



STD.DEV.OF.MAGNITUDE.OF.FREQ.BODY.JERK.ACCELERATION 
     Position:  64 
           Standard Deviation of Magnitude of Frequency Body Jerk Acceleration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9907 -0.9255 -0.6401 -0.3082 1.0000 



MEAN.MAGNITUDE.OF.FREQ.BODY.GYRATION 
     Position:  65 
           Mean Magnitude of Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9825 -0.8756 -0.6974 -0.4514 1.0000 



STD.DEV.OF.MAGNITUDE.OF.FREQ.BODY.GYRATION 
     Position:  66 
           Standard Deviation of Magnitude of Frequency Body Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9782 -0.8275 -0.7000 -0.4712 1.0000 



MEAN.MAGNITUDE.OF.FREQ.BODY.JERK.GYRATION 
     Position:  67 
           Mean Magnitude of Frequency Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9921 -0.9453 -0.7798 -0.6122 1.0000 



STD.DEV.OF.MAGNITUDE.OF.FREQ.BODY.JERK.GYRATION 
     Position:  68 
           Standard Deviation of Magnitude of Frequency Body Jerk Gyration 

     Numeric normalized variable (no units) in range [-1:1]
            Min. 1st Qu. Median Mean 3rd Qu. Max. 
          -1.0000 -0.9926 -0.9382 -0.7922 -0.6437 1.0000 



