-- ============================================
-- Customer Churn Analysis
-- SQL Analysis Queries
-- ============================================

SELECT * FROM customer_churn;

-- Total Customers
SELECT COUNT(customer_id) 
FROM customer_churn;

-- Total Churn Customers

SELECT COUNT(*) 
FROM customer_churn
WHERE churn = 'Yes';

-- Churn Rate

SELECT ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS churn_rate
FROM customer_churn;

-- Average Monthly Charges
SELECT AVG(monthly_charges) 
FROM customer_churn;

-- Average Tenure
SELECT AVG(tenure_months)
FROM customer_churn;

-- Churn by Contract type

SELECT contract_type, COUNT(*)
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY contract_type;

-- Churn by Internet Service

SELECT internet_service, COUNT(*) AS churned_customer 
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY internet_service;

-- Churn by State

SELECT state, COUNT(*) 
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY state;

-- Payment Method wise Customers

SELECT payment_method, COUNT(*)
FROM customer_churn
GROUP BY payment_method
ORDER BY COUNT(*) DESC;

-- Subscription type wise Customers

SELECT subscription_type, COUNT(*)
FROM customer_churn
GROUP BY subscription_type
ORDER BY COUNT(*) DESC;

-- Highest Revenue State

SELECT state, SUM(total_charges) AS State_Charges
FROM customer_churn
GROUP BY state
ORDER BY State_Charges DESC;

-- Average Chargest by Contract

SELECT contract_type, AVG(total_charges) AS Avg_Charges
FROM customer_churn
GROUP BY contract_type
ORDER BY Avg_Charges DESC;

-- Senior Citizen Churn

SELECT senior_citizen, COUNT(*)
FROM customer_churn
WHERE churn = 'Yes'
GROUP BY senior_citizen;

-- Top 10 High Value Customers

SELECT customer_name, customer_value
FROM customer_churn
ORDER BY customer_value DESC
LIMIT 10;

-- Customer without Tech Support

SELECT COUNT(*) 
FROM customer_churn
WHERE tech_support = 'No';

-- Which internet service has the highest churn

SELECT 
    internet_service,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM customer_churn
GROUP BY internet_service
ORDER BY churn_rate DESC;

-- Churn rate by contract type

SELECT contract_type, 
		ROUND(
		SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),2) AS churn_rate
FROM customer_churn
GROUP BY contract_type
ORDER BY churn_rate DESC;

-- Churn by tenure group?

SELECT 
    tenure_group,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM customer_churn
GROUP BY tenure_group
ORDER BY churn_rate DESC;

-- Average Monthly charges vs churn

SELECT 
    subscription_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    AVG(monthly_charges) AS avg_monthly_charges,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS churn_rate
FROM customer_churn
GROUP BY subscription_type
ORDER BY churn_rate DESC;







