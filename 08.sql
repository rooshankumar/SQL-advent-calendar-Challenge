-- To merge both tables into one clean list of all decorations (trees + lights)
SELECT item_name, category
FROM storage_trees

UNION

SELECT item_name, category
FROM storage_lights;
