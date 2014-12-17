
tidydata.txt summarizes the averages of the mean and standard deviation feature vectors by subject and activity

There were 30 Subjects and 6 Activities:

These describe the Activities:

[1] "walking"            "walking_upstairs"   "walking_downstairs" "sitting"            "standing"          
[6] "laying"

These are the mean and standard feature vectors that are included in the tidydata.txt file

 [1] "tbodyaccmeanx"            "tbodyaccmeany"            "tbodyaccmeanz"            "tbodyaccstdx"            
 [5] "tbodyaccstdy"             "tbodyaccstdz"             "tgravityaccmeanx"         "tgravityaccmeany"        
 [9] "tgravityaccmeanz"         "tgravityaccstdx"          "tgravityaccstdy"          "tgravityaccstdz"         
[13] "tbodyaccjerkmeanx"        "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"        
[17] "tbodyaccjerkstdy"         "tbodyaccjerkstdz"         "tbodygyromeanx"           "tbodygyromeany"          
[21] "tbodygyromeanz"           "tbodygyrostdx"            "tbodygyrostdy"            "tbodygyrostdz"           
[25] "tbodygyrojerkmeanx"       "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"       
[29] "tbodygyrojerkstdy"        "tbodygyrojerkstdz"        "tbodyaccmagmean"          "tbodyaccmagstd"          
[33] "tgravityaccmagmean"       "tgravityaccmagstd"        "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"      
[37] "tbodygyromagmean"         "tbodygyromagstd"          "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"     
[41] "fbodyaccmeanx"            "fbodyaccmeany"            "fbodyaccmeanz"            "fbodyaccstdx"            
[45] "fbodyaccstdy"             "fbodyaccstdz"             "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"       
[49] "fbodyaccjerkmeanz"        "fbodyaccjerkstdx"         "fbodyaccjerkstdy"         "fbodyaccjerkstdz"        
[53] "fbodygyromeanx"           "fbodygyromeany"           "fbodygyromeanz"           "fbodygyrostdx"           
[57] "fbodygyrostdy"            "fbodygyrostdz"            "fbodyaccmagmean"          "fbodyaccmagstd"          
[61] "fbodybodyaccjerkmagmean"  "fbodybodyaccjerkmagstd"   "fbodybodygyromagmean"     "fbodybodygyromagstd"     
[65] "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd"  "subject"                  "activity"                
 

The following describes the modified raw data that was used to create tidydata.txt
Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 



The following describes what the step by step process of how the original data was modified:

# read in the feature vector labels

# read in the training and test feature vector results for each test

# find the mean and std dev variables

# I decided to remove the meanFreq data since we supposedly only need the means and standard deviatiion of each variable
# this part wasn't really described very clearly in the instructions, so hopefully either way is ok

# read in the subject lists

# read in the activity data

# add the subject and activity data to the mean and std dev data to create the first tidy data set

# calculate the means (averages) of each variable in the tidydata set based on subject and activity
  
# since tapply outputs a mean table of activity vc subject, have to rearrange into big columns 


# substitute the actual activity names in lower case

# this will add back the subject and activity names to the last two columns of the data set 


# add the feature vector column names in lower case

# write the result out to a table


