--TITLE: Classify Business Type
--LINK: https://platform.stratascratch.com/coding/9726-classify-business-type?python=

/*
Classify each business as either a restaurant, cafe, school, or other. 
A restaurant should have the word 'restaurant' in the business name. For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in the business name for schools.
All other businesses should be classified as 'other'. Output the business name and the calculated classification.
*/


select distinct business_name,
    case 
        when lower(business_name) ilike '%school%' then 'school'
        when lower(business_name) ilike '%cafe%' or lower(business_name) like '%coffee%' or lower(business_name) ilike '%café%' then 'cafe'
        when lower(business_name) ilike '%restaurant%' then 'restaurant'
        else 'other'
        end as business_type
from sf_restaurant_health_violations;