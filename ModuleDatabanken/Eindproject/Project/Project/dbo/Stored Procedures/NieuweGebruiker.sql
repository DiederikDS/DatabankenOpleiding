CREATE PROCEDURE NieuweGebruiker @Zipcode INT, @Stad NVARCHAR(50), @GebruikersId INT, @Voornaam NVARCHAR(50), @Achternaam NVARCHAR(50), @Email NVARCHAR(50), @Adres NVARCHAR(50)
AS

IF @Zipcode IN (SELECT ZipCode FROM ZipCodes)
BEGIN
	INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
	VALUES (@GebruikersId, @Voornaam, @Achternaam, @Email, @Adres, @Zipcode)
END
ELSE
BEGIN
	INSERT INTO ZipCodes (ZipCode, Stad)
	VALUES (@Zipcode, @Stad)

	INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
	VALUES (@GebruikersId, @Voornaam, @Achternaam, @Email, @Adres, @Zipcode)
END

RETURN 0