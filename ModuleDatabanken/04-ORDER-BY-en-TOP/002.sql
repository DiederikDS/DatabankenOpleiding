﻿-- Geef de voor de tracks het aantal minuten (gebruik de FLOOR functie om het aantal minuten naar beneden af te ronden).
-- Geef ook de naam en de prijs van de track.
-- Selecteer enkel de tracks die minder dan 10 minuten duren.
-- Orden de tracks aflopend op aantal minuten (afgerond naar beneden), en daarna oplopend op de prijs per track.
-- Gebruik SELECT TOP om enkel de eerste 100 tracks weer te geven.

SELECT TOP(100)
	FLOOR (Milliseconds / 60000) as LengteMinuten
	, UnitPrice
	, Name
FROM Track
WHERE FLOOR (Milliseconds / 60000) < 10
ORDER BY 
	FLOOR (Milliseconds / 60000) Desc
	, UnitPrice Asc;
