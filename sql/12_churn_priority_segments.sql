--Priotiy segments (contract,tenure_groups)
WITH segment_churn AS(
	SELECT contract, tenure_group, 
		COUNT(*) AS total_customers, 
		SUM(churn_flag) AS churned_customers, 
		ROUND((AVG(churn_flag)*100),1) AS churn_rate
	FROM telco_customers_features
	GROUP BY contract,tenure_group
)
SELECT *, RANK() OVER (ORDER BY churn_rate DESC) AS churn_rank
FROM segment_churn
ORDER BY churn_rank

