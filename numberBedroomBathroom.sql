-- https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?python=

select city,property_type,avg(bathrooms),avg(bedrooms) from airbnb_search_details
group by city,property_type;