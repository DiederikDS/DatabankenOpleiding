-- Maak een overzicht van albumnaam en artiestnaam voor alle albums die terug te vinden zijn in de Chinook database.

SELECT Name as Artiestnaam
	, Title as Albumnaam
FROM Artist
RIGHT JOIN Album
ON Album.AlbumId = Artist.ArtistId


