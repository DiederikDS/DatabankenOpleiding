-- Maak een lijst van alle voornamen van Customers die geen voornaam zijn van een Employee.
-- Gebruik daarvoor 2 queries die je combineert met EXCEPT.

SELECT DISTINCT *
FROM 
(SELECT FirstName FROM Customer EXCEPT SELECT FirstName FROM Employee) as Naam

