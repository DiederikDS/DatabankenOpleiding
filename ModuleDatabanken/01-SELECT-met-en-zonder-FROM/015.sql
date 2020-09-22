-- Oefening met NULLIF: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/nullif-transact-sql?view=sql-server-2017  
-- Gebruik NULLIF om NULL weer te geven in kolom "zelfde"  
-- Gebruik NULLIF met 2 verschillende waarden om 'anders' weer te geven in kolom "verschillend"

SELECT NULLIF(1 ,1) as Zelfde
		,Verschillend = NULLIF('anders', '')
