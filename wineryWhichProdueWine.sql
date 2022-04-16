--TITLE: Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut
--LINK: https://platform.stratascratch.com/coding/10026-find-all-wineries-which-produce-wines-by-possessing-aromas-of-plum-cherry-rose-or-hazelnut?python=

/*
Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut
Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut.
Output unique winery values only.
*/

select distinct winery
from winemag_p1
where lower(description) LIKE '%plum%' 
or lower(description) LIKE '%cherry%'
or lower(description) LIKE '%rose%'
or lower(description) LIKE '%hazelnut%'