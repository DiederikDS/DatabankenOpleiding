-- Geef voornaam en familienaam van alle klanten die in België of Frankrijk wonen  
-- Gebruik OR

SELECT FirstName
	, LastName
FROM Customer
WHERE Country = 'Belgium' OR Country = 'France'

