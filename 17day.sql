SELECT
  task_id,
  task_name,
  noise_level,
  CASE
    WHEN noise_level < 50 THEN 'Calm'
    ELSE 'Chaotic'
  END AS task_mood
FROM evening_tasks;
