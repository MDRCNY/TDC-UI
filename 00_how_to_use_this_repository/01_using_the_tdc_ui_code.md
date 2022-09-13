# How to Use the TDC-UI Wage Data Repository

This page provides overarching instructions on how to use the TDC-UI repository, including how to use the SQL and R code files, how to use the synthetic data, and how to contribute to the repository. The other folders in this repository also include instruction files that are specific to the processing steps covered in that folder.

## Using the SQL and R code
The TDC-UI wage data repository contains both SQL and R code. Like all coding, there are different ways to achieve the same processing step. This repository documents the TDC team’s approach, but feel free to experiment with different approaches as well! We encourage you to modify and adapt the code for your own purposes.

### Downloading and using the files without Git
If you’d like to download the files to your environment and work on them without using Git, the entire repository can easily be downloaded from the [repository home page](https://github.com/MDRCNY/TDC-UI). Click the green “Code” button above the folders and then click the “Download ZIP” button. This will download a ZIP file to your environment with all the repository’s contents.

You can also download files individually by navigating to the file and clicking the “Raw” button above the window displaying the file. This will open the file’s raw code. You can then right-click the page and click “Save as” to save the file to your environment. Before opening the raw code, note the file’s extension (as shown in the file path above the window displaying the file in GitHub) as you will have to manually enter the file extension when saving it to your environment.

### Using the files with Git
Chapin Hall, one of our TDC partners, provides a helpful [tutorial](https://github.com/chapinhall/FSSDC/blob/master/tutorials/using_github_online.md) on how to navigate the GitHub platform and interact with the files through Git.
### Using R Markdown
The data quality checking code is provided in R Markdown. R Markdown is a file format for making dynamic documents with R. An R Markdown document is written in markdown (a plain text format) and contains chunks of embedded R code. This allows you to show your code, output, and any explanatory text you might want in one clean document. See R Studio's guide on getting started here: [R Markdown Introduction](https://rmarkdown.rstudio.com/lesson-1.html)

The [02_data_quality_checks](https://github.com/MDRCNY/TDC-UI/tree/main/02_data_quality_checks) folder contains a separate instructions file with the steps required to use the files in that particular folder. The folder also includes the full R datasets (.rda files) used in the R markdown files, so you can run the code and output in your own environment.

### Using SQL in Jupyter Notebooks
The SQL code in this repository is provided through Jupyter Notebooks (files with the extension “.ipynb”). Jupyter Notebook is a web-based interactive computing platform by IPython that allows you to integrate multiple coding languages, including Python, SQL, and R., and display both code and output. If you are interested in using Jupyter Notebook, you can download the .ipynb files and run them in your own environment. If you have another preferred platform for SQL code, you can copy and paste the code in the Jupyter Notebooks to your platform of choice and run the code there.

The [03_create_analysis_file](https://github.com/MDRCNY/TDC-UI/tree/main/03_create_analysis_file) folder contains a separate instructions file with the steps required to use the files in that folder and the subsequent create_outcomes folder. The folder also includes a SQL script to generate the simulated datasets used in the Jupyter Notebook files, so you can run the code and output in your own environment.

See Jupyter's guide on getting started with Jupyter Notebook here: [Try Jupyter](https://docs.jupyter.org/en/latest/start/index.html)

### Running and modifying the SQL/R code
If you’d like to run the repository code programs in your own environment, you will need to modify the SQL connection strings at the top of each Jupyter Notebook to route them to your SQL database and the R file paths at the top of the data quality checking R Markdown to route it to your folder. 

If you apply this code to the TANF or UI wage data you have in your own environment for actual data processing, you will have to modify additional parts. For example, to demonstrate a processing step's output, our code will sometimes perform a step only on the first few records (for example, using a SELECT TOP 10 clause in the SQL statement). When processing your own data, use a CREATE TABLE or CREATE VIEW clause instead to create a new dataset complete with the processing changes.

### Dynamic SQL code chunks
In several of the Jupyter Notebooks, you will find sections that show how to automate parts of the code we provide, so that the same processing step can be repeated over multiple quarters or years without writing code for each quarter or year. This type of SQL coding is known as Dynamic SQL. The result of dynamic SQL coding will be a query that can be run (or executed). In other words, dynamic SQL code does not generate SQL result sets, but generates SQL query code.

Jupyter Notebooks, the file type we are using to share this code, does not support dynamic SQL code. The code below therefore produces errors when it is executed within the notebooks. To use this code, you should copy and paste it into your respective SQL Server software.

## Contributing to the TDC-UI Repository
We also welcome contributions and feedback. You can use Git’s collaborative functionalities to make your contributions. Please refer to Chapin Hall’s [tutorial](https://github.com/chapinhall/FSSDC/blob/master/tutorials/using_github_online.md) for instructions on how to use these functionalities. If you are interested in contributing but are struggling to get started, please contact us at cdicode@mdrc.org. Knowing your questions will help us understand what specific barriers to address.
