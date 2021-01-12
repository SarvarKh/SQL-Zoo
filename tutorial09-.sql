-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 9-           ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT lastName, party, votes
  FROM ge
 WHERE constituency = 'S14000024' AND yr = 2017
ORDER BY votes DESC


-- 2-Task solution:
SELECT party, votes,
       RANK() OVER (ORDER BY votes DESC) as posn
  FROM ge
 WHERE constituency = 'S14000024' AND yr = 2017
ORDER BY party


-- 3-Task solution:
SELECT yr,party, votes,
      RANK() OVER (PARTITION BY yr ORDER BY votes DESC) as posn
  FROM ge
 WHERE constituency = 'S14000021'
ORDER BY party,yr


-- 4-Task solution:
SELECT constituency,party, votes,
  RANK() OVER (PARTITION BY constituency ORDER BY votes DESC) as posn
  FROM ge
 WHERE constituency BETWEEN 'S14000021' AND 'S14000026'
   AND yr  = 2017
ORDER BY posn, constituency


-- 5-Task solution:
select  constituency,party from 
(
SELECT constituency,party, votes , 
rank() OVER (PARTITION BY constituency order by votes desc) rn
  FROM ge
 WHERE constituency BETWEEN 'S14000021' AND 'S14000026'
   AND yr  = 2017
ORDER BY constituency,votes DESC
) TAB WHERE rn =1


-- 6-Task solution:
SELECT party , COUNT(*)
FROM ge x 
WHERE constituency like 'S%'
AND yr  = 2017 AND votes >= ALL(SELECT votes FROM ge y  WHERE x.constituency = y. constituency AND y.yr = 2017)
GROUP BY party