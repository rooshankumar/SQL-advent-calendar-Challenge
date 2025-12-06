-- Some elves are still on vacation after the holiday rush.
-- Task: List all elves by name along with their return date.
-- If an elf has not yet returned from vacation, display "Still resting".

SELECT
    e.elf_name,
    COALESCE(v.return_date, 'Still resting') AS return_status
FROM
    elves e
LEFT JOIN
    vacations v ON e.elf_id = v.elf_id;
