--TITLE: 3 Bed Minimum
--LINK: https://platform.stratascratch.com/coding/9627-3-bed-minimum?python=

/*
3 Bed Minimum
Find the average number of beds in each neighborhood that has at least 3 beds in total.

Output results along with the neighborhood name and sort the results based on the number of average beds in descending order.
*/


select 
    neighbourhood,
    avg(beds)
    from airbnb_search_details 
    group by neighbourhood
    having sum(beds)>=3
    order by 2 desc;