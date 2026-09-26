-- 1. Overall churn rate
SELECT COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features

--Overall churn rate: 26.5% (1,869 of 7,043 customers)