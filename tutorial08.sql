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