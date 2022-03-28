--TITLE: Day 1 Common Reactions
--LINK: https://platform.stratascratch.com/coding/9773-day-1-common-reactions?python=

/*
Day 1 Common Reactions
Find the most common reaction for day 1
 by counting the number of occurrences for each reaction. Output the reaction alongside its number of occurrences.
*/

with tmp as (
select 
    reaction,
    count(reaction) as cnt,
    rank() over(order by count(reaction) desc) as rnk
    from facebook_reactions
    where date_day=1
    group by reaction)
    select reaction,cnt 
    from tmp
    where rnk=1
    ;