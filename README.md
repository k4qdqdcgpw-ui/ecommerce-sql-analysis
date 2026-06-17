# E-Commerce Customer Behavior Analysis (SQL Project)

## Overview
This project analyzes e-commerce transactional data to understand key business drivers including customer behavior, product performance, and geographic revenue distribution.

The goal is to identify how revenue is generated and whether it is evenly distributed across customers, products, and regions.

---

## Business Questions
This analysis focuses on answering:

- Which country generates the most revenue?
- Are customers mostly one-time or repeat buyers?
- Is revenue driven by a small number of customers or spread evenly?
- Which products contribute most to total revenue?
- Is revenue dependent on a few key drivers?

---

## Dataset
- E-commerce transaction dataset (~500K+ rows)
- Key fields:
  - InvoiceNo
  - StockCode
  - Description (Product Name)
  - Quantity
  - InvoiceDate
  - UnitPrice
  - CustomerID
  - Country

---

## Tools Used
- SQL (data cleaning + analysis)
- Aggregation queries (GROUP BY, SUM, COUNT)
- CASE WHEN logic for segmentation

---

## Key Analysis & Findings

### 1. Geographic Revenue Distribution
- The United Kingdom dominates revenue and customer count.
- Other countries contribute significantly less to total sales.

**Insight:**
Revenue is heavily concentrated in a single market (UK).

---

### 2. Customer Behavior Analysis
- Most customers are repeat buyers.
- A small number of high-value customers generate a large portion of revenue.

**Insight:**
Customer spending is highly uneven, with revenue concentrated among top customers.

---

### 3. Product Performance Analysis
- A small group of products contributes most of the revenue.
- Revenue drops sharply after top-performing products.
- Shipping-related items (e.g., “POSTAGE”) appear among top revenue contributors.

**Insight:**
Product revenue is highly concentrated in a small number of items, not evenly distributed.

---

## Overall Conclusion
The business shows strong concentration across all dimensions:

- Geography: UK dominates total revenue
- Customers: A small group of customers drives most sales
- Products: A limited number of products generate most revenue

Overall, the dataset indicates that revenue is not evenly distributed and is heavily dependent on a small number of key drivers.

---

## Skills Demonstrated
- SQL data cleaning and transformation
- Aggregation and exploratory data analysis (EDA)
- Customer segmentation logic
- Business insight generation from raw transactional data
- Data interpretation and storytelling

---

## What I Learned
- How to identify revenue concentration patterns
- How customer behavior impacts business performance
- How product mix affects overall profitability
- How to translate raw SQL output into business insights

---

## Next Steps
- Add time-based analysis (monthly trends)
- Segment customers by lifetime value (LTV)
- Build dashboard (Power BI or Tableau)
- Add profit-margin analysis per product category
