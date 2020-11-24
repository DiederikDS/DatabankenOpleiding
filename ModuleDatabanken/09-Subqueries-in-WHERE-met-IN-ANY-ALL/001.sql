-- Hoeveel artiesten zijn er die geen album hebben? Of minder specifiek verwoord: zijn er artiesten opgeslagen in de database waarvoor er geen album is?
-- Los op met een ANY subquery. 

SELECT COUNT(Name)
FROM Artist
WHERE NOT ArtistId = ANY (
	SELECT ArtistId
	FROM Album
	)