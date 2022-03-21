--TITLE: Find libraries with the highest number of total renewals.
--LINK: https://platform.stratascratch.com/coding/9930-find-libraries-with-the-highest-number-of-total-renewals?python=

/*
Find libraries with the highest number of total renewals.
Output the home library definition along with the corresponding total renewals.
Order records by total renewals in descending order.
*/

select 
    home_library_definition,
    sum(total_renewals)
    from library_usage
    group by 1
    order by 2 desc;