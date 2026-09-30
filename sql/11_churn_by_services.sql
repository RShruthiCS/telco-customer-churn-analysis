-- 6.Churn by services
SELECT techsupport, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY techsupport
ORDER BY churn_rate

--RESULTS
--techsupport 			|total_customers |churned_customers |churn_rate
--No internet service	|1526			 |113				|7.4
--Yes					|2044			 |310				|15.2
--No					|3473			 |1446				|41.6

SELECT onlinesecurity, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY onlinesecurity
ORDER BY churn_rate

--RESULTS
--onlinesecurity 		|total_customers |churned_customers |churn_rate
--No internet service	|1526			 |113				|7.4
--Yes					|2019			 |295				|14.6
--No					|3498			 |1461				|41.8

SELECT streamingtv, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY streamingtv
ORDER BY churn_rate

--RESULTS
--streamingtv 			|total_customers |churned_customers |churn_rate
--No internet service	|1526			 |113				|7.4
--Yes					|2707			 |814				|30.1
--No					|2810			 |942				|33.5