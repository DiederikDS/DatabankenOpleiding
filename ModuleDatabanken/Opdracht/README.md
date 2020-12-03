%Opdracht Databanken
%3 december 2020
%Philip van Oosten

# Verloop van de opdracht

De vragen staan in dit document en worden herhaald in de bestanden. Na de opdracht mag je dit houden. Indienen van de opdracht gebeurt via GitHub, in de private repository die je ook voor de oefening en je project gebruikt.

Je mag gebruik maken van je eigen notities, van online documentatie, en van eventuele literatuur die je bij je hebt. De enige vereiste voor deze opdracht is dat je die individueel aflegt, dus zonder externe hulp.

Je mag tijdens de opdracht vragen stellen aan de docent via BBB. Gebruik private chat. Als het antwoord relevant is voor iedereen wordt het in de publieke chat gedeeld.

In je private repository kan je een directory `ModuleDatabanken\Opdracht` vinden. Daarin staan bestanden

 + `Vraag1.sql`
 + `Vraag2.sql`
 + ...
 + `Vraag7.sql`

De vraag wordt in elk bestand herhaald en moet in hetzelfde bestand beantwoord worden.

Als een bestaande databank wordt gebruikt, is dat altijd de Chinook databank, die tijdens de lessen ook werd gebruikt in de oefeningen. De structuur en de constraints in Chinook zijn belangrijk.

Je kan de chinook database terugvinden via de pagina [Oefeningen DML Chinook](https://github.com/SyntraWest/CSharp-Databanken-20-21/wiki/Oefeningen-DML-Chinook) in de wiki.

Zorg ervoor dat je antwoord kan uitgevoerd worden. Onuitvoerbare antwoorden kosten veel punten. Het antwoord op de vragen moet correct blijven als er records worden toegevoegd, verwijderd of gewijzigd. Vergeet niet te controleren op GitHub.com of je oplossing effectief online staat. 

Er zijn 7 vragen op in totaal 20 punten. Je hebt tijd tot 22:00.

Veel succes!

----

# Vragen

## Vraag 1 (1 punt)

Maak een query die het volgende resultaat geeft in de kolommen `Titel` en `Naam`. Gebruik je eigen voornaam en familienaam.
Voor *Jane Doe* zou het resultaat er als volgt uitzien:

| Titel    | Naam |
|----------|------|
| Voornaam | Jane |
| Naam     | Doe  |

Je hebt hiervoor de Chinook database **niet** nodig.

## Vraag 2 (1 punt)

Gebruik de huidige datum en tijd en de functie `datepart` om een resultaat als hieronder te genereren.

In de bovenste rij staan jaar, maand en dag, in de onderste rij staan uur, minuut en seconden.

Je hebt de Chinook database hiervoor niet nodig.

| jaar | maand | dag |
|------|-------|-----|
| 2020 | 1     | 15  |
| 18   | 50    | 35  |


Let op de volgorde van de rijen. Het jaar moet in de eerste rij komen, het uur in de tweede rij.

## Vraag 3 (2 punten)

Verwijder de tabel `Employee`. Verwijder eerst alle andere tabellen die je moet verwijderen om `Employee` te kunnen verwijderen.

Verwijder de tabel en niet alleen de records.

Verwijder niet te veel tabellen.

Je oplossing moet in een transactie met rollback staan.

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

## Vraag 5 (4 punten)

Geef voor alle artiesten (*alle* records in tabel Artist) de volgende kolommen weer:

 + **Naam artiest**: de naam van de artiest
 + **Aantal genres**: het aantal genres waarvoor een track van de arties kan gevonden worden
 + **Genres**: een door komma's gescheiden lijst van de genres, waarin elk genre maar 1 keer voorkomt.

Niet alle artiesten hebben 1 of meerdere genres. Als er geen genre te vinden is voor een artiest, geeft dan een plat streepje (`'-'`) weer in plaats van `NULL`.

Sorteer de resultaten aflopend per aantal genres, daarna in omgekeerde volgorde van **Naam artiest**.

Alle artiesten moeten in het resultaat voorkomen, ook zij die geen genres hebben.
Let erop dat 2 artiesten dezelfde naam kunnen hebben in de Chinook database.

Als eerste resultaat krijg je *Iron Maiden*, die tracks van 4 verschillende genres heeft, gevolgd door *Various artists* met 3 verschillende genres.

## Vraag 6 (4 punten)

Gebruik subqueries om te achterhalen welke genres (tabel `Genre`) **niet** voorkomen op een playlist. Het resultaat bevat dus m.a.w. alle genres waarvoor er geen track te vinden is die voorkomt op een playlist.

Gebruik minstens 1 keer een subquery met `IN`, `ANY` of `ALL`. Vergeet ook niet dat je `NOT` kan gebruiken.

Er is een veel-op-veel relatie tussen `Track` en `Playlist`.

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
