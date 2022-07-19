# How to Use the TDC-UI Wage Data Repository

This page provides overarching instructions on how to use the TDC-UI repository, including how to use the SQL and R code files, how to use the synthetic data, and how to contribute to the repository. The other folders in this repository also include instruction files that are specific to the processing steps covered in that folder.

## Using the SQL and R code
The TDC-UI wage data repository contains both SQL and R code. Like all coding, there are different ways to achieve the same processing step. This repository documents the TDC team’s approach, but feel free to experiment with different approaches as well! We encourage you to modify and adapt the code for your own purposes.

### Downloading and using the files without Git
If you’d like to download the files to your environment and work on them without using Git, the entire repository can easily be downloaded from the [repository home page](https://github.com/MDRCNY/TDC-UI). Click the green “Code” button above the folders and then click the “Download ZIP” button. This will download a ZIP file to your environment with all the repository’s contents.

You can also download files individually by navigating to the file and clicking the “Raw” button above the window displaying the file. This will open the file’s raw code. You can then right-click the page and click “Save as” to save the file to your environment. Before opening the raw code, note the file’s extension (as shown in the file path above the window displaying the file in GitHub) as you will have to manually enter the file extension when saving it to your environment.

### Using the files with Git
For instructions on how to navigate the GitHub platform and interact with the files through Git, please see the using_github tutorial included in this folder. 

### Using R Markdown
The data quality checking code is provided in R Markdown. R Markdown is a file format for making dynamic documents with R. An R Markdown document is written in markdown (a plain text format) and contains chunks of embedded R code. This allows you to show your code, output, and any explanatory text you might want in one clean document. See R Studio's guide on getting started here: [R Markdown Introduction](https://rmarkdown.rstudio.com/lesson-1.html)

The data_quality_checks folder contains a separate instructions file with the steps required to use the files in that particular folder. The folder also includes the full R datasets (.rda files) used in the R markdown files, so you can run the code and output in your own environment.
