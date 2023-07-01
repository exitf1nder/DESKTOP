select client.last_name from client 
join view on client.id = view.client_id
join apartment on view.apartment_id = apartments.id
where apartments.rooms >= 3
group by client.last_name
having count(distinct view.apartment_id) >= 2
--- for Postgres ---
SELECT last_name FROM client
JOIN view USING(client_id)
JOIN apartment USING(apartment_id)
WHERE rooms >= 3
GROUP BY last_name 
HAVING COUNT(distinct apartment_id) >= 2
