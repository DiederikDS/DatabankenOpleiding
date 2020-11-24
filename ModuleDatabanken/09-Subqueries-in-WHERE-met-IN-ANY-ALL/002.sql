-- Geef de voornaam en familienaam van alle klanten (Customer) waarvoor er een medewerker (Employee) bestaat met dezelfde voornaam.
-- Los op met een niet-gelinkte subquery.

SELECT FirstName, LastName
FROM Customer
WHERE FirstName IN (
	SELECT FirstName
	FROM Employee
	)
