--TITLE: Find the overall friend acceptance count for a given date
--LINK: https://platform.stratascratch.com/coding/9780-find-the-overall-friend-acceptance-count-for-a-given-date?python=

/*
Find the overall friend acceptance count for a given date
Find the overall friend acceptance count for a given date.
Assume the date is 2nd of January 2019.
*/

select 
    count(*)
    from facebook_friendship_requests
    where date_approved='2019-01-02';