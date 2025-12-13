WITH daily_counts AS (
    SELECT
        DATE(m.sent_at) AS message_day,
        u.user_id,
        u.user_name,
        COUNT(*) AS message_count
    FROM
        npn_messages m
    JOIN
        npn_users u
        ON m.sender_id = u.user_id
    GROUP BY
        DATE(m.sent_at),
        u.user_id,
        u.user_name
),
ranked_users AS (
    SELECT
        message_day,
        user_id,
        user_name,
        message_count,
        DENSE_RANK() OVER (
            PARTITION BY message_day
            ORDER BY message_count DESC
        ) AS rank_per_day
    FROM
        daily_counts
)
SELECT
    message_day,
    user_name,
    message_count
FROM
    ranked_users
WHERE
    rank_per_day = 1
ORDER BY
    message_day,
    user_name;
