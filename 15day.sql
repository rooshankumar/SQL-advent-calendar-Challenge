SELECT
  log_date,
  mischief_score,
  mischief_score - LAG(mischief_score) OVER (ORDER BY log_date) AS daily_change
FROM grinch_mischief_log
ORDER BY log_date;
