--TITLE: Find the number of complaints that ended in a violation.
--LINK: https://platform.stratascratch.com/coding/9733-find-the-number-of-complaints-that-ended-in-a-violation?python=


select count(*) as n_count from sf_restaurant_health_violations where risk_category is not null
and inspection_type='Complaint';