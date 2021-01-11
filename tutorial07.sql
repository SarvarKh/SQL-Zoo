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
SELECT name
FROM casting JOIN actor ON casting.actorid = actor.id
WHERE movieid = (SELECT id FROM movie WHERE title = 'Alien')


-- 8-Task solution:
SELECT title
FROM casting 
  JOIN movie ON casting.movieid = movie.id
  JOIN actor ON casting.actorid = actor.id
WHERE name = 'Harrison Ford'


-- 9-Task solution:
SELECT title
FROM casting 
  JOIN movie ON casting.movieid = movie.id
  JOIN actor ON casting.actorid = actor.id
WHERE name = 'Harrison Ford' AND ord != 1


-- 10-Task solution:
SELECT title, name
FROM casting 
  JOIN movie ON casting.movieid = movie.id
  JOIN actor ON casting.actorid = actor.id
WHERE yr = 1962 AND ord = 1


-- 11-Task solution:
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2


-- 12-Task solution:
SELECT title, name
FROM movie JOIN casting ON (movieid = movie.id
                            AND ord=1)
           JOIN actor ON (actorid=actor.id)
WHERE movie.id IN (
      SELECT movieid FROM casting
         WHERE actorid IN (
           SELECT id FROM actor
              WHERE name='Julie Andrews'))


-- 13-Task solution:
SELECT name
FROM actor
  JOIN casting ON (id = actorid AND (SELECT COUNT(ord) FROM casting WHERE actorid = actor.id AND ord=1)>=15)
GROUP BY name


-- 14-Task solution:
SELECT title, COUNT(actorid)
FROM movie JOIN casting ON (movie.id = movieid)
WHERE yr = 1978
GROUP BY title
ORDER BY COUNT(actorid) DESC, title


-- 15-Task solution:
SELECT name
FROM actor JOIN casting ON (actor.id = actorid)
WHERE movieid IN
  (SELECT id FROM movie WHERE title IN
     (SELECT title FROM movie JOIN casting ON movie.id = movieid WHERE actorid IN
       (SELECT id FROM actor WHERE name = 'Art Garfunkel')))
AND name != 'Art Garfunkel'