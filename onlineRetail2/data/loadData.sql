CREATE TABLE onlineretail (
    invoicenumber INT NOT NULL,
    stockcode INT NOT NULL,
    productname VARCHAR(50) NOT NULL,
    transactionquantity INT NOT NULL,
    invoicedate DATE NOT NULL,
    unitprice FLOAT NOT NULL,
    customerid INT NOT NULL,
    country VARCHAR(20) NOT NULL
);








LOAD DATA LOCAL INFILE
'.\online_retail_II_2009_2010.csv' -- put local path to the csv here
INTO TABLE onlineretail
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY 'n'
IGNORE 1 ROWS;