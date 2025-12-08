-- Frosty wants to know how many unique snowflake types appeared
-- during the December 24th, 2025 storm.

SELECT
    COUNT(DISTINCT flake_type) AS unique_flake_types
FROM
    snowfall_log
WHERE
    CAST(fall_time AS DATE) = '2025-12-24';
