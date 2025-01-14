/*

(3 punten)

Verwijder alles uit de tabel InvoiceLine.
--
Pas op! Andere vragen gaan er niet van uit dat er geen data in die tabel zit.
Zorg dus dat je de database kan herstellen
of het verwijderen ongedaan kan maken met rollback.

*/

    BEGIN TRANSACTION
    DELETE FROM InvoiceLine
    ALTER TABLE [dbo].InvoiceLine DROP CONSTRAINT FK_InvoiceLineInvoiceId, FK_InvoiceLineTrackId
    ROLLBACK TRANSACTION