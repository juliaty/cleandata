#Load all the data from files
filedir <- "UCI HAR Dataset\\"

activity_labels <- read.table(paste0(filedir,"activity_labels.txt"))
features <- read.table(paste0(filedir,"features.txt"))

subject_test <- read.table(paste0(filedir,"test\\subject_test.txt"))
X_test <-  read.table(paste0(filedir,"test\\X_test.txt"))
Y_test <-  read.table(paste0(filedir,"test\\Y_test.txt"))

subject_train <- read.table(paste0(filedir,"train\\subject_train.txt"))
X_train <-  read.table(paste0(filedir,"train\\X_train.txt"))
Y_train <-  read.table(paste0(filedir,"train\\Y_train.txt"))

## 1. Merges the training and the test sets to create one data set.
x_all <- rbind(X_test,X_train) 
names(x_all)<- paste0(features$V2,"_",features$V1)

y_all <- rbind(Y_test,Y_train)
names(y_all)<-"Activity" 

subject_all <- rbind(subject_test,subject_train)
names(subject_all)<-"Subject" 

data <- cbind(subject_all,y_all,x_all)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
library(dplyr)
data <- tbl_df(data)
data_mean_std <- select(data,Subject,Activity,contains("mean()"),contains("std()"))

## 3. Uses descriptive activity names to name the activities in the data set
data_mean_std <- mutate(data_mean_std,Activity=factor(Activity,labels=activity_labels$V2))

## 4. Appropriately labels the data set with descriptive variable names. 
library(tidyr)
data_tidy1 <- data_mean_std %>% gather(variable,value,-(Subject:Activity)) %>% 
              separate(variable,c("variable","unused"),sep="_")  %>% 
              select(-unused) %>% 
              separate(variable,c("AnalysisType","Statistic","Axis"),extra="drop")
   
## 5. From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
data_tidy2 <- data_tidy1 %>% group_by(Subject, Activity,AnalysisType,Statistic,Axis) %>%
              summarize(Average = mean(value))

## write data from step 5 to file
write.table(data_tidy2,"tidy_dataset.txt",row.name=FALSE)
 


