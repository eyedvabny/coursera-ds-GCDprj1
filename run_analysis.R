# Download the data zip if not available
if (!file.exists("UCI HAR Dataset.zip")) {
  tmp <- tempfile(fileext = ".zip")
  download.file("http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip", tmp, quiet = TRUE)
  unzip(tmp)
  unlink(tmp)
}else{
  unzip("UCI HAR Dataset.zip")
}

# Rename the folder to avoid spaces
file.rename("UCI HAR Dataset","raw_data")

# The data is separated into six files amongst two groups:
# test ~= 30% of the data
#   X_test.txt = accelerometer data for features (cols) per user+activity (rows)
#   y_test.txt = 1xN vector of activity labels
#   subject_test.txt = 1xN vector of subject IDs
# train ~= 70% of the data
#   same file breakdown as for test

# Load in the individual files
train_dat<-read.table("raw_data/train/X_train.txt",header=F)
train_act<-read.table("raw_data/train/y_train.txt",header=F)
train_sub<-read.table("raw_data/train/subject_train.txt",header=F)

test_dat<-read.table("raw_data/test/X_test.txt",header=F)
test_act<-read.table("raw_data/test/y_test.txt",header=F)
test_sub<-read.table("raw_data/test/subject_test.txt",header=F)

# Merge the files into one whole dataset
train <- cbind(train_sub,train_act,train_dat)
test<- cbind(test_sub,test_act,test_dat)
act_data <- rbind(train,test)

# We don't need the partial data
rm(train,train_act,train_sub,train_dat,test,test_act,test_sub,test_dat)

# The feature column labels are listed in features.txt
feat_names <- read.table("raw_data/features.txt",header=F,
                         row.names=1,colClasses = 'character')

# The first column is now the subject
# The second column is the activity
# The other 561 columns are in feat_names
colnames(act_data)<- c('Subject','ActivityID',feat_names$V2)
rm(feat_names)

# Drop the columns that don't contain mean or std
# Make sure to keep cols 1 and 2 since they contains the labels
cols_to_keep <- grep("mean\\(\\)|std\\(\\)",colnames(act_data))
cols_to_keep <- c(1,2,cols_to_keep)
act_data <- act_data[cols_to_keep]

# Group by subject and activity and calculate the mean in each group
# Yields a mean of means or mean of stds but that's the goal
act_data <- aggregate(. ~ Subject + ActivityID,act_data,mean)

# Activity labels are in activity_labels.txt
act_names <- read.table("raw_data/activity_labels.txt",header=F,
                        colClasses=c('numeric','character'),
                        col.names=c('ActivityID','Activity'))

# Rename ActivityID with proper Activity
act_data <- merge(act_data,act_names,by='ActivityID')
rm(act_names)

# Now this is the only truly manual part: column arrangement
new_col_order <- c(2,69,3,6,4,7,5,8,9,12,10,13,11,14,15,18,16,19,17,20,
                   21,24,22,25,24,26,27,30,28,31,29,32,33:42,43,46,44,47,
                   45,48,49,52,50,53,51,54,55,58,56,59,57,60,61:68)
act_data <- act_data[new_col_order]

# We have our tidy data set! All that's left is to save it.
write.table(act_data,"tidy_data.tsv",row.names=F)