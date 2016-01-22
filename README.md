
###[Coursera - JHU] Getting and Cleaning Data (Data Science Specialization)
###Course Project Assignment Submission (Yann K)
***
###Contents
1. Project Summary
2. Repository Files list
3. Functions and Usage

***
###Project Summary

Wearable computing is one of the most popular areas in data science as companies are racing to develop advanced algorithms. The purpose of this project is to clean the data collected from experiments carried out with a group of 30 volunteers performing a series of activities while wearing a smartphone. The activities performed were: Walking, Walking upstairs, Walking downstairs, Sitting, Standing, Laying.

Reference: [Project Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

***

###Files List
* README.md: This file
* CookBook.md: Variables and data description
* run_analysis.R: Cleaning data script
* gcdw4_ds.zip: Copy of the archive file to be cleaned up by the run_analysis.R script. An original copy of the archive can be found at [Assignment data link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

***

###Functions and Usage
####Installation
```
source("run_analysis.R")
```

####Dependencies
```
library(readr)
library(plyr)
```


####Usage
```
# Cleans the dataset from the measurement archive and returns a dataset
tidy.df<-run_analysis()
```

####Functions
#####run_analysis()
######Parameters
None
######Steps
1. Unzip the __gcdw4_ds.zip__ archive into the current directory
2. Get the training and testing data sets recorded from the smartphone's sensors using the function ```fwf2df_list()```
3. Get the list of features 
4. Get the training and testing features vectors using the function ```fwf2df_list()```
5. Get the names of the activities with their corresponding codes
6. Get the list of activities performed and the related subjects identifiers
7. Merge everything in a common dataframe
8. Keep only the mean and the standard deviations measurements
9. Standardize the names of the common dataframe
10. Build a summary dataframe of the average of all the means and standard deviation measurements collected in the features data grouped by activities and subjects
11. Standardize the names of the summary dataframe
12. Write the dataframe into the file __gcdw4_summary.txt__ in the working directory
13. return the common dataframe from step #8

#####fwf2df_list()
######Parameters
* file.list: list of filepaths to be processed
* col.width: fixed width of the columns in the files
* col.number: number of the columns in the files
* col.names: list of columns names - Default = NULL

######Steps
For all the files in the file list

1. Extract the data from the current file into a dataframe using ```readr::read_fwf()```
2. If a list of column names is provided, rename the columns of the dataframe
3. Standardize the names of the dataframes by removing train or test prefix for the future merge 
4. Return a list of dataframes

####Output
```run_analysis()``` returns a data frame with the following column names
* mode: Indicates wether the data were collected during a training or a testing session. Values in (TEST, TRAIN)
* subject: Subject unique identifier. Values in (1..30)
* activity: Indicates the activity when the data were collected. Values in (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* A series of mean and standard deviations of all the measurements collected. Please refer to the CookBook for further details.
* Creates a gcdw4.summary.txt in the working directory with the average of each measurement for each activity and each subject. Please refer to the CookBook for further details.

####Error
```run_analysis()``` returns an error if the file __gcdw4_ds.zip__ is not present in the working directory.


