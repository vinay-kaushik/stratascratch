--TITLE: Number Of Units Per Nationality
--LINK: https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?python=


/*
Number Of Units Per Nationality
Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.
*/

select 
    ah.nationality,
    count( distinct au.unit_id)
from airbnb_hosts ah ,
    airbnb_units au
    where ah.host_id=au.host_id
    and au.unit_type='Apartment'
    and ah.age<30
    group by 1
    ;