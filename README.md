## Getting-and-Cleaning-Data---Course-Project Repository


The repository contains 4 files:

1. run_analysis.R
2. CodeBook.md
3. README.md
4. TidyData.txt

The code in R (performing analysis) has 5 parts:

I.The first, preparatory part loads libraries, creates data directory and downloads and unzips files.

II. The second part merges the training and the test sets (creates 3 data sets containing subjects, activities and features data).

III. The third part assigns names to variables and activities.

IV. The next, 4th part of code:
      * merges 3 sets (subject, activity, features) to create one data frame;
      * extracts only the measurements on the mean and standard deviation for each feature;
      * labels appropriately features with more descriptive variable names. 	

V. The last one creates independent tidy data set (with the average of each variable for each activity and each subject).


Detailed explanations were also placed in the program code.
