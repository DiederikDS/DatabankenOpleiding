-- Bekijk de documentatie van CASE: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?  view=sql-server-2017
-- Maak van de tabel Customer een overzicht met kolommen voornaam, familienaam en plaats.
-- Voornaam en familienaam zijn aliassen van de FirstName en LastName kolommen
-- Plaats is het land (Country) als dat niet gelijk is aan USA of Canada.
-- Als het land gelijk is aan 'USA', geef dan State + ' (US)' weer.
-- Als het land Canada is, geef dan Country + ' (' + State + ')' weer.


SELECT FirstName voornaam, LastName familienaam,
    CASE Country
        WHEN 'USA' THEN State + ' (US)'
        WHEN 'Canada' THEN Country + ' (' + State + ')'
        ELSE Country
    END AS plaats
FROM Customer