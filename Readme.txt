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

IMPORTANT: Only the Database files have a description; therefore, you will not see the other files (Cases and Problems) on the documentation page in RStudio. However, all about 400 files are in this package.
Here is a list of R names the Case files: CaseCh2, CaseCh3, CaseCh9, CaseCh11Q1, CaseCh11Q2, CaseCh11Q3, CaseCh12Cost, CaseCh12Sales, CaseCh13Q1, CaseCh13Q2, CaseCh14Q1, CaseCh14Q2, CaseCh15Q1, CaseCh15Q2, CaseCh16Price, CaseCh16Sex, CaseCh17Q1, and CaseCh17Q2.
A Problems data file has a name formed by the lower-case letter p immediately(no blank) by the problem number, such as p3.8, p12.13, or p8.11. There are 342 "Problems" data files in this package.

