-- 2.Churn by contact type
SELECT contract, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY contract
ORDER BY churn_rate DESC 

--RESULT
--contract 		|	total_customers |churned_customers  |churn_rate
--Month-to-month|	3875 			|1655 				|42.7
--One year		|	1473 			|166 				|11.3
--Two year		|	1695 			|48 				|2.8