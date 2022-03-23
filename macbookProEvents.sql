--TITLE: MacBook Pro Events 
--LINK: https://platform.stratascratch.com/coding/10140-macbook-pro-events?python=

/*
MacBook Pro Events
Find how many events happened on MacBook-Pro per company in Argentina from users that do not speak Spanish.
Output the company id, language of users, and the number of events performed by users.
*/

select 
    pu.company_id,
    pu.language,
    count(pe.user_id)
from
    playbook_events pe,
    playbook_users pu
    where pe.user_id=pu.user_id
     and pe.device='macbook pro'
     and pe.location='Argentina'
     and pu.language<>'Spanish'
     group by 1,2
;
