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
This project is broken up into two parts - kaggleSalesData and onlineRetail.  This was done because it was difficult to find a large sales dataset with messy data.  Originally, there was only the smaller, cleaner dataset from Kaggle which was used to showcase some Tableau.  Now, kaggleSalesData is used to display some visualizations in Tableau and onlineRetail is used to display some analysis with Python / MySQL.  Once the analysis is completed, I kaggleSalesData will be removed and the Tableau will be replaced with onlineRetail as well.

The Tableau visualization can be found [here](https://public.tableau.com/app/profile/zade.alfalah/viz/salesDashboard_16805458941440/Dashboard1)


## kaggleSalesData Tableau
salesSample.ipynb shows the reading in and basic EDA of our smaller, cleaner data.  The data was saved to csv for future use.  This cleaned csv was also put in to a MySQL server which Tableau uses to automatically update the visualizations. The methodology for automatically updating Tableau dashboards is demonstrated in another one of my [projects](https://github.com/zadealfalah/pySheetsReddit)

data
 - getData.sql has the SQL code to create the table in MySQL.  The table is created to conform to the original data.  
 - sales_data_sample.csv is just the original csv file from kaggle.  Small enough to upload and include.
 - salesSampleCleaned.csv is the csv output from salesSample.ipynb
 
## onlineRetail Analysis
retail.ipynb shows the reading in, EDA, and data analysis for our larger, messier dataset.  The data is download from the UCI ML [Repository](https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#), turned into CSV files and read in to Python via Pandas.  The data is then examined for missing or junk data before being saved as both a CSV and put into a MySQL database.  Analysis is done to answer some possible business questions e.g.
- What are our most commonly ordered items?
- What is our total revenue?
- When did we sell the most?
- How do our sales trends look over time / by country?
- Where do we sell the most?
- Where is most profitable to sell?
- What are our most profitable items? Where are they sold the most?
- How does our customer retention look?
- What items are frequently bought together?

Following this, some modeling and forecasting are done using Prophet and XGBoost.

data
- loadData.sql has the SQL code to create the table in MySQL.  
- onlneRetail.pdf has an example of a powerpoint presentation of our analysis (WIP)
- imgs has plots output from our analysis

## Possible To Do
- Add LSTM comparison for forecasting
- Writeup findings with models once LSTM and XGBoost are completed
- Add Tableau for onlineRetail once analysis is done, remove kaggleSales when done
- Update powerpoint presentation
- Write SQL for updating database if new data were to be introduced - .sql or via python connector
- Update readme with final version

## Data Citation
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv

https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#
