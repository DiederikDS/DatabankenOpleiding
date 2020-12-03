/*
Opdracht module databanken 20-21

## Vraag 4 (4 punten)

Geef de volgende informatie per unieke klant:

 * **voornaam** (Customer.FirstName)
 * **familienaam** (Customer.LastName)
 * **Aantal Facturen**: het aantal facturen (records in tabel Invoice) per klant
 * **Totaal uitgaven klant**: som van de totaalprijzen van de facturen van de klant
 * **Gemiddelde totaalprijs per factuur**: de gemiddelde totaalprijs op de factuur per klant

 Sorteer de resultaten eerst aflopend per gemiddelde totaalprijs per factuur, en als die voor 2 klanten gelijk is, sorteer die klanten dan oplopend volgens familienaam.

Hints:

 * Je hebt vierkante haken nodig voor sommige kolomnamen in het resultaat
 * Je kan de functies COUNT, SUM en AVG gebruiken
 * Facturen kan je vinden in de tabel Invoice
 * De totaalprijs van een factuur kan je vinden in de kolom Invoice.Total
 * FirstName en LastName vormen samen geen unieke sleutel voor een klant. Customer.CustomerId is wel uniek.

*/

-- Noteer hier je antwoord

SELECT Cu.FirstName AS Voornaam
	, Cu.LastName AS Familienaam
	, COUNT(Inv.InvoiceId) AS AantalFacturen
	, SUM(Inv.Total) AS TotaalUitgaven
	, AVG(Inv.Total) AS GemiddeldeTotaalprijs
FROM Customer AS Cu
	JOIN Invoice AS Inv ON Cu.CustomerId = Inv.CustomerId
GROUP BY Cu.FirstName
	, Cu.LastName
ORDER BY GemiddeldeTotaalprijs DESC
	, Familienaam ASC