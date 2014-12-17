# read in the feature vector labels
featureLabels <- read.table("UCIHARDataset/features.txt", header=FALSE)

# read in the training and test feature vector results for each test
train <- read.table("UCIHARDataset/train/X_train.txt", header=FALSE, col.names=featureLabels$V2 )
test <- read.table("UCIHARDataset/test/X_test.txt", header=FALSE, col.names=featureLabels$V2 )

newd<-rbind(train,test)

# find the mean and std dev variables
meancol1 <- grep("mean",featureLabels$V2 )
stdevcol <- grep("std",featureLabels$V2 )

# I decided to remove the meanFreq data since we supposedly only need the means and standard deviatiion of each variable
# this part wasn't really described very clearly in the instructions, so hopefully either way is ok
meancol2 <- grep("meanFreq",featureLabels$V2 )
meancol <-  setdiff(meancol1,meancol2)
coldata <- sort(c(meancol, stdevcol))

meanstddata <- newd[,coldata]

# read in the subject lists
trainS <- read.table("UCIHARDataset/train/subject_train.txt", header=FALSE, col.names="Subject" )
testS <- read.table("UCIHARDataset/test/subject_test.txt", header=FALSE, col.names="Subject" )

Sub <- rbind(trainS,testS)

#read in the activity data
trainA <- read.table("UCIHARDataset/train/Y_train.txt", header=FALSE, col.names="Activity" )
testA <- read.table("UCIHARDataset/test/Y_test.txt", header=FALSE, col.names="Activity" )

Act <- rbind(trainA,testA)

# add the subject and activity data to the mean and std dev data to create the first tidy data set
tidydata<-cbind(meanstddata, Sub, Act)

# calculate the means (averages) of each variable in the tidydata set based on subject and activity
b <- data.frame(row.names=NULL)

for(i in 1:66) {
  a <- data.frame(row.names=NULL)
  a<-tapply(tidydata[,i], list(tidydata$Subject,tidydata$Activity), mean, simplify=FALSE) 
  
  # since tapply outputs a mean table of activity vc subject, have to rearrange into big columns 
  for(j in 1:6){
    for(k in 1:30) {
      b[k+(j-1)*30,i]<-a[k,j]
    }
  }
}

# substitute the actual activity names in lower case
activity <- tolower(c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# this will add back the subject and activity names to the last two columns of the data set 
for(j in 1:6){
  for(k in 1:30) {
   
    b[k+(j-1)*30,67]=k
    b[k+(j-1)*30,68]=activity[j]
  }
}

# add the feature vector column names in lower case
names(b) <- tolower(gsub("\\.","",names(tidydata)))

# write the result out to a table
write.table(b, file="tidydata.txt", row.name=FALSE)