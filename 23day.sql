SELECT builder_id, builder_name
FROM gingerbread_designs
GROUP BY builder_id, builder_name
HAVING COUNT(DISTINCT candy_type) >= 4;
