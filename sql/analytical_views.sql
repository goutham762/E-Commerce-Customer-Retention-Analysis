-- =========================================
-- CUSTOMER SEGMENTATION VIEW
-- =========================================

CREATE VIEW customer_segments AS

SELECT
    c.customer_id,

    COUNT(o.order_id) AS total_orders,

    ROUND(COALESCE(SUM(o.order_amount),0),2) AS total_spent,

    CASE
        WHEN COUNT(o.order_id) = 0 THEN 'No Purchase'
        WHEN COUNT(o.order_id) = 1 THEN 'One-time'
        WHEN COUNT(o.order_id) BETWEEN 2 AND 4 THEN 'Repeat'
        ELSE 'Loyal'
    END AS customer_type

FROM customers c

LEFT JOIN orders o
    ON c.customer_id = o.customer_id

GROUP BY c.customer_id;


-- =========================================
-- CHURN ANALYSIS VIEW
-- =========================================

CREATE VIEW churn_analysis AS

SELECT
    customer_id,

    MAX(order_date) AS last_purchase_date,

    CASE
        WHEN MAX(order_date) < CURRENT_DATE - INTERVAL '90 days'
        THEN 'Churned'

        ELSE 'Active'
    END AS churn_status

FROM orders

GROUP BY customer_id;


-- =========================================
-- COHORT RETENTION QUERY
-- =========================================

WITH customer_cohorts AS (

    SELECT
        customer_id,

        DATE_TRUNC('month', MIN(order_date)) AS cohort_month

    FROM orders

    GROUP BY customer_id
)

SELECT
    cc.cohort_month,

    EXTRACT(
        MONTH FROM AGE(
            DATE_TRUNC('month', o.order_date),
            cc.cohort_month
        )
    ) AS month_number,

    COUNT(DISTINCT o.customer_id) AS active_customers

FROM orders o

JOIN customer_cohorts cc
    ON o.customer_id = cc.customer_id

GROUP BY
    cc.cohort_month,
    month_number

ORDER BY
    cc.cohort_month,
    month_number;
