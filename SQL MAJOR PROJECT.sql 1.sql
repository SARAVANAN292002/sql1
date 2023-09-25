use customer_churn1;
# Create the table
CREATE TABLE customer_churn (
    customer_id INT PRIMARY KEY,
    gender ENUM('Male', 'Female'),
    age INT,
    marital_status ENUM('Married', 'Single'),
    dependents INT,
    contract_type ENUM('Monthly', 'Yearly'),
    internet_service ENUM('DSL', 'Fiber Optic'),
    phone_service ENUM('Yes', 'No'),
    multiple_lines ENUM('Yes', 'No'),
    online_security ENUM('Yes', 'No'),
    online_backup ENUM('Yes', 'No'),
    device_protection ENUM('Yes', 'No'),
    tech_support ENUM('Yes', 'No'),
    streaming_tv ENUM('Yes', 'No'),
    streaming_movies ENUM('Yes', 'No'),
    monthly_charges DECIMAL(8, 2),
    total_charges DECIMAL(10, 2),
    churn_status ENUM('Yes', 'No')
);
SELECT* from customer_churn;

-- Generate random data
INSERT INTO customer_churn
SELECT
    FLOOR(RAND() * 1000000) AS customer_id,
    IF(RAND() < 0.5, 'Male', 'Female') AS gender,
    FLOOR(RAND() * 60) + 18 AS age,
    IF(RAND() < 0.5, 'Married', 'Single') AS marital_status,
    FLOOR(RAND() * 4) AS dependents,
    IF(RAND() < 0.5, 'Monthly', 'Yearly') AS contract_type,
    IF(RAND() < 0.5, 'DSL', 'Fiber Optic') AS internet_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS phone_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS multiple_lines,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_security,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_backup,
    IF(RAND() < 0.5, 'Yes', 'No') AS device_protection,
    IF(RAND() < 0.5, 'Yes', 'No') AS tech_support,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_tv,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_movies,
    ROUND(RAND() * 100, 2) AS monthly_charges,
    ROUND(RAND() * 1000, 2) AS total_charges,
    IF(RAND() < 0.2, 'Yes', 'No') AS churn_status
FROM
    information_schema.columns AS c1,
    information_schema.columns AS c2
LIMIT 500;

-- Dataset 2: Customer Churn With Call Duration Dataset
-- Create the table
CREATE TABLE customer_churn_call_duration (
    customer_id INT PRIMARY KEY,
    gender ENUM('Male', 'Female'),
    age INT,
    marital_status ENUM('Married', 'Single'),
    dependents INT,
    contract_type ENUM('Monthly', 'Yearly'),
    internet_service ENUM('DSL', 'Fiber Optic'),
    phone_service ENUM('Yes', 'No'),
    multiple_lines ENUM('Yes', 'No'),
    online_security ENUM('Yes', 'No'),
    online_backup ENUM('Yes', 'No'),
    device_protection ENUM('Yes', 'No'),
    tech_support ENUM('Yes', 'No'),
    streaming_tv ENUM('Yes', 'No'),
    streaming_movies ENUM('Yes', 'No'),
    monthly_charges DECIMAL(8, 2),
    total_charges DECIMAL(10, 2),
    churn_status ENUM('Yes', 'No'),
    call_duration_minutes INT
);

-- Generate random data
INSERT INTO customer_churn_call_duration
SELECT
    FLOOR(RAND() * 1000000) AS customer_id,
    IF(RAND() < 0.5, 'Male', 'Female') AS gender,
    FLOOR(RAND() * 60) + 18 AS age,
    IF(RAND() < 0.5, 'Married', 'Single') AS marital_status,
    FLOOR(RAND() * 4) AS dependents,
    IF(RAND() < 0.5, 'Monthly', 'Yearly') AS contract_type,
    IF(RAND() < 0.5, 'DSL', 'Fiber Optic') AS internet_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS phone_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS multiple_lines,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_security,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_backup,
    IF(RAND() < 0.5, 'Yes', 'No') AS device_protection,
    IF(RAND() < 0.5, 'Yes', 'No') AS tech_support,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_tv,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_movies,
    ROUND(RAND() * 100, 2) AS monthly_charges,
    ROUND(RAND() * 1000, 2) AS total_charges,
    IF(RAND() < 0.2, 'Yes', 'No') AS churn_status,
    FLOOR(RAND() * 1200) AS call_duration_minutes
FROM
    information_schema.columns AS c1,
    information_schema.columns AS c2
LIMIT 500;

-- Dataset 3: Customer Churn With Location Dataset
-- Create the table
CREATE TABLE customer_churn_location (
    customer_id INT PRIMARY KEY,
    gender ENUM('Male', 'Female'),
    age INT,
    marital_status ENUM('Married', 'Single'),
    dependents INT,
    contract_type ENUM('Monthly', 'Yearly'),
    internet_service ENUM('DSL', 'Fiber Optic'),
    phone_service ENUM('Yes', 'No'),
    multiple_lines ENUM('Yes', 'No'),
    online_security ENUM('Yes', 'No'),
    online_backup ENUM('Yes', 'No'),
    device_protection ENUM('Yes', 'No'),
    tech_support ENUM('Yes', 'No'),
    streaming_tv ENUM('Yes', 'No'),
    streaming_movies ENUM('Yes', 'No'),
    monthly_charges DECIMAL(8, 2),
    total_charges DECIMAL(10, 2),
    churn_status ENUM('Yes', 'No'),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6)
);

-- Generate random data
INSERT INTO customer_churn_location
SELECT
    FLOOR(RAND() * 1000000) AS customer_id,
    IF(RAND() < 0.5, 'Male', 'Female') AS gender,
    FLOOR(RAND() * 60) + 18 AS age,
    IF(RAND() < 0.5, 'Married', 'Single') AS marital_status,
    FLOOR(RAND() * 4) AS dependents,
    IF(RAND() < 0.5, 'Monthly', 'Yearly') AS contract_type,
    IF(RAND() < 0.5, 'DSL', 'Fiber Optic') AS internet_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS phone_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS multiple_lines,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_security,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_backup,
    IF(RAND() < 0.5, 'Yes', 'No') AS device_protection,
    IF(RAND() < 0.5, 'Yes', 'No') AS tech_support,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_tv,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_movies,
    ROUND(RAND() * 100, 2) AS monthly_charges,
    ROUND(RAND() * 1000, 2) AS total_charges,
    IF(RAND() < 0.2, 'Yes', 'No') AS churn_status,
    ROUND(RAND() * 180 - 90, 6) AS latitude,
    ROUND(RAND() * 360 - 180, 6) AS longitude
FROM
    information_schema.columns AS c1,
    information_schema.columns AS c2
LIMIT 500;

select* from customer_churn;
select* from customer_churn_call_duration;
select* from customer_churn_location;
CREATE TABLE customer_churn_full (
    customer_id INT PRIMARY KEY,
    gender ENUM('Male', 'Female'),
    age INT,
    marital_status ENUM('Married', 'Single'),
    dependents INT,
    contract_type ENUM('Monthly', 'Yearly'),
    internet_service ENUM('DSL', 'Fiber Optic'),
    phone_service ENUM('Yes', 'No'),
    multiple_lines ENUM('Yes', 'No'),
    online_security ENUM('Yes', 'No'),
    online_backup ENUM('Yes', 'No'),
    device_protection ENUM('Yes', 'No'),
    tech_support ENUM('Yes', 'No'),
    streaming_tv ENUM('Yes', 'No'),
    streaming_movies ENUM('Yes', 'No'),
    monthly_charges DECIMAL(8, 2),
    total_charges DECIMAL(10, 2),
    churn_status ENUM('Yes', 'No'),
    call_duration_minutes INT,
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6)
);
-- Generate random data
INSERT INTO customer_churn_full
SELECT
    FLOOR(RAND() * 1000000) AS customer_id,
    IF(RAND() < 0.5, 'Male', 'Female') AS gender,
    FLOOR(RAND() * 60) + 18 AS age,
    IF(RAND() < 0.5, 'Married', 'Single') AS marital_status,
    FLOOR(RAND() * 4) AS dependents,
    IF(RAND() < 0.5, 'Monthly', 'Yearly') AS contract_type,
    IF(RAND() < 0.5, 'DSL', 'Fiber Optic') AS internet_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS phone_service,
    IF(RAND() < 0.5, 'Yes', 'No') AS multiple_lines,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_security,
    IF(RAND() < 0.5, 'Yes', 'No') AS online_backup,
    IF(RAND() < 0.5, 'Yes', 'No') AS device_protection,
    IF(RAND() < 0.5, 'Yes', 'No') AS tech_support,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_tv,
    IF(RAND() < 0.5, 'Yes', 'No') AS streaming_movies,
    ROUND(RAND() * 100, 2) AS monthly_charges,
    ROUND(RAND() * 1000, 2) AS total_charges,
    IF(RAND() < 0.2, 'Yes', 'No') AS churn_status,
    FLOOR(RAND() * 1200) AS call_duration_minutes,
    ROUND(RAND() * 180 - 90, 6) AS latitude,
    ROUND(RAND() * 360 - 180, 6) AS longitude
FROM
    information_schema.columns AS c1,
    information_schema.columns AS c2
LIMIT 500;

select* from customer_churn_full;






/*The project aims to answer the following questions:

1. What are the primary factors influencing customer churn? 
   Are there any specific patterns or correlations in the data that indicate churn-prone customers?
2. Can we identify any demographic or behavioral characteristics that differentiate churned 
   from those who continue to be active?
3. Are there any specific services or contract terms that contribute significantly to customer 
   churn? Are there opportunities to modify or enhance these offerings to reduce churn?
*/

-- 1. Factors influencing customer churn
-- count of churned customers by differnt factors

SELECT 
gender,
marital_status,
dependents,
contract_type,
internet_service,
phone_service,
multiple_lines,
online_security,
online_backup,
device_protection,
tech_support,
streaming_tv,
streaming_movies,
count(*) as churn_count
from customer_churn_full
WHERE churn_status='Yes'
GRoup by 
gender,
marital_status,
dependents,
contract_type,
internet_service,
phone_service,
multiple_lines,
online_security,
online_backup,
device_protection,
tech_support,
streaming_tv,
streaming_movies;


-- 2. Demographic and behavioral characteristics of churned customers:

-- Comparison of churned and active customers by demographic and behavioral characteristics
SELECT
	gender,
	marital_status,
	dependents,
	AVG(age) as avg_age,
	AVG(monthly_charges) as avg_monthly_charges,
	AVG(total_charges) as avg_total_charges

FROM customer_churn_full
Where churn_status='Yes'
GROUP by 
	gender,
	marital_status,
	dependents
ORDER BY 
  gender,
  marital_status,
  dependents;
  
  -- 3. Services or contract terms contributing to customer churn:
-- Count of churned customers by services and contract terms
SELECT
    internet_service,
    phone_service,
    multiple_lines,
    online_security,
    online_backup,
    device_protection,
    tech_support,
    streaming_tv,
    streaming_movies,
    contract_type,
    COUNT(*) AS churn_count
FROM
    customer_churn
WHERE
    churn_status = 'Yes'
GROUP BY
    internet_service,
    phone_service,
    multiple_lines,
    online_security,
    online_backup,
    device_protection,
    tech_support,
    streaming_tv,
    streaming_movies,
    contract_type;














