--TITLE: Find the country that has the most companies listed on Forbes. 
--LINK: https://platform.stratascratch.com/coding/9795-find-the-country-that-has-the-most-companies-listed-on-forbes?python=

/*
Find the country that has the most companies listed on Forbes.  
Output the country along with the number of companies.
Order records based on the number of companies in descending order.
*/
with tmp as (select 
    country,
    count(company) as cnt,
    rank() over(order by count(company) desc)
    
from forbes_global_2010_2014
    group by country
    )
    select country,cnt from tmp where rank=1;
