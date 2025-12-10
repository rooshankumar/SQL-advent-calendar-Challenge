-- making holiday fashion combos
SELECT 
    t.color_name AS tinsel_color,
    l.color_name AS light_color,
    t.color_name || '-' || l.color_name AS combo
FROM tinsel_colors t
CROSS JOIN light_colors l;
