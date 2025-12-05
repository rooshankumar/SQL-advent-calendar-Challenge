-- The Grinch has brainstormed many pranks for Whoville.
-- Task: For each target, return only the most evil prank.
-- If two pranks have the same evilness score, keep the one created most recently.

SELECT 
    prank_id,
    target_name,
    prank_description,
    evilness_score,
    created_at
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY target_name
               ORDER BY evilness_score DESC, created_at DESC
           ) AS rn
    FROM grinch_prank_ideas
) AS ranked_pranks
WHERE rn = 1
ORDER BY target_name;
