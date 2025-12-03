-- Reindeer Run Challenge
-- Every year, the city of Whoville conducts a Reindeer Run to find
-- the best reindeers for Santa's Sleigh.
-- Task: Return the name and rank of the top 7 reindeers in this race.

SELECT 
    name,
    rank
FROM 
    reindeer_run_results
ORDER BY 
    rank ASC
LIMIT 7;
