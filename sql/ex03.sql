-- Выведите список комнат, которые были зарезервированы 
-- в течение 12 недели 2020 года.

SELECT DISTINCT Rooms.*
FROM Rooms
JOIN Reservations
ON Rooms.id=Reservations.room_id
WHERE WEEK(start_date, 1) = 12 AND YEAR(start_date)=2020;