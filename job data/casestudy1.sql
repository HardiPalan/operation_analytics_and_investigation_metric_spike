use casestudy1;

-- 1st query
SELECT DISTINCT
    ds AS days,
    COUNT(job_id) / (SUM(time_spent) / 3600) AS no_of_jobs_reviewed
FROM
    job_data
GROUP BY days;

-- 2nd query(1)
SELECT 
    ROUND((COUNT(event) / SUM(time_spent)), 2) AS 7_day_rolling_throughput
FROM
    job_data;

-- 2nd quey(2)
SELECT 
    ds,
    ROUND((COUNT(event) / SUM(time_spent)), 2) AS daily_metric
FROM
    job_data
GROUP BY ds;

-- 3ed query
SELECT 
    language,
    ROUND(((COUNT(language) / 8) * 100), 2) AS percentage_share
FROM
    job_data
GROUP BY language;

-- 4th query
SELECT 
    *
FROM
    job_data
GROUP BY ds , job_id , actor_id , event , language , time_spent , org
HAVING COUNT(*) > 1;


