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

