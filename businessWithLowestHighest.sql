--TITLE: Find all businesses whose lowest and highest inspection scores are different.
--LINK: https://platform.stratascratch.com/coding/9731-find-all-businesses-whose-lowest-and-highest-inspection-scores-are-different?python=

/*
Find all businesses whose lowest and highest inspection scores are different.
Output the corresponding business name and the lowest and highest scores of each business.
Order the result based on the business name in ascending order.
*/

select 
    s1.business_name,
    min(s1.inspection_score),
    max(s1.inspection_score)
from sf_restaurant_health_violations s1,
    sf_restaurant_health_violations s2
    where s1.business_name=s2.business_name
    and s1.inspection_score!=s2.inspection_score
    group by 1
order by 1;