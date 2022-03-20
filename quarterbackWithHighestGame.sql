--TITLE: Find quarterbacks who have achieved high average game points during their careers.
--LINK: https://platform.stratascratch.com/coding/9961-find-quarterbacks-who-have-achieved-high-average-game-points-during-their-careers?python=


/*
Find quarterbacks who have achieved high average game points during their careers

 Output the quarterback along with the corresponding average points.
 Order records by average points in descending order.
*/

select 
    qb,
    avg(game_points)
    from qbstats_2015_2016
    group by qb
    order by 2 desc;