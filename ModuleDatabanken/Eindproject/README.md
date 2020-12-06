# Oefening module databanken

## Oefeningen DML

Voor deze oefeningen gebruik je de Chinook-database.

Maak verbinding met een database server, open het script dat je [hier kan downloaden](https://raw.githubusercontent.com/lerocha/chinook-database/master/ChinookDatabase/DataSources/Chinook_SqlServer.sql) in SSDT of SSMS en voer het uit.

Via de SQL Server service waarmee je was verbonden tijdens uitvoeren van het script, beschik je nu over de Chinook database.

# Voorstel eindopdracht:



Een applicatie voor het delen van recepten. Je kan recepten uploaden, bekijken, revieuwen, labels (zoals vegetarisch, veganistisch, Oosters, ...), ... .

## Mogelijke tables

 - Gebruikers
 - Recepten
 - Ingredienten 
 - Score
 - Revieuws
 - Labels

## Rollen

 - Ik ben een beheerder van de applicatie, ik heb Admin rechten om recepten, gebruikers, of revieuws te verwijderen ongeacht wie deze gemaakt heeft.
 - Ik ben een actieve gebruiker van de applictie, ik voeg actief recepten toe en laat vaak revieuws achter.
 - Ik ben een passieve gebruiker van de applicatie, ik gebruik de applicatie om recepten op te zoeken, maar ik voeg zelf geen recepten toe. 

## Use cases (Bij meerdere statements, moet de transactie structuur gebruikt worden)

 - Als actieve gebruiker wil ik graag mijn nieuw recept toevoegen aan de database van de applicatie zodat andere gebruikers deze kunnen vinden en gebruiken.
 - Als actieve gebruiker wil ik graag een revieuw achter laten op een recept die ik gevolgd heb van een andere gebruiker.
 - Als actieve gebruiker wil ik graag de labels van mijn recept veranderen zodat deze beter representatief zijn voor het recept.

 - Als passieve gebruiker zoek ik een leuk recept voor het paasontbijt.
 - Als passieve gebruiker ben ik opzoek naar een recept die tortellini bevat, want ik heb veel van dat ingrediënt in huis.
 - Als vegetarische passieve gebruiker zoek ik alle recepten die vegetarisch zijn.
 - Als passieve gebruiker zoek ik alle recepten van gebruiker: Sarah Peeters, want ik probeerde reeds een gerecht van haar.

 - Als beheerder wil ik een review verwijderen met taalgebruik die niet voldoet aan onze gebruikersovereenkomst.
 - Als beheerder wil ik een gebruiker verwijderen die al een lange tijd inactief is.
 - Als beheerder wil ik een recept 5 'Tomatensoep' verwijderen, want deze heeft enkel slechte reviews.


