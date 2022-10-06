--TITLE: Session Type Duration
--LINK: https://platform.stratascratch.com/coding/2011-session-type-duration?code_type=1


select 
    avg(session_end-session_start) as session_duration,
    session_type
from twitch_sessions
    group by session_type;

