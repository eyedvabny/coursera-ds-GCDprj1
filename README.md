Getting & Cleaning Data: Project 1
==================================

The goal of this project is to distill a large dataset of accelerometer readings into a tidy set of descriptive statistical properties for each measurement. The project should demonstrate the ability to process and clean-up disjointed information into an organized and presentable form.

The original raw dataset is available from UC Irvine Machine Learning Repository: [Human Activity Recognition Using Smartphone Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##Tidy Dataset
* [Tidy Data](tidy_data.tsv)

The data is in a tab-delimited format, with `180 observations` for `68 variables`. The dataset is a summary of means and standard deviations for 66 accelerometer observations recorded from Samsung Galaxy S II smartphones. There are 180 reported averages, one for each of six activities (Walking, Walking Upstair, Walking Downstairs, Sitting, Standing, Laying) for 30 test subjects. The siginificance of the measurements, explanation of variable names, and decisions behind the creation of the dataset are outlined in the [code book](#code_book) below. 

##Code Book
* [Code Book](codebook.md)

The tidy dataset is a distillation of a much large machine learning dataset spread across a variety of files. Please refer to the code book for a description of the new data and the variables.

##Processing Code
* [R code for tidying up the data](run_analysis.R)

The code is heavily commented and does not rely on any external project. Please refer to the source code for the descriptions of each step in the analysis. If the zipped dataset, `UCI HAR Dataset.zip`, is not in the working directory the code will download it from the [source site](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip). The final output is a tab-separated tidy dataset `tidy_data.tsv` in the working directory.
