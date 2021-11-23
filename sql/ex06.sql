-- Cоставить отчет о битвах кораблей в два суперстолбца.

WITH Report AS (SELECT ROW_NUMBER() OVER(ORDER BY date, name) rn_1,
COUNT(*) OVER() s, date as date_1, name as name_1
FROM Battles)
SELECT first.rn_1, first.name_1, first.date_1,  
       second.rn_1 as rn_2, second.name_1 as name_2, second.date_1 as date_2
FROM Report first LEFT JOIN Report second 
ON first.rn_1 = second.rn_1 - (second.s / 2 + second.s % 2)
WHERE first.rn_1 <= first.s / 2 + first.s % 2