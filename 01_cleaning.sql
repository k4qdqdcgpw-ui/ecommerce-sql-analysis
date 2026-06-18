-- Remove null customers + invalid rows
SELECT *
FROM retail_clean
WHERE customer_id IS NOT NULL
  AND quantity > 0
  AND unitprice > 0
  AND revenue > 0;
