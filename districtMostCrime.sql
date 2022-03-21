--TITLE: Find districts alongside their crime incidents.
--LINK: https://platform.stratascratch.com/coding/9748-find-districts-with-the-most-crime-incidents?python=

/*
Find districts alongside their crime incidents.
Output the district name alongside the number of crime occurrences.
Order records based on the number of occurrences in descending order.
*/



select 
    pd_district,
    count(pd_district) as occurences
    from sf_crime_incidents_2014_01
    group by 1
    order by 2 desc;