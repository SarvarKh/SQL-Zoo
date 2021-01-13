-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 8+           ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT A_STRONGLY_AGREE
  FROM nss
 WHERE question='Q01'
   AND institution='Edinburgh Napier University'
   AND subject='(8) Computer Science'


-- 2-Task solution:
SELECT institution, subject
  FROM nss
 WHERE score >= 100
   AND question='Q15'


-- 3-Task solution:
SELECT institution,score
  FROM nss
 WHERE question='Q15'
   AND score < 50
   AND subject='(8) Computer Science'


-- 4-Task solution:
SELECT subject,SUM(response)
  FROM nss
 WHERE question='Q22'
   AND (subject='(H) Creative Arts and Design'
   OR subject='(8) Computer Science')
GROUP BY subject


-- 5-Task solution:
SELECT subject, SUM(response*A_STRONGLY_AGREE/100)
  FROM nss
 WHERE question='Q22'
   AND (subject='(H) Creative Arts and Design'
   OR subject='(8) Computer Science')
GROUP BY subject


-- 6-Task solution:
SELECT subject, ROUND(SUM(response*A_STRONGLY_AGREE/100)/SUM(response)*100)
  FROM nss
 WHERE question='Q22'
   AND (subject='(8) Computer Science'
   OR subject='(H) Creative Arts and Design')
GROUP BY subject


-- 7-Task solution:
SELECT institution,
  ROUND(SUM(response*score)/SUM(response)) AS score
  FROM nss
 WHERE question='Q22'
   AND (institution LIKE '%Manchester%')
GROUP BY institution
ORDER BY institution


-- 8-Task solution:
SELECT institution,
       SUM(sample),
       (SELECT sample FROM nss y
         WHERE subject='(8) Computer Science'
         AND x.institution = y.institution
         AND question='Q01') AS comp
  FROM nss x
 WHERE question='Q01'
   AND (institution LIKE '%Manchester%')
   GROUP BY institution