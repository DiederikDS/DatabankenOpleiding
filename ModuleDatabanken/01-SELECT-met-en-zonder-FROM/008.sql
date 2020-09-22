-- Geef voornaam, familienaam en land van alle klanten (tabel customer).  
-- Zorg dat de kolomnaam in het Nederlands wordt weergegeven

SELECT FirstName as Voornaam
		, LastName as Achternaam
		, Country as Land
		FROM Customer
