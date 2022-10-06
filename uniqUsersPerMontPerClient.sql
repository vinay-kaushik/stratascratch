--TITLE: Unique Users Per Client Per Month
--LINK: https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=1

select 
    distinct client_id,
    extract(month from time_id),
    count( distinct user_id)
from fact_events
    group by 1,2
    order by 1;