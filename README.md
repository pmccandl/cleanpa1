
Unpack the data to the same directory as the script run_analysis.R

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Run the script with the working directory set to the location of the script

The following describes what the scipt does step by step:

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


