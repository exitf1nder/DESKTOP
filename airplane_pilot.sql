SELECT last_name, COUNT(last_name) 
FROM pilot INNER JOIN airplane ON pilot.pilot_id = airplane.airplane_id
INNER JOIN airplane_pilot ON pilot.pilot_id = airplane.airplane_id
WHERE model = 'Сухой' 
GROUP BY flight_date, last_name
HAVING flight_date 
BETWEEN '2022-02-01' AND '2022-02-28'