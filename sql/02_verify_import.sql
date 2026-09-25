SELECT COUNT(*)
FROM telco_customers;

SELECT *
FROM telco_customers
LIMIT 10

SELECT churn, COUNT(*) as customers
FROM telco_customers
GROUP BY churn

