/*
Opdracht module databanken 20-21

## Vraag 7 (4 punten)

Geef een overzicht zoals hieronder

| Tabel                | Aantal | Aantal met zelfde naam | Aantal uniek |
|----------------------|--------|------------------------|--------------|
| Klanten              |     12 |                      5 |            7 |
| Medewerkers          |      5 |                      2 |            3 |

Voor de tabellen `Employee` en `Customer` wordt een overzicht gemaakt. De result set bevat 2 rijen:

 + De eerste rij voor de `FirstName` en `LastName` van de tabel `Customer`
 + De tweede rij voor de `FirstName` en `LastName` van de tabel `Employee`

Enkel de kolommen `FirstName` en `LastName` zijn van belang voor deze vraag. Met de andere gegevens in beide tabellen wordt geen rekening gehouden.

De volgende kolommen worden weergegeven:

 + **Tabel**: bevat de waarde 'Klanten' voor de rij over de tabel `Customer` en 'Medewerkers' voor de rij over de tabel `Employee`
 + **Aantal** is het aantal records in de tabel
 + **Aantal met dezelfde naam**: deze kolom geeft weer hoeveel records er zijn waarvoor de combinatie van voornaam en familienaam meerdere keren voorkomt binnen dezelfde tabel
 + **Aantal uniek**: deze kolom geeft weer hoeveel records een unieke combinatie van voornaam en familienaam hebben binnen de tabel

> De som van de kolommen *Aantal met zelfde naam* en *Aantal uniek* is in beide rijen altijd gelijk aan de kolom *Aantal*

*/

-- Noteer hier je antwoord

SELECT 'Klanten' AS Tabel
	, COUNT(*) AS Aantal
	, COUNT(DISTINCT FirstName) AS 'Aantal met zelfde naam'
	, 'x' AS 'Aantal uniek'
FROM Customer
UNION
SELECT 'Medewerkers'
	, COUNT(*)
	, COUNT(DISTINCT FirstName)
	, 'x'
FROM Employee