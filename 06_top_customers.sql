-- Top customers by revenue
SELECT
    customer_id,
    country,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT invoice_id) AS total_orders
FROM retail_clean
WHERE customer_id IS NOT NULL
GROUP BY customer_id, country
ORDER BY total_revenue DESC
LIMIT 20;
