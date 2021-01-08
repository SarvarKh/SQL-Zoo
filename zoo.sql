-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 1            ***** *****   **
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


/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 2            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT name 
FROM world
  WHERE name LIKE 'Y%'


-- 2-Task solution:
SELECT name 
FROM world
  WHERE name LIKE '%y'


-- 3-Task solution:
SELECT name 
FROM world
  WHERE name LIKE '%x%'


/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 3            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:



-- 2-Task solution:



-- 3-Task solution:


