-- Для каждой пары последовательных дат, dt1 и dt2, поступления средств 
-- (таблица Income_o) найти сумму выдачи денег (таблица Outcome_o) 
-- в полуоткрытом интервале (dt1, dt2].

WITH distinct_dates AS (SELECT DISTINCT DATE FROM income_o ) ,
    intervals AS (SELECT DATE dt1, lead(DATE) OVER (order by DATE) AS dt2 FROM distinct_DATEs ) 
SELECT 
    coalesce(sum(out),0),
    dt1,
    dt2 
FROM intervals 
LEFT JOIN Outcome_o 
ON Outcome_o.DATE > dt1 AND Outcome_o.DATE <= dt2 
WHERE dt2 IS NOT NULL 
GROUP BY dt1, dt2;