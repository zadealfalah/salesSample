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
This project is broken up into two parts - kaggleSalesData and onlineRetail.  The former of which is used as an example of a sales Tableau dashboard while the analysis of the latter is completed.  It will be replaced once analysis is completed on onlineRetail and the new dashboard is created.

The placeholder Tableau visualization can be found [here](https://public.tableau.com/app/profile/zade.alfalah/viz/salesDashboard_16805458941440/Dashboard1)


## kaggleSalesData Tableau
salesSample.ipynb shows the reading in and basic EDA of our smaller, cleaner data.  The data was saved to csv for future use.  This cleaned csv was also put in to a MySQL server which Tableau uses to automatically update the visualizations. The methodology for automatically updating Tableau dashboards is demonstrated in another one of my [projects](https://github.com/zadealfalah/pySheetsReddit)

data
 - getData.sql has the SQL code to create the table in MySQL.  The table is created to conform to the original data.  
 - sales_data_sample.csv is just the original csv file from kaggle.  Small enough to upload and include.
 - salesSampleCleaned.csv is the csv output from salesSample.ipynb
 
## onlineRetail Analysis
[data](https://github.com/zadealfalah/salesSample/tree/main/onlineRetail/data)
- loadData.sql has the SQL code to create the table in MySQL.  
- imgs has plots output from our analysis notebook, used in our ppt presentation

[onlineRetail.pdf](https://github.com/zadealfalah/salesSample/blob/main/onlineRetail/onlineRetail.pdf)
Powerpoint presentation of our analysis saved as a pdf

[retail.ipynb](https://github.com/zadealfalah/salesSample/blob/main/onlineRetail/retail.ipynb) 
The reading in, EDA, and data analysis for our full dataset.  The [data](https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#) is downloaded from the UCI ML Repository, turned into CSV files and read in to Python via Pandas.  The data is then examined for missing or junk data before being saved as both a CSV and put into a MySQL database.  Analysis is done to answer some possible business questions.  Unfortunately, there is no COGS data for our items so all questions about profitability are based solely on revenue and we can not accurately analyze the total profit.

- What are our most commonly ordered items?
- What is our total revenue?
- When did we sell the most?
- How do our sales trends look over time / by country?
- Where do we sell the most?
- Where is most profitable to sell?
- What are our most profitable items? Where are they sold the most?
- How does our customer retention look?
- What items are frequently bought together?

Following this, modeling and forecasting are done using Prophet, XGBoost, and sklearn.  

With our revenue data being relatively flat, our models are quite bad and essentially predict a horizontal line with some noise and do not capture the rare spikes of revenue.  Prophet captures some of the variability in the time of day and sees the dirth of sales during the weekend.  XGBoost also finds the lack of weekend sales while also capturing some seasonality and using 1, 10, and 100 day lag features.  Finally sklearn is used to create a linear regression - despite the fact that our data clearly breaks the requisite assumptions - just to have a baseline model to compare our results to. We could have also included a horizontal line at the mean revenue. We find that our best models by RMSE are: XGBoost Regressor with TimeSeriesSplit, XGBoost Regressor with HYPEROPT, Prophet, and sklearn's Linear Regression with RMSE values of around 945, 2257, 2362, and 70619 respectively.  

Clearly our TimeSeriesSplit XGBRegressor is our best model of the ones we've tested thus far.

## Possible To Do
- Add LSTM comparison for forecasting, add to readme
- Add Tableau for onlineRetail once analysis is done, remove kaggleSales when done
- Write SQL for updating database if new data were to be introduced - .sql or via python connector
- Add seasonality to Prophet model

## Data Citation
https://www.kaggle.com/datasets/kyanyoga/sample-sales-data?select=sales_data_sample.csv

https://archive.ics.uci.edu/ml/datasets/Online+Retail+II#
