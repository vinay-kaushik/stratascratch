--TITLE: Rank guests based on their ages
--LINK: https://platform.stratascratch.com/coding/10160-rank-guests-based-on-their-ages?code_type=1


select 
    guest_id,
    age,
    rank() over(order by age desc) as rnk
from airbnb_guests;