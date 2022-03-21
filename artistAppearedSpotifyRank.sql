--TITLE: Find how many times each artist appeared on the Spotify ranking list
--LINK: https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?python=

/*
Find how many times each artist appeared on the Spotify ranking list
Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.
*/
select 
    artist,
    count(artist)
    from spotify_worldwide_daily_song_ranking
    group by artist
    order by 2 desc;