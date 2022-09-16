--TITLE: Users with Many Searches
--LINK: https://platform.stratascratch.com/coding/2061-users-with-many-searches?code_type=1

with tmp as (
select 
    user_id,count(user_id) 
    from 
    fb_searches 
    where extract(year from date)=2021
    and 
    extract(month from date)=8
    group by 
    user_id
    having count(user_id)>5)
select count(*) from tmp;

