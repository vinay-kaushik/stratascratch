--TITLE: Number of Speakers By Language
--LINK: https://platform.stratascratch.com/coding/10139-number-of-speakers-by-language?python=
 
/*
Number of Speakers By Language
Find the number of speakers of each language by country. Output 
the country, language, and the corresponding number of speakers. Output the result based on the country in ascending order.
*/
select 
    pe.location,
    pu.language,
    count(distinct pu.user_id)
from
    playbook_events pe  join
    playbook_users pu
    on pe.user_id=pu.user_id
    group by 1,2
    order by location;