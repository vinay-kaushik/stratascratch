--TITLE: User Growth Rate
--LINK: https://platform.stratascratch.com/coding/2052-user-growth-rate?code_type=1


with dec_2020 as
(select 
    account_id,
    count(distinct user_id) as dec_cnt
from sf_events
    where extract(month from date)=12 and extract(year from date)=2020
    group by 1),
jan_2021 as 
(select 
    account_id,
    count(distinct user_id) as jan_cnt
from sf_events
    where extract(month from date)=1 and extract(year from date)=2021
    group by 1)

select (j.jan_cnt/d.dec_cnt ::float),j.account_id from dec_2020 d,jan_2021 j
where d.account_id=j.account_id;