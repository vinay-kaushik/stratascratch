--TITLE: Ranking Hosts By Beds
--LINK: https://platform.stratascratch.com/coding/10161-ranking-hosts-by-beds?code_type=1

select 
    host_id,
    sum(n_beds) as total_beds,
    dense_rank() over( order by sum(n_beds) desc) as d_dnk
from airbnb_apartments
group by 1
order by 3 ;