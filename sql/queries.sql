-- Query 1: Regional Completed Revenue
SELECT 
    c.region,
    SUM(o.amount) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status = 'completed'
GROUP BY c.region
ORDER BY total_revenue DESC;

-- Query 2: Category Breakdown
SELECT 
    p.category,
    SUM(o.amount) AS total_revenue
FROM orders o
JOIN products p ON o.item = p.item
WHERE o.status = 'completed'
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Query 3: Sales Rep Performance vs Target
SELECT 
    r.rep_id,
    r.rep_name,
    r.region,
    r.monthly_target,
    COALESCE(SUM(o.amount), 0) AS actual_revenue,
    (COALESCE(SUM(o.amount), 0) - r.monthly_target) AS variance
FROM reps r
LEFT JOIN customers c ON r.rep_id = c.rep_id
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.status = 'completed'
GROUP BY r.rep_id, r.rep_name, r.region, r.monthly_target;
