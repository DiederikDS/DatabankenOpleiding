/*

(10 punten)

Geef de FirstName, de LastName en Title kolommen
van de tabel Employee voor de employees die geen
vertegenwoordiger zijn voor klanten en die geen
"entry level" werknemers zijn.

Een "entry level" employee is een employee waarvoor
er geen andere employee is die ernaar verwijst
via de kolom ReportsTo.

Een vertegenwoordiger van een klant kan je vinden
via de foreign key FK_CustomerSupportRepId.

Hou geen rekening met klanten waarvoor SupportRepId
onbekend (dus NULL) is; dus laat die klanten weg.

*/
