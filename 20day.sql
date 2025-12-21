SELECT
    cl.log_id,
    ct.cocoa_name,
    l.location_name
FROM cocoa_logs cl
JOIN break_schedule bs
    ON cl.break_id = bs.break_id
JOIN cocoa_types ct
    ON cl.cocoa_id = ct.cocoa_id
JOIN locations l
    ON bs.location_id = l.location_id;
