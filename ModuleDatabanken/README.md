# Oefening module databanken

## Oefeningen DML

Voor deze oefeningen gebruik je de Chinook-database.

Maak verbinding met een database server, open het script dat je [hier kan downloaden](https://raw.githubusercontent.com/lerocha/chinook-database/master/ChinookDatabase/DataSources/Chinook_SqlServer.sql) in SSDT of SSMS en voer het uit.

Via de SQL Server service waarmee je was verbonden tijdens uitvoeren van het script, beschik je nu over de Chinook database.

Voorstel eindopdracht:

Ik verzamel muziek (hoofdzakelijk cd's), ik vroeg me af of ik hier rond een database voor een applicatie kan maken. Met deze fictieve applicatie kan je, je verzameling opslaan, en delen met andere gebruikers.
Volgende tabellen kunnen gemaakt worden:Album, Genre, Arties, Sub-genre, #tracks, Recentie (Score tussen 1-5), platenlabel, mediatype.

Use cases:
 -Ik heb een nieuwe cd gekocht en wil deze toevoegen in mijn database. (Database aanpassen)
 -Ik ben een andere gebruiker en ik wil weten hoeveel cd's er in deze database zitten. (Database raadplegen)
 -Ik wil weten hoeveel percent van de cd's in de database tot genre X behoren. (Database raadplegen/ Analiseren)