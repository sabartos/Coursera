# Coursera

##Getting and Cleaning Data - Course Project

This repo is for the end-of-course project for "Getting and Cleaning Data" in the Data Science specialization on Coursera. 
The R script run_analysis.R completes the following tasks:


###Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.
You will be required to submit:
  a tidy data set as described below
  a link to a Github repository with your script for performing the analysis, and
  a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This file explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

  Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

####You should create one R script called run_analysis.R that does the following.
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive activity names.
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


####What you find in this repository
  * CodeBook.md: information about raw and tidy data set and what script does to transform them
  * README.md: this file
  * run_analysis.R: R script to transform raw data set in a tidy one
  * data_subset_tidy: a file containing the tidy dataset



####run_analysis.R
    1. Can download the dataset via the URL 
    2. Loads all activity and feature data
    3. Reads in both the training and test datasets, extracts the relevant variables for activity and subject, while keeping only those columns with mean or standard deviation calculations and merges these datasets
    4. Creates a tidy dataset that consists of the average (mean) and standard deviation value of each variable for each subject and activity pair.
    5. Generates the tidy data set
    6. The end result is shown in the data_subset_tidy.txt.
