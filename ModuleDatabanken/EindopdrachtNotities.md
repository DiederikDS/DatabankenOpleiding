# Notities eindopdracht

## Tabellen

 - Recepten
 - Gebruikers
 - Maaltijd
 - Dieet
 - Label
 - Ingrediënten
 - Ingrediënten
 - Reviews
 - Reviewers

### Nog mogelijkheden: 

## Databases:

### No normalisation:



## Recepten tabel
### Sql script:
#### No normalisation:

CREATE TABLE [dbo].[Recepten] (
    [ReceptId]     INT            NOT NULL,
    [Naam]         NVARCHAR (50)  NOT NULL,
    [AuteurId]     INT            NOT NULL,
    [Auteur]       NVARCHAR (50)  NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    [Dieet]        NVARCHAR (50)  NULL,
    [Label]        NVARCHAR (50)  NULL,
    [Ingrediënten] NVARCHAR (500) NOT NULL,
    [Beschrijving] NVARCHAR (500) NOT NULL,
    [ReviewerId]   INT            NULL,
    [Reviews]      NVARCHAR (500) NULL,
    [Reviewers]    NVARCHAR (500) NULL
);

##### Records

INSERT INTO Recepten (ReceptId, Naam, AuteurId, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'pasta, melk, quorn, boter, niet zelfrijzende bloem, zout, peper, nootmuskaat, kaas', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurId, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('2', 'Spiegelei', '2', 'Sarah Vandenberghe', 'Ontbijt, Dinner, Lunch', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', '2', 'Ilse');

INSERT INTO Recepten (ReceptId, Naam, AuteurId, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik De Soete', 'Dessert', 'ei, room, chocolade, suiker, vanille poeder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurId, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht De Soete', 'Dinner', 'Broodjes, Gehakt burger, Sla, Tomaat, Ajuin, Majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig, Vraagt niet veel tijd en vult goed', '3, 4', 'Peter, Pieter' );



### 1NF

Primaire sleutel: ReceptId, 

CREATE TABLE [dbo].[Recepten] (
    [ReceptId]     INT            NOT NULL,
    [Naam]         NVARCHAR (50)  NOT NULL,
    [AuteurId]     INT            NOT NULL,
    [Auteur]       NVARCHAR (50)  NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    [Dieet]        NVARCHAR (50)  NULL,
    [Label]        NVARCHAR (50)  NULL,
    [Ingrediënten] NVARCHAR (500) NOT NULL,
    [Beschrijving] NVARCHAR (500) NOT NULL,
    [ReviewerId]   INT            NULL,
    [Reviews]      NVARCHAR (500) NULL,
    [Reviewers]    NVARCHAR (500) NULL
);

##### Records

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'pasta', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'melk', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'quorn', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'boter', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'niet zelfrijzende bloem', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'zout', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'peper', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'nootmuskaat', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('1', 'Macaroni', '1', 'Diederik', 'Lunch', 'Vegetarisch', 'kaas', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', '1', 'Herman' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('2', 'Spiegelei', '2', 'Sarah', 'Ontbijt', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', '2', 'Ilse');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('2', 'Spiegelei', '2', 'Sarah', 'Dinner', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', '2', 'Ilse');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('2', 'Spiegelei', '2', 'Sarah', 'Lunch', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', '2', 'Ilse');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik', 'Dessert', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik', 'Dessert', 'room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik', 'Dessert', 'chocolade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik', 'Dessert', 'suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', '1', 'Diederik', 'Dessert', 'vanille poeder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'broodjes', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'broodjes', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'gehakt burger', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'gehakt burger', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'sla', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'sla', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'tomaat', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'tomaat', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'ajuin', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'ajuin', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', '3', 'Peter' );

INSERT INTO Recepten (ReceptId, Naam, AuteurID, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, ReviewerId, Reviewers)
VALUES ('4', 'Hamburger', '3', 'Robrecht', 'Dinner', 'majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', '4', 'Pieter' );




### 2NF



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