SELECT 
  stage,
  AVG(DATE_DIFF(closed_date, created_date, DAY)) AS avg_days_in_stage
FROM deals
WHERE is_won = TRUE
GROUP BY stage
ORDER BY avg_days_in_stage DESC;
