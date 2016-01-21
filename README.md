
#Data Science Specialization
##Coursera - John Hopkins University 
###Getting and Cleaning Data 
####Course Project Assignment submission (Yann K)
***
#####Contents
1. Project Summary
2. Repository Files list
3. run_analysis.R

***
#####Project Summary

Wearable computing is one of the most popular areas in data science as companies are racing to develop advanced algorithms. The purpose of this project is to clean the data collected from experiments carried out with a group of 30 volunteers performing a series of activities while wearing a smartphone. The activities performed were:
* Walking 
* Walking upstairs 
* Walking downstairs 
* Sitting 
* Standing 
* Laying

[Project Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

***
#####Files List
* README.md: This file
* CookBook.md: Variables and data description
* run_analysis.R: Analysis script
* gcdw4_ds.zip: Copy of the archive file to be cleaned up by the run_analysis.R script. An original copy can be found at [Assignment data link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

***
#####run_analysis.R
######Usage
```{r eval=FALSE}# Cleans the dataset from the measurement archive and returns a dataset
my.tidy.dataset<-run_analysis()```
######Output
```{r eval=FALSE}run_analysis()``` returns a data frame with the following column names
* mode: Indicates wether the data were collected during a training or a testing session. Values in (TEST, TRAIN)
* subject: Subject unique identifier. Values in (1..30)
* activity: Indicates the activity when the data were collected. Values in (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* A series of mean and standard deviations of all the measurements collected. Please refer to the CookBook for the details.
* Creates a gcdw4.summary.txt in the working directory with the average of each measurement for each activity and each subject

######Error
```{r eval=FALSE}run_analysis()``` returns an error if the file gcdw4_ds.zip is not present in the working directory.


