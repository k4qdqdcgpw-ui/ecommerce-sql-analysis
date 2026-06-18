-- Turn RFM scores into business segments
WITH rfm AS (
    SELECT
        customer_id,
        monetary,
        frequency,
        last_purchase_date,

        NTILE(5) OVER (
            ORDER BY julianday('now') - julianday(last_purchase_date) ASC
        ) AS r_score,

        NTILE(5) OVER (ORDER BY frequency ASC) AS f_score,

        NTILE(5) OVER (ORDER BY monetary ASC) AS m_score

    FROM retail_clean
    WHERE customer_id IS NOT NULL
    GROUP BY customer_id
)

SELECT *,
    CASE
        WHEN r_score = 5 AND f_score = 5 AND m_score = 5 THEN 'Champions'
        WHEN r_score >= 4 AND m_score >= 4 THEN 'High Value'
        WHEN f_score >= 4 THEN 'Loyal Customers'
        WHEN m_score >= 4 THEN 'Big Spenders'
        WHEN r_score <= 2 THEN 'At Risk'
        ELSE 'Regular Customers'
    END AS customer_segment

FROM rfm;
