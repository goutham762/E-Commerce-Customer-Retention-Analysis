# E-Commerce-Customer-Retention-Analysis
End-to-end customer retention and churn analysis project using PostgreSQL and Power BI.
E-Commerce Customer Retention Analysis
A end-to-end analytics project built using PostgreSQL and Power BI, focused on understanding why customers stop coming back and which acquisition channels actually bring in long-term buyers.

Project Overview
This project analyses customer retention, churn behaviour, acquisition channel quality, and revenue contribution for a mid-sized e-commerce business with 6,000 customers across a full year of transaction data.
The workflow covers everything from raw data cleaning in PostgreSQL to SQL-based analytical views and a four-page interactive Power BI dashboard. The goal was to move beyond surface-level metrics and answer the questions that actually matter to a business: who is churning, where are they coming from, and what does retention mean for revenue?

Key Numbers
MetricValueTotal Customers6,000Overall Repeat Customer Rate27%Overall Churn Rate47.6%Revenue from Retained Customers58.6%One-time Buyers61% of customer baseLoyal Customers5% of customer base

Key Findings
Acquisition Channel Performance
Referral was the strongest channel by far, with a 42% repeat rate and the lowest churn across all channels. Instagram had a repeat rate of just 18% and a churn rate of around 57%, making it the weakest channel on both counts. Google Ads and Organic sat in the middle at roughly 26% and 29% repeat rates respectively.
Cohort Retention Decay
Retention dropped sharply within the first three months across every cohort. The January cohort fell from 100% to 23% in Month 1 and was at 20% by Month 3. The April cohort had the best early numbers (31% in Month 2) but still declined to 4% by Month 8. Most cohorts dropped below 10% by Month 5 or 6.
Revenue Concentration
High-value customers contributed 44% of total revenue (approx. Rs. 0.35M) and medium-value customers added 41% (approx. Rs. 0.31M). Together they account for 85% of revenue. Low-value customers, despite being the most common type, contributed only 15% (approx. Rs. 0.12M).
Discount Impact
Customers who received a discount had a repeat rate of approximately 48%, compared to 40% for those who did not. The difference was 6.40 percentage points, which is real but not dramatic enough to justify broad discounting without a margin analysis.

Tools and Technologies
ToolPurposePostgreSQLDatabase setup, data cleaning, analytical view creationSQLSegmentation logic, churn definition, cohort analysisPower BIFour-page interactive dashboardDAXCalculated KPIs and measures

SQL Views Built

customer_segments — Classifies customers as No Purchase, One-time, Repeat, or Loyal based on order count
churn_analysis — Flags customers as Churned or Active using a 90-day recency rule
customer_value_segments — Groups customers by total revenue contribution into High, Medium, and Low value tiers
cohort_retention_rate — Tracks month-by-month retention for each customer cohort


Dashboard Structure
The Power BI dashboard is split into four pages, each focused on a specific part of the analysis:

Executive Summary — Top-level KPIs and monthly repeat rate trend
Acquisition and Channel Analysis — Churn and repeat rates by channel and product category
Cohort Retention Analysis — Monthly retention heatmap by cohort
Revenue and Customer Value — Revenue by segment and discount impact on repeat behaviour


Repository Structure
/sql              → Analytical SQL queries and view definitions
/dashboard        → Power BI dashboard file (.pbix)
/screenshots      → Dashboard page screenshots
/documentation    → Full project report (PDF)

Dashboard Preview
<!-- Add your Executive Summary screenshot here -->

Data Note
This project uses a synthetic dataset built to simulate realistic e-commerce behaviour. One anomaly worth noting: the July cohort showed an unusually low Month 1 retention of 1%, which is inconsistent with all other cohorts and is likely a data quality issue in the dataset rather than a genuine business trend. In a real project, this would be investigated before reporting.

Built by Goutham | PostgreSQL · Power BI · DAX
