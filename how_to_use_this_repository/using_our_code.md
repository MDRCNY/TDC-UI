# Overview of our repository
This repository contains a series of SQL code programs and one R code program to help administrators and researchers check their UI data, link it with TANF data, and process the data to create employment and earnings outcomes. The code is split up into separate folders:
* The data_quality_checks folder contains example R code that is commonly used to check whether the UI data you have received looks as expected, and code to address quality issues that might arise. 
* The create_analysis_file and create_outcomes folders contain SQL code you can use to link and restructure your data, and create common employment and earnings outcomes. These files are prefixed with numbers to indicate the order in which you should follow the code. 

## Using the Jupyter Notebooks
Jupyter notebooks are a...
The file type is .ipynb

### Using our Synthetic Data

### Modifying the SQL Server Connection

### Modifying the SQL Statements
To demonstrate output, our code will sometimes perform a processing step only on the first few records (using a SELECT TOP 10 clause in the SQL statement, for example). When processing your own data, use a CREATE TABLE or CREATE VIEW clause instead to create a new dataset complete with the processing changes.

### Dynamic SQL code chunks

## Using R Markdown
R Markdown is a file format for making dynamic and easy-to-read documents with R. An R Markdown document is written in markdown (a plain text format) and contains chunks of embedded R code. This allows you to show your code, output, and any explanatory text you might want in one clean document.
See R Studio's guide on getting started here: [R Markdown Introduction](https://rmarkdown.rstudio.com/lesson-1.html)

The [data_quality_checks folder](https://github.com/MDRCNY/TDC-UI/tree/main/data_quality_checks) contains an R Markdown with R code with common checks performed on UI data. The folder contains a separate [instructions file](https://github.com/MDRCNY/TDC-UI/blob/main/data_quality_checks/instructions.md) with the steps required to use the files in that particular folder.
