-- Geef de voornaam en familienaam van alle klanten (Customer) waarvoor er een medewerker (Employee) bestaat met dezelfde voornaam.
-- Los op met een niet-gelinkte subquery, gedeclareerd in een parameter (dus met DECLARE en SET).

DECLARE @firstname TABLE (Firstname VARCHAR(100))

INSERT INTO @firstname
SELECT firstname
FROM Employee

SELECT firstname, lastname
FROM Customer
WHERE firstname IN (

		SELECT *
		FROM @firstname
		)



