#1. Merges the training and the test sets to create one data set.C:/Users/bes

#read train and test (X)
train <- read.table("train/X_train.txt")
test <- read.table("test/X_test.txt")
#merge to one dataframe
data_X <- rbind(train, test)

#read train and test (y)
train <- read.table("train/y_train.txt")
test <- read.table("test/y_test.txt")
#merge to one dataframe
data_y <- rbind(train, test)

#read train and test (subject)
train <- read.table("train/subject_train.txt")
test <- read.table("test/subject_test.txt")
#merge to one dataframe
data_subject <- rbind(train, test)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#colnames come from features.txt
features <- read.table("features.txt")
names(data_X)<-features[,2]
#filters only the columns with columnnames -mean( or -std( 
data_X_filteredColumns<-data_X[,grep("-mean\\(|-std\\(", names(data_X))]

# 3. Uses descriptive activity names to name the activities in the data set
#read lookup-table
activities <- read.table("activity_labels.txt")
#new column with acticity_label
data_y$activity <- activities[data_y[,1], 2]


# 4. Appropriately labels the data set with descriptive activity names. 
#colname for subject-column
names(data_subject) <- "subject"
#one dataset with all three dataframes
dataset <- cbind(data_subject, "activity"=data_y$activity, data_X_filteredColumns)
write.table(dataset, "merged_clean_data.txt")

#5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# recast 
library(plyr)
result<-ddply(dataset, .(activity, subject), function(x) colMeans(x[,3:68]))   

write.table(result, "data_set_with_the_means.txt")

