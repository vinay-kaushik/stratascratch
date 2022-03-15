--TITLE: Popularity Of Hack
--LINK: https://platform.stratascratch.com/coding/10061-popularity-of-hack?python=

select fe.location,avg(fhs.popularity) from facebook_employees fe,
    facebook_hack_survey fhs where fe.id=fhs.employee_id group by 1;