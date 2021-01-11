-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 7            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT id, title
 FROM movie
 WHERE yr=1962


-- 2-Task solution:
SELECT yr
FROM movie
WHERE title = 'Citizen Kane'


-- 3-Task solution:
SELECT id, title, yr
 FROM movie
 WHERE title LIKE '%Star Trek%'
 ORDER BY yr


-- 4-Task solution:
SELECT id
 FROM actor
 WHERE name = 'Glenn Close'


-- 5-Task solution:
SELECT id
FROM movie
WHERE title =  'Casablanca' 


-- 6-Task solution:
SELECT name
FROM casting JOIN actor ON casting.actorid = actor.id
WHERE movieid=11768


-- 7-Task solution:


-- 8-Task solution: