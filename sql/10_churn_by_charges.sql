-- 5.Churn by monthly charges
SELECT monthly_charges_band, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY monthly_charges_band
ORDER BY churn_rate

