-- High-level business KPIs
WITH customer_base AS (
    SELECT
        customer_id,
        SUM(revenue) AS monetary
    FROM retail_clean
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id
)

SELECT
    AVG(monetary) AS avg_customer_value,
    MAX(monetary) AS max_customer_value,
    MIN(monetary) AS min_customer_value,
    COUNT(customer_id) AS total_customers
FROM customer_base;
