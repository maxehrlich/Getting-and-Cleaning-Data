#### run_analysis.R has to be in the same directory as:

the files:
+ activity_labels.txt
+ features.txt

the folders:
+ train
+ test

####requires: plyr

for aggregating with ddply

### run the script in R:
+ files in folder test and train get read and get merged
+ reads features.txt
+ labels the dataset with names from features and filters all columns wit std or mean
+ reads activity_labels.txt
+ attaches the column from activity_labels to the dataset
+ merges all datasets (cbind) and saves merged_clean_data.txt
+ aggregates this dataset with the average of each column, groupd by activity and subject
+ saves the result as data_set_with_the_means.txt
