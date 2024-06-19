use casestudy2;

-- 1st query 
SELECT 
    WEEK(occurred_at) AS Week,
    COUNT(DISTINCT user_id) AS Weekly_USer_engagement
FROM
    events
GROUP BY WEEK(occurred_at)
ORDER BY WEEK(occurred_at);

-- 2nd query
SELECT week_num, year_num, 
sum(active_users) OVER (ORDER BY week_num, year_num) AS cumulative_sum 
FROM (
SELECT
	WEEK(activated_at) AS week_num,
    YEAR(activated_at) AS year_num,
    count(DISTINCT user_id) AS active_users 
FROM 
	users 
GROUP BY year_num, week_num 
ORDER BY year_num, week_num) AS alias;

-- 3rd query
SELECT 
    WEEK(occurred_at) AS weeks,
    COUNT(DISTINCT user_id) AS no_of_users
FROM
    events
WHERE
    event_type = 'signup_flow'
        AND event_name = 'complete_signup'
GROUP BY weeks
ORDER BY weeks;

-- 4TH query
SELECT 
    WEEK(occurred_at) AS weeks,
    device,
    COUNT(DISTINCT user_id) AS User_engagement
FROM
    events
WHERE
    event_type = 'engagement'
GROUP BY device , weeks
ORDER BY weeks;

-- 5th query
SELECT 
    WEEK(occurred_at) AS weeks,
    COUNT(DISTINCT CASE
            WHEN action = 'sent_weekly_digest' THEN user_id
        END) AS weekly_emails,
    COUNT(DISTINCT CASE
            WHEN action = 'sent_reengagement_email' THEN user_id
        END) AS reengagement_mail,
    COUNT(DISTINCT CASE
            WHEN action = 'email_open' THEN user_id
        END) AS email_opened,
    COUNT(DISTINCT CASE
            WHEN action = 'email_clickthrough' THEN user_id
        END) AS email_clickthrough
FROM
    email_events
GROUP BY weeks;





