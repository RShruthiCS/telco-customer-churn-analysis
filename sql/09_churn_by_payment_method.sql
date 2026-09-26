-- 9.Churn by payment method
SELECT paymentmethod, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY paymentmethod
ORDER BY churn_rate DESC
