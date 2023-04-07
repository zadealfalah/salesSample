# salesSample - Python, SQL, Tableau
Showcasing sales analysis and Tableau visualization

![img](https://github.com/zadealfalah/salesSample/blob/main/kaggleSalesData/data/salesDashboard.png)

## Table of Contents
* [General Info](#general-info)
* [kaggleSalesData Tableau](#kagglesalesdata-tableau)
* [onlineRetail Analysis](#onlineretail-analysis)
* [Possible To Do](#possible-to-do)
* [Data Citation](#data-citation)

## General Info
This project is broken up into two parts - kaggleSalesData and onlineRetail2.  This was done because it was difficult to find a large sales dataset with messy data.  Originally, there was only the smaller, cleaner dataset from Kaggle which was used to showcase some Tableau.  Now, kaggleSalesData is used to display some visualizations in Tableau and onlineRetail2 is used to display some analysis with Python / MySQL.  

The Tableau visualization can be found [here](https://public.tableau.com/app/profile/zade.alfalah/viz/salesDashboard_16805458941440/Dashboard1)


## kaggleSalesData Tableau
[salesSample.ipynb](https://github.com/zadealfalah/salesSample/blob/main/salesSample.ipynb) shows the reading in and basic EDA of our smaller, cleaner data.  The data was saved to csv for future use.  This cleaned csv was also put in to a MySQL server which Tableau uses to automatically update the visualizations. The methodology for automatically updating Tableau dashboards is demonstrated in another one of my [projects](https://github.com/zadealfalah/pySheetsReddit)

[data](https://github.com/zadealfalah/salesSample/tree/main/data)
 - [getData.sql](https://github.com/zadealfalah/salesSample/blob/main/data/getData.sql) has the SQL code to create the table in MySQL.  The table is created to conform to the original data.  
 - sales_data_sample.csv is just the original csv file from kaggle.  Small enough to upload and include.
 - salesSampleCleaned.csv is the csv output from salesSample.ipynb
 
## onlineRetail Analysis
[onlineRetail.ipynb] shows the reading in, EDA, and data analysis for our larger, messier dataset.  The data is download from the UCI ML [Repository](https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#), turned into CSV files and read in to Python via Pandas.  The data is then examined for missing or junk data before being saved as both a CSV and put into a MySQL database.  Finally, analysis is done to answer some possible business questions e.g.
- What is our most commonly sold item?
- What is our total revenue?
- When did we sell the most?
- How do our sales trends look?
- Where do we sell the most?
- Where is most profitable to sell?
- Which products are sold together the most?

[data]()
- [loadData.sql]() has the SQL code to create the table in MySQL.  

## Possible To Do
- Write SQL for updating database if new data were to be introduced - .sql or via python connector?
- In onlineRetail.ipynb, change invoice to strip 'c' for cancelled orders, add as a flag, convert dtype to int.

## Data Citation
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv

https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#
