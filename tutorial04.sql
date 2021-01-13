-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 4            ***** *****   **
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


-- 7-Task solution:
SELECT continent, name, area
FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area >0)



-- 8-Task solution:
SELECT continent, MIN(name) AS name
FROM world
GROUP BY continent


-- 9-Task solution:
SELECT name, continent, population
FROM world x
WHERE 25000000 >= ALL(SELECT population
                        FROM world y
                       WHERE x.continent = y.continent
                         AND y.population>0)
  


-- 10-Task solution:
SELECT name, continent
FROM world x
WHERE population > ALL(SELECT population*3
                         FROM world y
                        WHERE x.continent = y.continent
                          AND y.name != x.name)