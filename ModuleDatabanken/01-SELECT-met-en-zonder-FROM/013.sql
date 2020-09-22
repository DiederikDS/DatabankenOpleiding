-- Bekijk de documentatie van CASE: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?  view=sql-server-2017  
-- Maak van de tabel Customer een overzicht met kolommen voornaam, familienaam en plaats.  
-- Voornaam en familienaam zijn aliassen van de FirstName en LastName kolommen  
-- Plaats is het land (Country) als State NULL is.  
-- Als State niet NULL is, geef je "State (Country)" weer

SELECT FirstName as Voornaam
		, LastName as Familienaam
		, Plaats = CASE
			WHEN State is null then Country
			ELSE State + ' (' + Country + ' )'
		END
FROM Customer


