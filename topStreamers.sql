--TITLE: Top Streamers 
--LINK: https://platform.stratascratch.com/coding/2010-top-streamers?code_type=1


with cmp as (
select 
    user_id,
    sum(case when session_type='streamer' then 1 else 0 end) as streamer,
    sum(case when session_type='viewer' then 1 else 0 end) as viewer
    from twitch_sessions
    group by 1)
select * from cmp
    where streamer>viewer;