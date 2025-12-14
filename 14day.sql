SELECT
    member_id,
    member_name,
    start_date,
    DATE(start_date, '+14 day') AS focus_end_date
FROM focus_challenges;
