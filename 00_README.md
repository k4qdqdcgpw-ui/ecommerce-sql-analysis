Revenue Concentration & Customer Segmentation in E-Commerce (SQL Analytics Project)

Dataset Source:
UCI Online Retail Dataset
https://archive.ics.uci.edu/ml/datasets/online+retail

# E-Commerce Customer Behavior Analysis (SQL + RFM Segmentation)

Executive Summary

This project analyzed an e-commerce transaction dataset to identify revenue drivers, customer value patterns, and retention opportunities using SQL and RFM segmentation.

Key Findings

* The United Kingdom generated approximately $6.8M in revenue, representing the largest market by a significant margin.
* At Risk customers contributed over $7M in historical revenue, making them the highest-priority segment for retention campaigns.
* Champions exhibited the highest average customer value but represented a very small portion of the customer base.
* Revenue was highly concentrated geographically, exposing the business to market concentration risk.
* International markets such as the Netherlands and EIRE demonstrated high customer value despite smaller customer populations.

Business Recommendations

1. Launch targeted retention campaigns for At Risk customers.
2. Develop loyalty initiatives to move Potential Loyalists into Loyal Customer segments.
3. Reduce dependence on the UK market by expanding high-value international segments.
4. Review discounting and customer engagement strategies to improve long-term customer retention.

## Overview

This project analyzes large-scale e-commerce transactional data to understand customer purchasing behavior and identify high-value customer segments.

The goal is to move beyond raw transaction data and apply **RFM (Recency, Frequency, Monetary) analysis** to classify customers based on engagement and value.

This segmentation helps businesses improve retention, targeting, and revenue strategy.

---

## Business Questions

This analysis answers:

- Which customers generate the highest revenue?
- How often do customers return to purchase?
- How recently have customers made purchases?
- Can customers be grouped into meaningful behavioral segments?
- Which customers are at risk vs highly engaged?

---

## Dataset

E-commerce transactional dataset containing customer purchase history.

### Key Fields:
- `customer_id`
- `country`
- `invoice_date` / `last_purchase_date`
- `frequency` (number of purchases)
- `monetary` (total spend)
- RFM scores (`r_score`, `f_score`, `m_score`)

---

## Tools Used

- SQL (data cleaning & aggregation)
- GROUP BY and window functions
- CASE WHEN logic
- RFM scoring methodology
- Exploratory data analysis (EDA)

---

## Methodology

### 1. Customer-Level Aggregation

Customers were aggregated from transaction-level data into:

- Total monetary value (spend per customer)
- Frequency (number of purchases)
- Recency (based on last purchase date)

---

### 2. RFM Scoring

Each customer is assigned a score from **1 to 5** for:

- **Recency (R):** How recently they purchased  
- **Frequency (F):** How often they purchase  
- **Monetary (M):** How much they spend  

Higher scores represent stronger customer value.

---

## Customer Segmentation Logic

Customers were grouped based on combined RFM scores:

---

### 🟢 Champions (5-5-5)
- Recent buyers
- High purchase frequency
- High monetary value

**Business Meaning:**  
Core high-value customers driving revenue. Most important segment to retain.

---

### 🟡 Loyal Customers (varied 5-4-x / 5-3-x)
- Regular purchasers
- Consistent engagement
- Moderate to high spending

**Business Meaning:**  
Stable customer base with strong retention value.

---

### 🟡 Potential Loyalists (5-3-x / similar patterns)
- Recent customers
- Lower frequency but promising engagement
- Growing value potential

**Business Meaning:**  
Customers who can become loyal with targeted engagement.

---

### ⚪ Other / Low Engagement Customers
- Low frequency or one-time buyers
- Lower overall engagement

**Business Meaning:**  
Low priority segment or reactivation candidates.

---

## Key Insights

- Revenue is concentrated in a small group of high-value customers.
- Most customers fall into low or moderate engagement categories.
- Champions represent a small but highly valuable segment.
- There is strong opportunity for retention and reactivation strategies.

---

## Business Impact

This segmentation can support:

- Targeted marketing campaigns (VIP vs re-engagement groups)
- Customer retention strategies
- Loyalty program design
- Revenue optimization
- Customer lifetime value analysis

---

## Skills Demonstrated

- SQL data aggregation and transformation
- RFM segmentation modeling
- Customer behavior analysis
- Business insight generation
- Data storytelling and interpretation

---

## Future Improvements

- Customer Lifetime Value (CLV) modeling
- Cohort analysis (retention over time)
- Churn prediction modeling
- Dashboard visualization (Power BI / Tableau)
- Product-level profitability analysis

---

## Summary

This project demonstrates how transactional data can be transformed into actionable business intelligence using RFM segmentation to identify and prioritize customer value.
