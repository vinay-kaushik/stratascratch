--TITLE: Liked Posts
--LINK: https://platform.stratascratch.com/coding/10088-liked-posts?python=

/*
'Liked' Posts
Find the number of posts which were reacted to with a like.
*/



select count(post_id) from facebook_posts
    where post_id in (select post_id from facebook_reactions where reaction='like');