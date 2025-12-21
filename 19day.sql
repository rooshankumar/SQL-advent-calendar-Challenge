SELECT SUM(paper_used_meters) AS total_paper_used
FROM holiday_orders
WHERE gift_wrap = 1
  AND delivery_status = 'Delivered';
