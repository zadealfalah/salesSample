# salesSample - Python, SQL, Tableau
Showcasing sales analysis and Tableau visualization

![img](https://github.com/zadealfalah/salesSample/blob/main/data/salesDashboard.png)

## Table of Contents
* [General Info](#general-info)
* [Repo Contents](#repo-contents)
* [Possible To Do](#possible-to-do)
* [Data Citation](#data-citation)

## General Info
This project seeks to answer a few business questions on sales data and to visualize/share the results with Tableau.  The data was downloaded from [kaggle](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv), cleaned with pandas, and stored on a MySQL server for future use. The tableau visualization can be found [here](https://public.tableau.com/app/profile/zade.alfalah/viz/salesDashboard_16805458941440/Dashboard1) 

Unfortunately it was difficult to find truly dirty or large sales datasets, so the data cleaning portion of this project is quite small.  Future work will find a larger dataset and perform a more thorough analysis.

## Repo Contents
[salesSample.ipynb](https://github.com/zadealfalah/salesSample/blob/main/salesSample.ipynb) shows the reading in and basic EDA of our data.  The data was saved to csv for future use.  This cleaned csv was also put in to a MySQL server which Tableau uses to automatically update the visualizations. 

[data](https://github.com/zadealfalah/salesSample/tree/main/data)
 - [getData.sql](https://github.com/zadealfalah/salesSample/blob/main/data/getData.sql) has the SQL code to create the table in MySQL.  The table is created to conform to the original data.  
 - sales_data_sample.csv is just the original csv file from kaggle.  Small enough to upload and include.
 - salesSampleCleaned.csv is the csv output from salesSample.ipynb
 

## Possible To Do
- Find larger sales dataset, preferably one with dirtier data 
- Assuming a larger dataset is found, do ETL with SQL

## Data Citation
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv
