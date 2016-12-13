The "Black9edata"" package loads into R the data sets that accompany "Business Statistics" ninth Edition, by Ken Black (Wiley).

The package works best with RStudio. To install the "Black9edata" package, type the following script lines in the Console window of RStudio:

 install.packages("devtools")  # if not already installed
 library(devtools)
 install_git("https://github.com/ccolonescu/Black9edata")

Now, the data should be ready to use. For instance, if you wish to use the dataset "RRSP":

 library(BlackRdata)   # loads the package in memory
 ?RRSP                 # shows dataset information
 data(RRSP)            # loads the dataset in memory
 summary(RRSP)         # calculates summary statistics
 head(RRSP)            # shows the head of the data set
