-- Welk jaar zijn we over 1000 dagen?  
-- Tip: je kan een aantal dagen optellen bij current_timestamp

SELECT DATEPART(year, (CURRENT_TIMESTAMP + 1000))

2023
