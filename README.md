# Course Project: Getting and Cleaning Data

The files `run_analysis.R`, `CodeBook.md`, and `tidyData.txt` are for the 
Johns Hopkins University "Getting and Cleaning Data" Coursera course project.

The `run_analysis.R` file executes the following steps:

  1. Download the dataset if it is not already in the working directory
  2. Load the feature and activity labels
  3. Load the training and test datasets, then merge them
  4. Retain only the data set columns that report the mean or standard deviation of a value
  5. Load the activity and subject data for each dataset, and merge them
  6. Merge the two datasets
  7. Convert the activity and subject columns into factors
  8. Create a tidy dataset that reports the average (mean) value for each variable for each subject-activity pair
  9. Write the tidy data set to the output file `tidyData.txt`

The final output is saved in the file `tidyData.txt`.  

The `CodeBook.md` file contains a description of the values and labels in the `tidyData.txt` output file.
