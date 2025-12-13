SELECT
    item_name AS sweater_name,
    UPPER(SUBSTR(color, 1, 1)) || LOWER(SUBSTR(color, 2)) AS cleaned_color
FROM
    winter_clothing
WHERE
    LOWER(item_name) LIKE '%sweater%';
