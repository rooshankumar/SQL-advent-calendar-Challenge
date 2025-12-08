-- Buddy wants to rank ski resorts by annual snowfall.
-- Task: Sum total snowfall per resort and bucket them into quartiles (Q1–Q4).

WITH annual_snow AS (
    SELECT
        resort_id,
        resort_name,
        SUM(snowfall_inches) AS total_snowfall
    FROM
        resort_monthly_snowfall
    GROUP BY
        resort_id, resort_name
),
quartiles AS (
    SELECT
        resort_id,
        resort_name,
        total_snowfall,
        NTILE(4) OVER (ORDER BY total_snowfall) AS snowfall_quartile
    FROM
        annual_snow
)
SELECT
    resort_id,
    resort_name,
    total_snowfall,
    snowfall_quartile
FROM
    quartiles
ORDER BY
    snowfall_quartile, total_snowfall;
