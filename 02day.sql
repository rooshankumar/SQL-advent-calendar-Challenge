-- Santa wants to analyze which toys that were produced in his workshop
-- have already been delivered to children.
-- Task: Return the toy ID and toy name of the toys that have been delivered.
SELECT DISTINCT
    tp.toy_id,
    tp.toy_name
FROM 
    toy_production AS tp
INNER JOIN 
    toy_delivery AS td
    ON tp.toy_id = td.toy_id
ORDER BY
    tp.toy_id;
