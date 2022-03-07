# Steps to follow to use the UI data quality checking R Markdown

## Required Files
We recommend you put the following files the same folder before you run. If you are a more advanced R user, you may choose the setup of your preference.

* __data_quality_checks.Rmd__: The key Rmarkdown file that generates a Word Document, Html or PDF. A knitted html output usually looks best, followed by PDF.
* __functions.R__: This file contains an R script to create our custom summary table.
* __uidata1_april.rda__: The old data file.
* __uidata1_july.rda__: The new, updated data file.

## Steps to run the files
1) Save all the files in the same folder on your machine.
2) Install the following R packages  before opening the .Rmd (markdown) file. You will not be able to run the markdown without these packages. You can execute the following commands in the R console. You only have to do this once. If you have already installed these packages, you can skip this step.
    * install.packages(“tidyverse”)
    * install.packages(“janitor”)
    * install.packages(“flextable”)
    * install.packages(“scales”)  

3) Open __data_quality_checks.Rmd__ and change the directory paths to the ones on your machine. Those are at:
    * __Line 70__ to read in the custom functions.R
      * Please rewrite to insert where you save the file at:
        * Source(“yourdirectory/functions.R”)
    * __Line 74__ to specify where your data files are stored
      * Please rewrite to insert where you save the files at 
        * usedir <- “/yourdirectory/”
    * __Line 87__ to specify where to save the checked and modified data file at
      * Please rewrite to insert where you save the files at
        * savedir1 <- “/yourdirectory/”
 
## Ready to Run
* At this point, you should be ready to run the code chunks in the markdown.
* You can run chunk by chunk to play with the code and see what each chunk does.
* If you want to see a knitted output (i.e Word or PDF or HTML), please click the knit button and choose the output you desire.

