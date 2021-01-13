-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 2            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT name, continent, population FROM world


-- 2-Task solution:
SELECT name
  FROM world
 WHERE population > 200000000


-- 3-Task solution:
SELECT name, gdp/population
FROM world
WHERE population > 200000000


-- 4-Task solution:
SELECT name, population/1000000 
FROM world
WHERE continent = 'South America'


-- 5-Task solution:
SELECT name, population
FROM world
WHERE name in ('France', 'Germany', 'Italy')


-- 6-Task solution:
SELECT name
FROM world
WHERE name LIKE '%United%'


-- 7-Task solution:
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000


-- 8-Task solution:
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000


-- 9-Task solution:
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'


-- 10-Task solution:
SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp > 1000000000000


-- 11-Task solution:
SELECT name,
       capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)


 -- 12-Task solution:
 SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
AND name != capital


 -- 13-Task solution:
 SELECT name
   FROM world
WHERE name LIKE '%e%' and 
      name LIKE '%i%' and
      name LIKE '%o%' and
      name LIKE '%u%'
  AND name NOT LIKE '% %'