-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 0            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT population 
FROM world
  WHERE name = 'Germany'


-- 2-Task solution:
SELECT name, population 
FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');


-- 3-Task solution:
SELECT name, area 
FROM world
  WHERE area BETWEEN 200000 AND 250000
