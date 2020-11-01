# Notities eindopdracht

## Tabellen

 - Recepten
 - Gebruikers
 - Maaltijd
 - Dieet
 - Label
 - IngrediëntenLijst
 - Ingrediënten

### Nog mogelijkheden: 

 - Beoordelingenlijst
 - Beoordelingen

## Recepten tabel
### Sql script:
CREATE TABLE [dbo].Recepten (
	ReceptId INT PRIMARY KEY
	, Naam NVARCHAR(50) NOT NULL
	, AuteurId INT NOT NULL
	, MaaltijdId INT NOT NULL
	, DieetId INT
	, LabelId INT NOT NULL
	, IngrediëntenLijstId INT NOT NULL
	, Beschrijving NVARCHAR(500) NOT NULL
	);