--TITLE: Primary Key Violation
--LINK: https://platform.stratascratch.com/coding/2107-primary-key-violation?code_type=1


(select 
    cust_id,
    count(cust_id) as cnt
from dim_customer
    group by 1 
    having count(cust_id)>1);