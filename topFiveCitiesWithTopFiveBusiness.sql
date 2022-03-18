--TITLE: Find the top 5 cities with the most 5 star businesses
--LINK: https://platform.stratascratch.com/coding/10148-find-the-top-10-cities-with-the-most-5-star-businesses?python=

/*

Find the top 5 cities with the most 5 star businesses.
Output the city name along with the number of 5-star businesses.
Order records by the number of 5-star businesses in descending order.
*/


select city,five_star from (
select 
     city,
     count(stars) as five_star,
     rank() over(order by count(stars) desc) as rnk
from 
yelp_business
    where stars=5
    group by city) tmp
    where rnk<=5
    ;