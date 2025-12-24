SELECT user_type, AVG(completed_goals) AS avg_completed_goals
FROM (
    SELECT user_id, user_type, COUNT(goal_id) AS completed_goals
    FROM user_goals
    WHERE goal_status = 'Completed'
    GROUP BY user_id, user_type
) sub
GROUP BY user_type;
