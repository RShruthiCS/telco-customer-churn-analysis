SELECT contract
FROM telco_customers
GROUP BY contract

SELECT paymentmethod
FROM telco_customers
GROUP BY paymentmethod

SELECT internetservice
FROM telco_customers
GROUP BY internetservice

SELECT multiplelines
FROM telco_customers
GROUP BY multiplelines

SELECT seniorcitizen
FROM telco_customers
GROUP BY seniorcitizen

SELECT MIN(tenure) AS tenure_min, 
       MAX(tenure) AS tenure_max, 
	   ROUND(AVG(tenure),2) AS tenure_avg,
	   MIN(monthlycharges) AS monthly_charges_min,
	   MAX(monthlycharges) AS monthly_charges_max,
	   ROUND(AVG(monthlycharges),2) AS monthlycharges_avg
FROM telco_customers

SELECT *
FROM telco_customers
WHERE tenure IS NULL;


SELECT COUNT(*) FILTER (WHERE totalcharges IS NULL)          AS null_count
FROM telco_customers;

SELECT *
FROM telco_customers
WHERE TRIM(totalcharges) = ''
--all 11 have tenure = 0 (new customers)

SELECT COUNT(*), COUNT(DISTINCT customerid)
FROM telco_customers


