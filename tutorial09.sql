-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 9            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT COUNT(*)
FROM stops


-- 2-Task solution:
SELECT id
FROM stops
WHERE name = 'Craiglockhart' 


-- 3-Task solution:
SELECT id, name
FROM stops JOIN route ON id = stop
WHERE company = 'LRT' AND num = '4'


-- 4-Task solution:
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*) = 2


-- 5-Task solution:
SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53
AND b.stop = 149


-- 6-Task solution:
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'
AND stopb.name = 'London Road'


-- 7-Task solution:
SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Haymarket'
AND stopb.name = 'Leith'


-- 8-Task solution:
SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'
AND stopb.name = 'Tollcross'


-- 9-Task solution:
SELECT distinct stopy.name,a.company,a.num
FROM route a JOIN route b on 
(a.num = b.num and a.company=b.company)
join stops stopx on (a.stop=stopx.id)
join stops stopy on (b.stop=stopy.id)

where stopx.name = 'Craiglockhart' and a.company = 'LRT';


-- 10-Task solution:
