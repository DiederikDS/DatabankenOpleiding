-- Hoeveel artiesten zijn er die geen album hebben? Of minder specifiek verwoord: zijn er artiesten opgeslagen in de database waarvoor er geen album is?
-- Los op met een outer join en met IS (NOT) NULL in de WHERE clause. 

SELECT COUNT (DISTINCT Artist.Name)
FROM Artist
FULL OUTER JOIN Album
 ON Artist.ArtistId = Album.ArtistId
WHERE Album.Title IS NULL


