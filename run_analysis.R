# load the required packages
library(dplyr)

# Creates a function to camel casing the column names
camelCase<- function(features){
        fx <- strsplit(features," ")
        fx <- sapply(fx, FUN=function(x)
                paste0(toupper(substring(x,1,1)),substring(x,2,nchar(x))))
        fx <- sapply(fx, function(x) paste(x,collapse=""))
        fx
}

# Read the test and training subjects data into the variable allSubjects
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
allSubjects <- rbind(subjectTest,subjectTrain)
colnames(allSubjects) <- "SubjectID"

# Read the test and training labels into the variable allLabels 
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
allLabels <- rbind(testLabel,trainLabel)
colnames(allLabels) <- "ActivityID"

# Read the test and train set into the variable allData
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
allData <- rbind(testData,trainData)

# Read features and then subset allData by features 
features <- read.delim("./UCI HAR Dataset/features.txt", header=FALSE,sep=" ")
features <- features$V2
names(allData) <- features
allData <- allData[grep("((mean).*\\(\\))|((std).*\\(\\))",
                        names(allData), 
                        ignore.case=TRUE)]

# Clean the column names
sfeatures <- names(allData)
sfeatures <- gsub("[[:punct:]]"," ",sfeatures)
sfeatures <- gsub(" {2,}", " ",sfeatures)
sfeatures <- camelCase(sfeatures)
names(allData) <- sfeatures

# Bind the subjects, labels and data
allData <- cbind(allSubjects,allLabels,allData)

# Reads the class labels and their activity name
activityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activityLabel) <- c("ActivityID","Activity")

# Name the label column as ActivityID and merges it with the activity name
allData <- merge(allData,activityLabel,by.x="ActivityID",by.y="ActivityID")

# Reorder the columns for easy reference
aggData <- allData[,c(2,82,3:81)]

aggData <- aggData %>%
                group_by(SubjectID, Activity) %>% 
                summarise_each(funs(mean))

# Write the data set
write.table(aggData,"submission.txt")
