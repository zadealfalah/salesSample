CREATE TABLE sales (
    ordernumber INT NOT NULL,
    quantityordered INT NOT NULL,
    priceeach FLOAT NOT NULL,
    orderlinenumber INT NOT NULL,
    sales FLOAT NOT NULL,
    orderdate DATE NOT NULL,
    shipping VARCHAR(50) NOT NULL,
    qtr_id INT NOT NULL,
    month_id INT NOT NULL,
    year_id INT NOT NULL,
    productline VARCHAR(50) NOT NULL,
    msrp INT NOT NULL,
    productcode VARCHAR(50) NOT NULL,
    customername VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    statename VARCHAR(50),
    country VARCHAR(50),
    territory VARCHAR(50),
    contactlastname VARCHAR(50) NOT NULL,
    contactfirstname VARCHAR(50) NOT NULL,
    dealsize VARCHAR(20) NOT NULL
);

LOAD DATA LOCAL INFILE ""  -- put in local file path
INTO TABLE sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;