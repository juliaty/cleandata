# Getting-and-Cleaning-Data

####Below are the steps to create a tidy dataset from "UCI HAR Dataset"
1. Load files from "UCI HAR Dataset"
2. Row Bind (rbind) the test data with the pair training data (e.g: X_test.txt with X_train.txt, Y_test.txt with Y_train.txt and subject_test.txt with subject_train.txt)
3. then give header name that was taken from "features.txt"
4. combine all with cbind (column binding)
5. select only field that consist of mean and standard deviation
6. change the activity from id to activity label from activity_labels.txt
7. gather all the measurement into one column called variable, and another column consist of the value
8. separate the measurement name into 3 columns: "AnalysisType","Statistic","Axis"
9. group the data, then do the summarize to get the average of each variable for each activity and each subject
