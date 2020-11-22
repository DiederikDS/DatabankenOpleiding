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
    [Auteur]       NVARCHAR (50)  NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    [Dieet]        NVARCHAR (50)  NULL,
    [Label]        NVARCHAR (50)  NULL,
    [Ingrediënten] NVARCHAR (500) NOT NULL,
    [Beschrijving] NVARCHAR (500) NOT NULL,
    [Reviews]      NVARCHAR (500) NULL,
    [Reviewers]    NVARCHAR (500) NULL
);

##### Records

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'pasta, melk, quorn, boter, niet zelfrijzende bloem, zout, peper, nootmuskaat, kaas', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, Reviewers)
VALUES ('2', 'Spiegelei', 'Sarah Vandenberghe', 'Ontbijt, Dinner, Lunch', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviewers)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'ei, room, chocolade, suiker, vanille poeder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'Broodjes, Gehakt burger, Sla, Tomaat, Ajuin, Majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig, Vraagt niet veel tijd en vult goed', 'Peter Deblauwe, Pieter Steen' );



### 1NF

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
    [Reviewers]    NVARCHAR (500) NULL
);

##### Records

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'pasta', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'melk', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'quorn', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'boter', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'niet zelfrijzende bloem', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'zout', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'peper', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'nootmuskaat', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Dieet, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('1', 'Macaroni', 'Diederik De Soete', 'Lunch', 'Vegetarisch', 'kaas', 'Italiaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Goed!', 'Herman Vertongen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, Reviewers)
VALUES ('2', 'Spiegelei', 'Sarah Vandenberghe', 'Ontbijt', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', 'Ilse Capon');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, Reviewers)
VALUES ('2', 'Spiegelei', 'Sarah Vandenberghe', 'Dinner', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', 'Ilse Capon');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving, Reviews, Reviewers)
VALUES ('2', 'Spiegelei', 'Sarah Vandenberghe', 'Lunch', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Klassiek', 'Ilse Capon');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'chocolade', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Beschrijving)
VALUES ('3', 'Chocomousse', 'Diederik De Soete', 'Dessert', 'vanille poeder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.');

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'broodjes', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'broodjes', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'gehakt burger', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'gehakt burger', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'sla', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'sla', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'tomaat', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'tomaat', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'ajuin', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'ajuin', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lekker en vettig', 'Peter Deblauwe' );

INSERT INTO Recepten (ReceptId, Naam, Auteur, Maaltijd, Ingrediënten, Label, Beschrijving, Reviews, Reviewers)
VALUES ('4', 'Hamburger', 'Robrecht De Soete', 'Dinner', 'majonaise', 'Amerikaans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Vraagt niet veel tijd en vult goed', 'Pieter Steen' );




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