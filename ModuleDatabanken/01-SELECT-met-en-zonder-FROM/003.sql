-- Geef de vierkantswortel van 2,
-- de vierkantswortel van 30,
-- de som van beide vierkantsworels
-- en de vierkantswortel van de som van beiden.

SELECT SQRT(2)
	, SQRT(30)
	,SQRT(2) + SQRT(30)
	, SQRT(SQRT(2) + SQRT(30))

2,62515506921491

--Ander voorbeeld

SELECT vkw2
	, vkw30
	, vkw2 + vkw30
	, sqrt(vkw2 + vkw30)
FROM (
	SELECT sqrt(2) vkw2
		, sqrt(30) vkw30
	) AS vkws