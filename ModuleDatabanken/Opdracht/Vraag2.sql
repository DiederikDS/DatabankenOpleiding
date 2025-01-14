/*
Opdracht module databanken 20-21

## Vraag 2 (1 punt)

Gebruik de huidige datum en tijd en de functie `datepart` om een resultaat als hieronder te genereren.

In de bovenste rij staan jaar, maand en dag, in de onderste rij staan uur, minuut en seconden.

Je hebt de Chinook database hiervoor niet nodig.

| jaar | maand | dag |
|------|-------|-----|
| 2020 | 1     | 15  |
| 18   | 50    | 35  |


Let op de volgorde van de rijen. Het jaar moet in de eerste rij komen, het uur in de tweede rij.

*/

-- Noteer hier je antwoord

SELECT DATEPART(YEAR, CURRENT_TIMESTAMP) AS jaar
	, DATEPART(MONTH, CURRENT_TIMESTAMP) AS Maand
	, DATEPART(DAY, CURRENT_TIMESTAMP) AS dag
UNION 
SELECT DATEPART(HOUR, CURRENT_TIMESTAMP)
	, DATEPART(MINUTE, CURRENT_TIMESTAMP)
	, DATEPART(SECOND, CURRENT_TIMESTAMP)
ORDER BY jaar DESC