# Instructions for Creating Outcomes from the Analysis File 

Now that you’ve linked and summarized the TANF sample definition and the UI wage data files to one record per person per quarter, you can use the resulting analysis file (UIQuarterlyMeasuresV) to create some standard employment and earnings outcomes. This folder will walk through the creation of both calendar measures and relative measures (relative to their program start date) at the quarterly and annual level. Relative measures are necessary because people may have begun their program participation at different points during this period, making calendar-based measures not comparable across all people. 

This folder will also walk through the creation of employment spell measures, which calculate the duration of an individual’s employment or unemployment, and employer-based measures, which use employer IDs to calculate how many employers the individual worked for, the earnings for each employer, and employer trends.

## Running and Modifying the Jupyter Notebook code programs

A few reminders:
 1. To run these notebooks in your own environment, you will need to modify the SQL connection string at the top of each Jupyter Notebook, which currently reads "mssql+pyodbc://@TDI". This DSN (Data Source Name) string provides the Python driver (pyodbc) needed to connect Python and SQL, and also provides information that is specific to the TDC-UI team’s environment, including the SQL Server (in the TDC-UI team’s case, MSSQL) and the database where the TDC-UI team’s data is stored (TDI). Replace these string components with your own DSN connection information to route the Jupyter Notebook to your SQL server and database. 
 2. If you apply this code to real TANF or UI wage data for actual data processing, you will have to modify additional parts. For example, to demonstrate a processing step's output, our code will sometimes perform a step only on the first few records (for example, using a SELECT TOP 10 clause in the SQL statement). When processing your own data, use a CREATE TABLE or CREATE VIEW clause instead to create a new dataset complete with the processing changes.

## A note of caution about dynamic SQL code chunks in Jupyter Notebooks

In several of the Jupyter Notebooks in this folder, you will find sections that show how to automate parts of the code we provide, so that the same processing step can be repeated over multiple quarters or years without writing code for each quarter or year. This type of SQL coding is known as Dynamic SQL. The result of dynamic SQL coding will be a query that can be run (or executed). In other words, dynamic SQL code does not generate SQL result sets, but generates SQL query code.

**Jupyter Notebooks, the coding platform we are using to share this code, does not support dynamic SQL code. The code below therefore produces errors when it is executed within the notebooks. To use this code, you should copy and paste it into your respective SQL Server software.**
