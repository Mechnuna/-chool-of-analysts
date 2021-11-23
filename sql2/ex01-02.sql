-- 1 Задание
-- Перечисли способы получить количество записей в таблице?

-- Подсчет всех записей
SELECT COUNT(*) FROM Table_name WHERE condition
-- Подсчет всех записей, где есть name
SELECT COUNT(name) FROM Table_name WHERE condition
-- Уникальные значения поля
SELECT COUNT(DISTINCT name) FROM Table_name WHERE condition


-- 2 Задание
-- Выполнится ли этот запрос?
SELECT 
     order_id,
     order_code,
     SUM(order_value)
FROM 
     orders
GROUP BY
     order_id

-- MySql добавит order_code в GROUP BY автоматически и запрос выполнится
-- друге могут не понять надо ли группировать order_code и выдаст ошибку
