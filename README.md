# salesSample - Python, SQL, Tableau Practice
Tableau practice

## Table of Contents
* [General Info](#general-info)
* [Business Questions](#business-questions)
* [Repo Contents](#repo-contents)
* [Possible To Do's](#possible-to-do's)
* [Data Citation](#data-citation)

## General Info
This project seeks to answer a few business questions on sales data and to visualize/share the results with Tableau.  The data was downloaded from [kaggle](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv), cleaned with pandas, and stored on a MySQL server for future use. The tableau visualization can be found [here](https://public.tableau.com/app/profile/zade.alfalah/viz/salesSample_16800076232120/salesSampleDashboard) 

## Business Questions
1. Revenue breakdown by Country
2. Revenue breakdown by year/month
3. Top 5 customers by revenue/sales quantity
4. Top 5 salespeople by revenue/sales quantity
5. Top 5 products by revenue


## Repo Contents
[salesSample.ipynb](https://github.com/zadealfalah/salesSample/blob/main/salesSample.ipynb) shows the reading in and basic EDA of our data.  The data was saved to csv for future use.  This cleaned csv was also put in to a MySQL server.

[data](https://github.com/zadealfalah/salesSample/tree/main/data)
 - [getData.sql](https://github.com/zadealfalah/salesSample/blob/main/data/getData.sql) has the SQL code to create the table in MySQL.  The table is created to conform to the original data.  
 - sales_data_sample.csv is just the original csv file from kaggle.  Small enough to upload and include.
 - salesSampleCleaned.csv is the csv output from salesSample.ipynb
 

## Possible To Do's
- Clean up tableau vis.  It looks nice in tableu itself but things are off-centered in the public view.
- - Find larger sales dataset, preferably one with dirtier data 
  - Assuming a larger dataset is found, do ETL with SQL

## Data Citation
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv
