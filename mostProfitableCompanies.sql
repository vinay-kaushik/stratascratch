--TITLE: Most Profitable Companies
--LINK: https://platform.stratascratch.com/coding/9680-most-profitable-companies?python=


/*
Most Profitable Companies
Find the 3 most profitable companies in the entire world.
Output the result along with the corresponding company name.
Sort the result based on profits in descending order.
*/

with tmp as (
select 
    company,
    profits,
    dense_rank() over(order by profits desc) as rnk
    from forbes_global_2010_2014)
select company,profits from tmp where rnk<=3
    ;