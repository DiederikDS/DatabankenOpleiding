-- Maak een lijst van alle voornamen die zowel de voornaam van een Employee als van een Customer zijn.
-- Gebruik daarvoor 2 queries die je combineert met INTERSECT.

SELECT DISTINCT *
FROM 
(SELECT FirstName FROM Employee UNION SELECT FirstName FROM Customer) as Naam
