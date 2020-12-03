/*
Opdracht module databanken 20-21

## Vraag 6 (4 punten)

Gebruik subqueries om te achterhalen welke genres (tabel `Genre`) **niet** voorkomen op een playlist. Het resultaat bevat dus m.a.w. alle genres waarvoor er geen track te vinden is die voorkomt op een playlist.

Gebruik minstens 1 keer een subquery met `IN`, `ANY` of `ALL`. Vergeet ook niet dat je `NOT` kan gebruiken.

Er is een veel-op-veel relatie tussen `Track` en `Playlist`.


*/

-- Noteer hier je antwoord

SELECT Name
FROM Genre
WHERE GenreId NOT IN (
	SELECT GenreId
	FROM Track
	WHERE TrackId = ANY (
		SELECT TrackId
		FROM PlaylistTrack ))