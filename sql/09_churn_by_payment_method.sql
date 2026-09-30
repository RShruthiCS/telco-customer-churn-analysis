-- 9.Churn by payment method
SELECT paymentmethod, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY paymentmethod
ORDER BY churn_rate DESC

--RESULTS 
--paymentmethod			    |total_customers	|churned_customers	|churned_rate
--Electronic check		    |2365			 	|1071				|45.3
--Mailed check				|1612				|308				|19.1
--Bank transfer (automatic)	|1544				|258				|16.7
--Credit card (automatic)	|1522				|232				|15.2