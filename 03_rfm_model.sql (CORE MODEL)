-- RFM scoring model
WITH customer_base AS (
    SELECT
        customer_id,
        SUM(revenue) AS monetary,
        COUNT(DISTINCT invoice_id) AS frequency,
        MAX(invoice_date) AS last_purchase_date
    FROM retail_clean
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id
),

rfm_scored AS (
    SELECT
        *,
        NTILE(5) OVER (
            ORDER BY julianday('now') - julianday(last_purchase_date) ASC
        ) AS r_score,

        NTILE(5) OVER (ORDER BY frequency ASC) AS f_score,
        NTILE(5) OVER (ORDER BY monetary ASC) AS m_score
    FROM customer_base
)

SELECT *
FROM rfm_scored;
