-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 3            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT name 
FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')


-- 2-Task solution:
SELECT name
FROM world
WHERE continent = 'Europe'
  AND gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom')


-- 3-Task solution:
SELECT name, continent
FROM world
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina')
  OR continent = (SELECT continent FROM world WHERE name = 'Australia')
ORDER BY name


-- 4-Task solution:
SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada')
  AND population < (SELECT population FROM world WHERE name = 'Poland')


-- 5-Task solution:
SELECT name,
       concat(ROUND(100*population/(SELECT population FROM world WHERE name = 'Germany')), '%')
FROM world
WHERE continent = 'Europe'


-- 6-Task solution:
SELECT name
FROM world
WHERE gdp > (SELECT MAX(gdp)
               FROM world
              WHERE continent = 'Europe')


-- 3-Task solution:



-- 3-Task solution:


