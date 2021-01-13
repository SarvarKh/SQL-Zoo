-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 5            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT SUM(population)
FROM world


-- 2-Task solution:
SELECT DISTINCT continent
FROM world


-- 3-Task solution:
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'


-- 4-Task solution:
SELECT COUNT(area)
FROM world
WHERE area > 1000000


-- 5-Task solution:
SELECT SUM(population)
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')


-- 6-Task solution:
SELECT continent, COUNT(name)
FROM world
GROUP BY continent


-- 7-Task solution:
SELECT continent, COUNT(name)
FROM world
WHERE population > 10000000
GROUP BY continent


-- 8-Task solution:
SELECT continent
FROM world x
WHERE 100000000 < ALL(SELECT SUM(population)
                        FROM world y
                       WHERE x.continent = y.continent
)
GROUP BY continent