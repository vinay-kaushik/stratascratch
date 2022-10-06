--TITLE: Fastest Hometowns
--LINK: https://platform.stratascratch.com/coding/2066-fastest-hometowns?code_type=1


with top_three as (
select 
    hometown,
    avg(net_time) as a_net,
    rank() over(order by avg(net_time) ) as rnk
    from marathon_male
    group by 1)
select hometown,a_net from top_three where rnk<=3
    ;