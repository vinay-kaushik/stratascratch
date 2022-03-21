--TITLE: Winter Olympics Events List By Height
--LINK: https://platform.stratascratch.com/coding/9943-winter-olympics-events-list-by-height?python=

/*
Winter Olympics Events List By Height
Find the lowest, average, and the highest ages of athletes across all Olympics.
*/
select 
    min(age) as lowest,
    avg(age) as average,
    max(age) as highest
from olympics_athletes_events;