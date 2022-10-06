--TITLE: Highest Total Miles
--LINK: https://platform.stratascratch.com/coding/10169-highest-total-miles?code_type=1

with highest_total_miles as (
select 
    purpose,
    sum(miles) as total_mileage,
    rank() over(order by sum(miles) desc) as rnk
from my_uber_drives
    where category='Business'
    group by 1)
select purpose,total_mileage from highest_total_miles
where rnk<4;