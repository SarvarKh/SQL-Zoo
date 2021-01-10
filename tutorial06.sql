-- SQL tasks from sqlzoo.net

/*
***************************************************************
**                                                           **
***** *****            TUTORIAL - 6            ***** *****   **
**                                                           **
***************************************************************
*/

-- 1-Task solution:
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'


-- 2-Task solution:
SELECT id,stadium,team1,team2
  FROM game
  WHERE id  = 1012


-- 3-Task solution:
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
  WHERE teamid = 'GER'


-- 4-Task solution:
SELECT team1, team2, player
  FROM goal JOIN game ON (matchid=id)
  WHERE player LIKE 'Mario%'

-- 5-Task solution:
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10


 -- 6-Task solution: