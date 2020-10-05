-- Hoeveel artiesten zijn er die geen album hebben? Of minder specifiek verwoord: zijn er artiesten opgeslagen in de database waarvoor er geen album is?
-- Los op met een outer join en met IS (NOT) NULL in de WHERE clause. 

SELECT COUNT(ISNULL(NULL, Name))
FROM Album
FULL OUTER JOIN Artist
ON Album.AlbumId = Artist.ArtistId


