--TITLE: Monthly Active Users
--LINK: https://platform.stratascratch.com/coding/2051-monthly-active-users?code_type=1


select 
    account_id,
    count(distinct user_id) as monthly_active
from sf_events
    where extract(month from date)=1
    and extract(year from date)=2021
    group by 1;