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


--Results
--Month-to-month customers in their first year (0-12 months) have
-- by far the highest churn rate at 51.4% (1,024 of 1,994 customers), more
-- than double any other segment. Churn drops sharply as tenure increases
-- within month-to-month contracts, and is lowest across the board for
-- two-year contracts, several of which show near-0% churn.
