-- write your queries here

--QUERY 1

SELECT * FROM owners FULL JOIN vehicles ON vehicles.owner_id = owners.id;

--QUERY 2

SELECT first_name, last_name, COUNT(owner_id) FROM owners JOIN
vehicles ON owners.id = vehicles.owner_id GROUP BY 
(first_name, last_name) ORDER BY first_name;

--QUERY 3

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(owner_id) 
FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY 
(first_name, last_name) HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000 
ORDER BY first_name DESC;
