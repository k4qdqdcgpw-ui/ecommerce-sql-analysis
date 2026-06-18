-- Build customer-level metrics
WITH customer_base AS (
    SELECT
        customer_id,
        country,

        SUM(revenue) AS monetary,
        COUNT(DISTINCT invoice_id) AS frequency,
        MAX(invoice_date) AS last_purchase_date

    FROM retail_clean
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id, country
)

SELECT *
FROM customer_base;
