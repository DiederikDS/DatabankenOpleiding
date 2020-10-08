-- Maak voor alle tracks een overzicht van tracknaam, albumnaam, artiestnaam, naam mediatype, naam genre.
-- Hou er rekening mee dat een track niet altijd een genre heeft. Een track heeft ook niet altijd een album.

SELECT tr.Name as Tracknaam
	, al.Title as Albumnaam
	, ar.Name as Artiestnaam
	, mt.Name as Mediatype
	, g.Name as Genre
FROM Track as tr
LEFT JOIN Album as al
ON tr.AlbumId = al.AlbumId
LEFT JOIN Artist as ar
ON al.ArtistId = ar.ArtistId
LEFT JOIN MediaType as mt
ON tr.MediaTypeId = mt.MediaTypeId
LEFT JOIN Genre as g
ON tr.GenreId = g.GenreId
