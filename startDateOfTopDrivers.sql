--TITLE: Start Dates Of Top Drivers
--LINK: https://platform.stratascratch.com/coding/10083-start-dates-of-top-drivers?python=

/*
Start Dates Of Top Drivers
Find contract starting dates of the top 5 most paid Lyft drivers. Consider drivers who are still working with Lyft.
*/

select start_date
    from 
    (select start_date,
    rank() over(order by yearly_salary desc) as rnk
    from lyft_drivers
    where end_date is null
    )tmp
    where rnk<=5
    ;