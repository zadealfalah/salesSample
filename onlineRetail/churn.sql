-- MySQL churn
WITH 
  churn_data AS (
    SELECT 
      customerid,
      COUNT(DISTINCT invoicenumber) AS num_orders,
      MAX(invoicedate) AS last_order_date,
      MAX(IF(invoicenumber LIKE 'C%', invoicedate, '9999-12-31')) AS last_cancel_date
    FROM 
      originalretail
    GROUP BY 
      1
  ),
  
  churn_labels AS (
    SELECT 
      customerid,
      CASE 
        WHEN last_cancel_date < last_order_date THEN 1
        ELSE 0
      END AS is_churned
    FROM 
      churn_data
  )

SELECT 
  customerid,
  num_orders,
  last_order_date,
  last_cancel_date,
  is_churned
FROM 
  churn_data
JOIN 
  churn_labels 
ON 
  churn_data.customerid = churn_labels.customerid;