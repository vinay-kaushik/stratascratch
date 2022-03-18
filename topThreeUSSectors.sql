--TITLE: Top 3 US Sectors
--LINK: https://platform.stratascratch.com/coding/9802-top-3-us-sectors?python=

/*
Top 3 US Sectors
Find the top 3 sectors in the United States by the average rank. 
Output the average rank along with the sector name. Order records based on the average rank in ascending order.
*/


select avg(rank),sector from forbes_global_2010_2014
    where country='United States'
group by sector order by 1 desc limit 3
;