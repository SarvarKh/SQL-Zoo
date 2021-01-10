-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 3            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


 -- 2-Task solution:
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'


 -- 3-Task solution:
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

 
 -- 4-Task solution:
 SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000

 
 -- 5-Task solution:
 SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989


 -- 6-Task solution:
 SELECT * 
FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')


 -- 7-Task solution:
 SELECT winner
FROM nobel
WHERE winner LIKE 'John%'


 -- 8-Task solution:
 SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)


 -- 9-Task solution:
 SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND NOT subject IN ('Chemistry ', 'Medicine')


 -- 10-Task solution:
 SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)


 -- 11-Task solution:
 SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG'


 -- 12-Task solution:
 SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL'


-- 13-Task solution:
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'


-- 14-Task solution:
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner
