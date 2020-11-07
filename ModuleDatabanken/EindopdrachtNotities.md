# Notities eindopdracht

## Tabellen

 - Recepten
 - Gebruikers
 - Maaltijd
 - Dieet
 - Label
 - IngrediëntenLijst
 - Ingrediënten
 - Beoordelingenlijst

### Nog mogelijkheden: 

## Databases:

### No normalisation:



## Recepten tabel
### Sql script:
#### No normalisation:

CREATE TABLE [dbo].[Recepten] (
    [ReceptId]     INT            NOT NULL,
    [Naam]         NVARCHAR (50)  NOT NULL,
    [Auteur]       NVARCHAR (50)  NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    [Dieet]        NVARCHAR (50)  NULL,
    [Label]        NVARCHAR (50)  NULL,
    [Ingrediënten] NVARCHAR (500) NOT NULL,
    [Beschrijving] NVARCHAR (500) NOT NULL,
    [Reviews]      NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([ReceptId] ASC)
);

##### Records

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Gluttenvrij, Vegetarisch', 'pasta, melk, quorn, boter, niet zelfrijzende bloem, zout, peper, nootmuskaat, kaas', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!, Vegetarisch en lekker' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews)
VALUES ('2', 'Spiegelei', 'Sarah Vandenberghe', 'Ontbijt, Dinner, Lunch', 'ei, zout, peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'ei, room, chocolade, suiker, vanille poeder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');


### 3NF:

CREATE TABLE [dbo].Recepten (
	ReceptId INT PRIMARY KEY
	, Naam NVARCHAR(50) NOT NULL
	, AuteurId INT NOT NULL
	, MaaltijdId INT NOT NULL
	, DieetId INT
	, LabelId INT NOT NULL
	, IngrediëntenLijstId INT NOT NULL
	, ReviewLijstIs INT 
	, Beschrijving NVARCHAR(500) NOT NULL
	);