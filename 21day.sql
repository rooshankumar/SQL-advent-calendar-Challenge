SELECT
    log_date,
    stories_shared,
    SUM(stories_shared) OVER (
        ORDER BY log_date
    ) AS running_total
FROM story_log
ORDER BY log_date;
