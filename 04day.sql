-- Kevin wants to decorate the house without skyrocketing the electricity bill.
-- Task: Return the top 5 most energy-efficient decorations,
-- meaning the ones with the lowest energy_cost_per_hour.

SELECT
    decoration_id,
    decoration_name,
    energy_cost_per_hour
FROM
    hall_decorations
ORDER BY
    energy_cost_per_hour ASC   -- lowest cost = most efficient
LIMIT 5;
