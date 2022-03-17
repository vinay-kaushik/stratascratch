--TITLE: Find all posts which were reacted to with a heart
--LINK: https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?python=

/*Find all posts which were reacted to with a heart
Find all posts which were reacted to with a heart.*/

select 
    distinct(fp.*)
    from facebook_reactions fr,facebook_posts fp
    where fr.post_id=fp.post_id
    and fr.reaction='heart';