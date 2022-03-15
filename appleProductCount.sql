--TITLE: Apple Product Counts
--LINK: https://platform.stratascratch.com/coding/10141-apple-product-counts?python=


/*
Apple Product Counts
Find the number of Apple product users and the number of total users with a device for each language. 
Assume Apple products are only MacBook-Pro, iPhone 5s, and iPad-air.  Output the language along with the total 
number of Apple users and users with any device. Order your results based on the number of total users in descending order.
*/

select language,
    count(distinct case when lower(device) in ('macbook pro','iphone 5s','ipad air')
        then pe.user_id else null end) as n_apple_users,
    count(distinct pe.user_id) as n_total_users
    from playbook_events pe,playbook_users pu
    where pe.user_id=pu.user_id
    group by language;
