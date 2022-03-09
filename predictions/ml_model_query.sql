-- Create and Train Model
-- Logistic Regression
-- Predicting category of incident report, only considering 5 most common categories
CREATE OR REPLACE MODEL `msds-434-339205.sf_311.category_prediction`
OPTIONS
  (model_type='logistic_reg',
  input_label_cols=['category']) AS
-- Incident Reports for Top 5 Most Common Categories
SELECT *
FROM `bigquery-public-data.san_francisco.311_service_requests`
WHERE category IN (

-- Distinct Top 50 Incident Categories
SELECT category
FROM (

-- Top 50 Incident Categories by Count
SELECT
    category
    , count(unique_key) AS incident_count
FROM
  `bigquery-public-data.san_francisco.311_service_requests`
GROUP BY category
ORDER BY incident_count DESC
LIMIT 5
)

)
LIMIT 100000
;

-- Evaluate Model
SELECT *
FROM ML.EVALUATE(MODEL `msds-434-339205.sf_311.category_prediction`)
;

-- Generate Incident Category Predictions
SELECT
    *
FROM
  ML.PREDICT(MODEL `msds-434-339205.sf_311.category_prediction`,
    (
    SELECT *
    FROM
      `bigquery-public-data.san_francisco.311_service_requests`
    WHERE extract(year FROM created_date) >= 2012 
    )
  )
ORDER BY created_date
;