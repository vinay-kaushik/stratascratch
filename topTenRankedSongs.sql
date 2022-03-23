--TITLE: Top 10 Ranked Songs
--LINK: https://platform.stratascratch.com/coding/9995-top-10-ranked-songs?python=

/*
Top 10 Ranked Songs
Find the top 10 ranked songs by position. Output the track name along with the corresponding position and sort records 
by the position in descending order and track name alphabetically, as there are many tracks that are tied for the same position.
*/
select 
     distinct trackname,
    position
from spotify_worldwide_daily_song_ranking
    where position<=10
    order by position desc,trackname
    ;