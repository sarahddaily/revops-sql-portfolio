-- 1. Total revenue by owner
SELECT
    owner,
    SUM(amount) AS total_revenue
FROM
    deals
GROUP BY
    owner
ORDER BY
    total_revenue DESC;

-- 2. Number of deals by stage
SELECT
    stage,
    COUNT(*) AS deal_count
FROM
    deals
GROUP BY
    stage
ORDER BY
    deal_count DESC;

-- 3. Average deal size by segment
SELECT
    segment,
    AVG(amount) AS avg_deal_size
FROM
    deals
GROUP BY
    segment
ORDER BY
    avg_deal_size DESC;

-- 4. Average sales cycle (days) by segment
SELECT
    segment,
    AVG(DATEDIFF(closed_date, created_date)) AS avg_sales_cycle_days
FROM
    deals
WHERE
    closed_date IS NOT NULL
GROUP BY
    segment
ORDER BY
    avg_sales_cycle_days ASC;

-- 5. Top 5 accounts by revenue
SELECT
    account,
    SUM(amount) AS total_revenue
FROM
    deals
GROUP BY
    account
ORDER BY
    total_revenue DESC
LIMIT 5;
