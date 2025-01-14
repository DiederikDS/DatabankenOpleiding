/*
Opdracht module databanken 20-21

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

*/

-- Noteer hier je antwoord

SELECT  Art.Name AS 'Naam artiest'
	, COUNT( DISTINCT Tr.GenreId) AS 'Aantal genres'
	, COALESCE( STRING_AGG(Gr.Name, ' , ') , '-' ) AS Genres
FROM Artist AS Art
	FULL OUTER JOIN Album AS Alb ON Art.ArtistId = Alb.ArtistId
	LEFT OUTER JOIN Track AS Tr ON Alb.AlbumId = Tr.AlbumId
	LEFT OUTER JOIN Genre AS Gr ON Tr.GenreId = Gr.GenreId
GROUP BY Art.Name
ORDER BY COUNT( DISTINCT Tr.GenreId) DESC
	, Art.Name DESC