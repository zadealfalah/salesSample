
SET GLOBAL local_infile = true;

DROP TABLE IF EXISTS onlineretail;
CREATE TABLE onlineretail (
    invoicenumber VARCHAR(20) NOT NULL,
    stockcode VARCHAR(30) NOT NULL,
    productdescription VARCHAR(50) NOT NULL,
    transactionquantity INT NOT NULL,
    invoicedate DATE NOT NULL,
    unitprice FLOAT NOT NULL,
    customerid VARCHAR(20) NOT NULL,
    country VARCHAR(30) NOT NULL
);


LOAD DATA LOCAL INFILE
'.\\cleanOnlineRetail.csv'  -- local path here
INTO TABLE onlineretail
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(invoicenumber, stockcode, productdescription, transactionquantity, invoicedate, unitprice, customerid, country);




--- for original csvs
DROP TABLE IF EXISTS originalretail;
CREATE TABLE originalretail (
    invoicenumber VARCHAR(20) NOT NULL,
    stockcode VARCHAR(30) NOT NULL,
    productdescription VARCHAR(50) NOT NULL,
    transactionquantity INT NOT NULL,
    invoicedate DATE NOT NULL,
    unitprice FLOAT NOT NULL,
    customerid VARCHAR(20) NOT NULL,
    country VARCHAR(30) NOT NULL
);

LOAD DATA LOCAL INFILE 
'C:\\Users\\Zade\\Desktop\\PythonStuff\\Misc\\salesSample\\onlineRetail\\data\\online_retail_II_2009_2010.csv'
INTO TABLE originalretail
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(invoicenumber, stockcode, productdescription, transactionquantity, @InvoiceDate, unitprice, customerid, country)
SET invoicedate = STR_TO_DATE(@InvoiceDate, '%m/%d/%Y')
;


LOAD DATA LOCAL INFILE 
'C:\\Users\\Zade\\Desktop\\PythonStuff\\Misc\\salesSample\\onlineRetail\\data\\online_retail_II_2010_2011.csv'
INTO TABLE originalretail
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(invoicenumber, stockcode, productdescription, transactionquantity, @InvoiceDate, unitprice, customerid, country)
SET invoicedate = STR_TO_DATE(@InvoiceDate, '%m/%d/%Y');
