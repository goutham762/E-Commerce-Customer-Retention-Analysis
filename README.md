# 🚀 E-Commerce Customer Retention Analysis

An end-to-end analytics project built using PostgreSQL and Power BI, focused on understanding why customers stop coming back and which acquisition channels actually bring in long-term buyers.

---

# 📌 Project Overview

This project analyses customer retention, churn behaviour, acquisition channel quality, and revenue contribution for a mid-sized e-commerce business with 6,000 customers across a full year of transaction data.

The workflow covers everything from raw data cleaning in PostgreSQL to SQL-based analytical views and a four-page interactive Power BI dashboard. The goal was to move beyond surface-level metrics and answer the questions that actually matter to a business:

- Who is churning?
- Where are they coming from?
- What does retention mean for revenue?

---

# 📊 Key Numbers

| Metric | Value |
|---|---|
| Total Customers | 6,000 |
| Overall Repeat Customer Rate | 27% |
| Overall Churn Rate | 47.6% |
| Revenue from Retained Customers | 58.6% |
| One-time Buyers | 61% of customer base |
| Loyal Customers | 5% of customer base |

---

# 🔍 Key Findings

## 📣 Acquisition Channel Performance

Referral was the strongest acquisition channel by far, with a repeat rate of around 42% and the lowest churn across all channels.

Instagram performed the worst, with a repeat rate of just 18% and a churn rate of approximately 57%, suggesting weaker long-term customer quality from that channel.

Google Ads and Organic acquisition sat in the middle at roughly 26% and 29% repeat rates respectively.

---

## 📉 Cohort Retention Decay

Retention dropped sharply within the first three months across nearly every cohort.

- The January cohort fell from 100% to 23% by Month 1 and reached 20% by Month 3
- The April cohort showed the strongest early retention but still declined heavily over time
- Most cohorts dropped below 10% retention by Month 5 or 6

This suggests that post-purchase engagement is the biggest retention challenge for the business.

---

## 💰 Revenue Concentration

High-value customers contributed 44% of total revenue (approximately Rs. 350K), while medium-value customers contributed another 41% (approximately Rs. 310K).

Together, these two segments generated 85% of total revenue.

Low-value customers, despite being the largest group by volume, contributed only 15% of revenue.

---

## 🏷️ Discount Impact

Customers who received discounts had a repeat rate of approximately 46%, compared to around 40% for customers without discounts.

The improvement was real but modest, suggesting discounts should be used strategically rather than broadly.

---

# 🛠️ Tools and Technologies

| Tool | Purpose |
|---|---|
| PostgreSQL | Database setup, data cleaning and analytical view creation |
| SQL | Segmentation logic, churn definition and cohort analysis |
| Power BI | Four-page interactive dashboard |
| DAX | Calculated KPIs and measures |

---

# 🧠 SQL Views Built

### customer_segments
Classifies customers as No Purchase, One-time, Repeat, or Loyal based on order count.

### churn_analysis
Flags customers as Churned or Active using a 90-day recency rule.

### customer_value_segments
Groups customers by total revenue contribution into High, Medium, and Low value tiers.

### cohort_retention_rate
Tracks month-by-month retention for each customer cohort.

---

# 📈 Dashboard Structure

The Power BI dashboard is divided into four analytical pages:

| Dashboard Page | Focus Area |
|---|---|
| Executive Summary | KPIs and repeat customer trend |
| Acquisition and Channel Analysis | Churn and repeat behaviour by channel |
| Cohort Retention Analysis | Cohort-based retention heatmap |
| Revenue and Customer Value | Revenue segmentation and discount impact |

---

# ⚠️ Data Note

This project uses a synthetic dataset designed to simulate realistic e-commerce customer behaviour.

One anomaly worth noting is that the July cohort showed an unusually low Month 1 retention rate of 1%, which is inconsistent with patterns across the other cohorts. This is most likely a limitation of the synthetic dataset rather than a genuine business signal.

In a real-world analytics environment, this type of anomaly would typically be flagged and investigated further before presenting findings to stakeholders.

# 📂 Repository Structure

# 📂 Repository Structure

```text
/screenshots      → Dashboard screenshots
/sql              → Analytical SQL queries
Project_Report.pdf → Full project documentation
README.md         → Project overview and insights
