-- 3.Churn by tenure
SELECT tenure, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY tenure
ORDER BY churn_rate DESC

--Results
--Churn is higher for new customers and drops over the time as tenure increases. Tenure 1 
--month has the highest churn rate of 62% (total customers = 613) and the rate falls into 
-- 30-40% range by month 10-15.