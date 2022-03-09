# Overview of our repository
This repository contains a series of SQL and R code programs to help administrators and researchers check their UI data, link it with TANF data, and process the data to create employment and earnings outcomes. Like all coding, there are many different ways to achieve the same processing step. We show our approach, but feel free to experiment with different approaches as well! The code is split up into separate folders:
* The [data_quality_checks](https://github.com/MDRCNY/TDC-UI/tree/main/data_quality_checks) folder contains example R code that is commonly used to check whether the UI data you have received looks as expected, and code to address quality issues that might arise. 
* The [create_analysis_file](https://github.com/MDRCNY/TDC-UI/tree/main/create_analysis_file) and [create_outcomes](https://github.com/MDRCNY/TDC-UI/tree/main/create_outcomes) folders contain Jupyter notebooks with SQL code you can use to link and restructure your data, and create common employment and earnings outcomes. These files are prefixed with numbers to indicate the order in which you should follow the code. 

## Using the Jupyter Notebooks
Jupyter notebooks (.ipynb files) are a web-based interactive computing platform that allows you to integrate multiple coding languages, including Python, SQL, and R. We use these notebooks to share SQL code and interactive output. If you are familiar with or interested in using Jupyter notebooks, you can download the .ipynb files and run them in your own environment. If you have another preferred platform for SQL code, you can copy and paste the code in the Jupyter notebooks to your platform of choice and run the code there.

See Jupyter's guide on getting started with Jupyter notebooks here: [Try Jupyter](https://docs.jupyter.org/en/latest/start/index.html)

### Using our Synthetic Data
To demonstrate the various checks and processing steps, we created a synthetic TANF cross-reference file and UI data file. If you'd like to run the Jupyter notebooks in your own environment, you should download the synthetic datasets stored in the data folder and upload them to your own SQL database. You will then have to modify the SQL connection strings at the top of each Jupyter notebook to route them to your SQL database. 

### Modifying the SQL Statements
To demonstrate a processing step's output, our code will sometimes perform a step only on the first few records (using a SELECT TOP 10 clause in the SQL statement, for example). When processing your own data, use a CREATE TABLE or CREATE VIEW clause instead to create a new dataset complete with the processing changes.

### Dynamic SQL code chunks
In several of the Jupyer notebooks, you will find sections that show how to automate parts of the code we provide, so that the same processing step can be repeated over multiple quarters or years without writing code for each quarter or year. This type of SQL coding is known as Dynamic SQL. The result of dynamic SQL coding will be a query that can be run (or executed). In other words, dynamic SQL code does not generate SQL result sets, but generates SQL query code.

Jupyter Notebooks, the file type we are using to share this code, does not support dynamic SQL code. The code below therefore produces errors when it is executed within the notebooks. To use this code, you should copy and paste it into your respective SQL Server software.

## Using R Markdown
R Markdown is a file format for making dynamic and easy-to-read documents with R. An R Markdown document is written in markdown (a plain text format) and contains chunks of embedded R code. This allows you to show your code, output, and any explanatory text you might want in one clean document.
See R Studio's guide on getting started here: [R Markdown Introduction](https://rmarkdown.rstudio.com/lesson-1.html)

The [data_quality_checks](https://github.com/MDRCNY/TDC-UI/tree/main/data_quality_checks) folder contains an R Markdown with R code with common checks performed on UI data. The folder contains a separate [instructions file](https://github.com/MDRCNY/TDC-UI/blob/main/data_quality_checks/instructions.md) with the steps required to use the files in that particular folder.
