-- Вывести отсортированный по количеству перелетов (по убыванию) 
-- и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет

SELECT name,COUNT(Trip.id) as count   
FROM Passenger 
JOIN Pass_in_trip ON Passenger.id=Pass_in_trip.passenger 
JOIN Trip on Trip.id=Pass_in_trip.trip
GROUP BY Passenger.name
HAVING COUNT(Trip.id)>=1
ORDER BY count desc,name ASC