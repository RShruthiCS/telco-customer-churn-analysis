-- 5.Churn by monthly charges
SELECT monthly_charges_band, COUNT(*) AS total_customers, SUM(churn_flag) AS churned_customers, ROUND((AVG(churn_flag)*100),1) AS churn_rate
FROM telco_customers_features
GROUP BY monthly_charges_band
ORDER BY churn_rate

--RESULTS
--monthly_charges_band	|total_customers	|churned_customers 	|churn_rate
--1. Low ($0-35)		|1735				|189				|10.9
--2. Medium ($35-90)	|3569				|1110				|31.1
--3. High ($90+)		|1739				|570				|32.8