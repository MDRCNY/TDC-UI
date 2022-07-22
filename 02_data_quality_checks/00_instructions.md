# Instructions for the UI wage data quality checking R Markdown

## Required Files
We recommend you put the following files in the same folder before you run them. If you are an intermediate or advanced R user with a different, preferred setup, feel free to use it instead.

  * **[01_data_quality_checks.Rmd](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/01_data_quality_checks.Rmd):** The main R Markdown file with R code that generates a Word Document, Html or PDF. A knitted html output usually looks best, followed by PDF.
  * **[functions.R](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/functions.R):** This R script contains code that creates a custom function we can use to produce a summary table. The main R Markdown file (data_quality_checks.Rmd) reads this functions.R file into your environment so you can access the custom function.
  * **[uidata1_april.rda](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/uidata1_april.rda):** This is simulated data representing an older UI dataset you aim to add to and update using a more recent UI dataset.
  * **[uidata1_july.rda](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/uidata1_july.rda):** This is also simulated data, representing the more recent UI dataset you will use to update your records. 

The [common_uidata_problems_table](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/common_uidata_problems_table.pdf) is an additional resource with a summary table of the main data quality issues you might encounter in UI wage data files and how to address them. It is not required to run the code in this folder.

## Steps to run the files

1. Save all the files in this folder into a folder on your machine, either by manually downloading them as explained in the [01_using_the_tdc_ui_code](https://github.com/MDRCNY/TDC-UI/blob/main/00_how_to_use_this_repository/01_using_the_tdc_ui_code.md) page, or through Git as explained in the [02_using_github](UI/blob/main/00_how_to_use_this_repository/02_using_github.md) page.
2. Install the following R packages before opening the .Rmd (markdown) file. You will not be able to run the markdown without these packages. You can execute the following commands in the R console. You only have to do this once. If you have already installed these packages, you can skip this step.
    * install.packages(“tidyverse”)
    * install.packages(“janitor”)
    * install.packages(“flextable”)
    * install.packages(“scales”)
3. Open [01_data_quality_checks.Rmd](https://github.com/MDRCNY/TDC-UI/blob/main/02_data_quality_checks/01_data_quality_checks.Rmd) and change the directory paths to the ones on your machine. We recommend that you create separate subfolders for the original data files and for modified and updated files. Those are at:
    * **Line 67** to read in the custom functions.R
      * Please replace the placeholder text with the directory path where you saved the functions.R file: 
        * source(“/yourdirectory/functions.R”)  
    * **Line 70** to specify where your original data files are stored
      * Please replace the placeholder text with the directory path where you saved the uidata1_april.rda and uidata1_july.rda files:
        * usedir1 <- “/yourdirectory/”
    * **Line 80** to specify where to save the checked and modified data file
      * Please replace the placeholder text with the directory path where you want to save the processed file:
        * savedir1 <- “/yourdirectory/”

## Ready to Run

At this point, you should be ready to run the code chunks in the markdown. You can run chunk by chunk to play with the code and see what each chunk does. If you want to see a knitted output (i.e Word or PDF or HTML), please click the knit button at the top of the R Studio environment and choose the output you desire. We suggest knitting to HTML since certain tables in the output are quite wide. With HTML, you can widen the window to fit the tables on your screen and/or use the scrolling functionalities embedded in the tables.



