--TITLE: Find top crime categories in 2014 based on the number of occurrences.
--LINK: https://platform.stratascratch.com/coding/9746-find-top-crime-categories-in-2014-based-on-the-number-of-occurrences?python=

/*
Find top crime categories in 2014 based on the number of occurrences.
Output the number of crime occurrences alongside the corresponding category name.
Order records based on the number of occurrences in descending order
*/
select 
    category,
    count(category)
from sf_crime_incidents_2014_01
where extract(year from date)=2014
group by category 
order by 2 desc;
