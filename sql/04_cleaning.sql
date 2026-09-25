DROP VIEW IF EXISTS telco_customers_clean;

CREATE VIEW telco_customers_clean AS
SELECT
	customerid,
	gender,

	--Convert 0/1 to Yes/No so it matches the other columns
	CASE
		WHEN seniorcitizen = 1 THEN 'Yes'
		WHEN seniorcitizen = 0 THEN 'No'
	END AS seniorcitizen,

	partner,
	dependents,
	tenure,
	phoneservice, 
	multiplelines,
    internetservice,
    onlinesecurity,
    onlinebackup,
    deviceprotection,
    techsupport,
    streamingtv,
    streamingmovies,
    contract,
    paperlessbilling,
    paymentmethod,
    monthlycharges,

	--11blank values in totalcharges --> NULL
	CAST(NULLIF(TRIM(totalcharges), '') AS NUMERIC(10,2)) AS totalcharges,

	churn,

	CASE 
		WHEN churn = 'Yes' THEN 1
		WHEN churn = 'No' THEN 0
	END AS churn_flag

	FROM telco_customers;
