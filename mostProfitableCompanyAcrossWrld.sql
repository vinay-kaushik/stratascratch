--TITLE: Find the most profitable company in the financial sector of the entire world along with its continent
--LINK: https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?python=

/*
Find the most profitable company in the financial sector of the entire world along with its continent
Find the most profitable company from the financial sector. Output the result along with the continent.
*/

select 
    company,
    continent
    from forbes_global_2010_2014
    where sector = 'Financials' AND 
         profits in (select max(profits) from forbes_global_2010_2014);