--TITLE: Find the total number of approved friendship requests in January and February
--LINK: https://platform.stratascratch.com/coding/9789-find-the-total-number-of-approved-friendship-requests-in-january-and-february?python=

/*
Find the total number of approved friendship requests in January and February
Find the total number of approved friendship requests in January and February.
*/
select 
    count(*)
    -- extract(month from date_approved)
from facebook_friendship_requests
    where extract(month from date_approved) in (1,2);