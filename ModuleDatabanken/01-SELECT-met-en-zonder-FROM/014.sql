-- Oefening met COALESCE: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/coalesce-transact-sql?view=sql-server-2017  
-- Geef van de tabel Customer de landen (Country) en deelstaten of provincies (State) waar klanten wonen.  
-- Als er voor een land geen deelstaat of provincie is (dus als de waarde in die kolom NULL is), geef dan '(heel het land)' weer in plaats van NULL.

SELECT Country
		, ISNULL(State, '(heel het land)')
		FROM Customer
