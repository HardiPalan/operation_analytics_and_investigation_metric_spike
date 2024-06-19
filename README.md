# operation_analytics_and_investigation_metric_spike

This project focuses on performing comprehensive analytics and investigations on various operational metrics using SQL queries. By analyzing the provided dataset, this project aims to gain insights into user behavior, engagement, language distribution, growth patterns, email engagement, and more. These insights are essential for making informed business decisions, optimizing user experiences, and identifying areas for improvement.

## Description

The primary goal of this project is to provide meaningful insights from a real-world dataset using SQL queries. The dataset includes various operational metrics, such as user engagement, language distribution, email engagement, user growth, and more. These metrics are crucial for understanding user behavior, improving product offerings, and optimizing business strategies.

## **Case Study 1 (Job Data)**
### ***Below is the structure of the table with the definition of each column that you must work on:***

## Table-1: job_data
- job_id: unique identifier of jobs
- actor_id: unique identifier of actor
- event: decision/skip/transfer
- language: language of the content
- time_spent: time spent to review the job in seconds
- org: organization of the actor
- ds: date in the yyyy/mm/dd format. It is stored in the form of text and we use presto to run. no need for date function

### Answer the Following
1. Number of jobs reviewed: Amount of jobs reviewed over time.
    - *Your task: Calculate the number of jobs reviewed per hour per day for November 2020?*
2. Throughput: It is the no. of events happening per second.
    - *Your task: Let’s say the above metric is called throughput. Calculate 7 day rolling average of throughput? For throughput, do you prefer daily metric or 7-day rolling and why?*
3. Percentage share of each language: Share of each language for different contents.
    - *Your task: Calculate the percentage share of each language in the last 30 days?*
4. Duplicate rows: Rows that have the same value present in them.
    - *Your task: Let’s say you see some duplicate rows in the data. How will you display duplicates from the table?*
   
## **Case Study 2 (Investigating metric spike)**
### ***The structure of the table with the definition of each column that you must work on is present in the project image***

## Table-1: users
### This table includes one row per user, with descriptive information about that user’s account.
## Table-2: events
### This table includes one row per event, where an event is an action that a user has taken. These events include login events, messaging events, search events, events logged as users progress through a signup funnel, events around received emails.
## Table-3: email_events
### This table contains events specific to the sending of emails. It is similar in structure to the events table above.

### Answer the Following
1. User Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service.
    - *Your task: Calculate the weekly user engagement?*
2. User Growth: Amount of users growing over time for a product.
    - *Your task: Calculate the user growth for product?*
3. Weekly Retention: Users getting retained weekly after signing-up for a product.
    - *Your task: Calculate the weekly retention of users-sign up cohort?*
4. Weekly Engagement: To measure the activeness of a user. Measuring if the user finds quality in a product/service weekly.
    - *Your task: Calculate the weekly engagement per device?*
5. Email Engagement: Users engaging with the email service.
    - *Your task: Calculate the email engagement metrics?*
