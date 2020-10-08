-- Geef voornaam en familienaam van alle klanten die in België of Frankrijk wonen  
-- Gebruik geen OR, maar wel IN

SELECT FirstName
	, LastName
FROM Customer
WHERE Country IN ('Belgium', 'France')


