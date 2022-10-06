--TITLE: Ranking Most Active Guests 
--LINK: https://platform.stratascratch.com/coding/10159-ranking-most-active-guests?code_type=1


select 
    id_guest,
    sum(n_messages) as num_messages,
    dense_rank() over(order by sum(n_messages) desc) as rnk
from airbnb_contacts
    group by 1;