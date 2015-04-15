# Purpose
The purpose of the run_analysis.R script is to prepare a separate data set containing data collected from the accelerometers from the Samsung Galaxy S smartphone so that it can be used for later analysis.

# Using the Script
* The script should reside in your R working directory.
* The data for the script should be downloaded from [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and also unzipped in the your working directory. The name of the data folder should be **UCI HAR Dataset**
* This script makes use of the package **dplyr** and it should be installed prior to running to script.

# Script Details
The script performs the following tasks:
* Loads the library dplyr.
* Creates a function to camel casing the column names.
* Read the test and training subjects data into the variable allSubjects.
* Read the test and training labels into the variable allLabels .
* Read the test and train set into the variable allData.
* Read features and then subset allData by features. The scripts selects only the measurements on the mean and standard deviation for each measurement in allData. This is done by using regular expressions. 
* Clean the column names in allData to remove all spaces and punctuations and subsequently camel casing it.
* Combines the Subjects (allSubjects), Activities (allLabels) and Features (allData) into a single dataset and store it in the variable allData.
* Reads the class labels and their activity name and store them in the variable activityLabel.
* Merge the activityLabel and allData by ActivityID
* Reorder the columns for easy reference by moving SubjectID and Activity to the first 2 columns and dropping ActivityID
* Summarise allData using the mean function by SubjectID and Activity and store them in a variable aggData
* Write aggData to the working directory with the file name submission.csv

_The CodeBook.md should be referenced for details on the variables in **finalData**_