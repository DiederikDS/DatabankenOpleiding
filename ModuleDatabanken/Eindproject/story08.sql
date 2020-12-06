-- Als beheerder wil ik een review verwijderen met taalgebruik die niet voldoet aan onze gebruikersovereenkomst.

BEGIN TRANSACTION

DELETE FROM Reviews
WHERE Review LIKE '%Potvolkoffie%'

COMMIT