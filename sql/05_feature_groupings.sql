-- Checked distribution before choosing cutoffs:
--SELECT
--    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY monthlycharges) AS p25,
--    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY monthlycharges) AS p50,
--    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY monthlycharges) AS p75
--FROM telco_customers_clean;

DROP VIEW IF EXISTS telco_customers_features;

CREATE VIEW telco_customers_features AS
SELECT
    *,
    CASE
        WHEN tenure <= 12 THEN '1. 0-12 months'
        WHEN tenure <= 24 THEN '2. 13-24 months'
        WHEN tenure <= 48 THEN '3. 25-48 months'
        ELSE '4. 49-72 months'
    END AS tenure_group,
    CASE
        WHEN monthlycharges <= 35 THEN '1. Low ($0-35)'
        WHEN monthlycharges <= 90 THEN '2. Medium ($35-90)'
        ELSE '3. High ($90+)'
    END AS monthly_charges_band
FROM telco_customers_clean;