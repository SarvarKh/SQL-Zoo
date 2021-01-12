-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 8            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT name
FROM teacher
WHERE dept IS NULL


-- 2-Task solution:
SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)


-- 3-Task solution:
SELECT teacher.name, dept.name
  FROM teacher LEFT JOIN dept ON (teacher.dept = dept.id)


-- 4-Task solution:
SELECT teacher.name,dept.name
FROM dept LEFT JOIN teacher ON (dept.id = teacher.dept)


-- 5-Task solution:
SELECT teacher.name, COALESCE(mobile,'07986 444 2266')
FROM teacher LEFT JOIN dept ON (teacher.dept = dept.id)


-- 6-Task solution:
SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher LEFT JOIN dept ON (teacher.dept = dept.id)


-- 7-Task solution:
SELECT COUNT(name), COUNT(mobile)
FROM teacher


-- 8-Task solution:
SELECT dept.name, COUNT(teacher.name)
FROM teacher RIGHT JOIN dept ON (teacher.dept = dept.id)
GROUP BY dept.name


-- 9-Task solution:
SELECT name,
CASE WHEN dept IS NULL THEN 'Art'
     ELSE 'Sci'
END
FROM teacher


-- 10-Task solution:
SELECT name,
CASE WHEN dept = 1 THEN 'Sci'
     WHEN dept = 2 THEN 'Sci'
     WHEN dept = 3 THEN 'Art'
     ELSE 'None'
END
FROM teacher