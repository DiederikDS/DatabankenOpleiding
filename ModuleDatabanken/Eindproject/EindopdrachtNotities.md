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
    [ReceptId]       INT            NOT NULL,
    [ReceptNaam]     NVARCHAR (50)  NOT NULL,
    [Ingrediënt]     NVARCHAR (50)  NOT NULL,
    [Beschrijving]   NVARCHAR (500) NOT NULL,
    [Tijd]           INT                NULL,
    [AantalPersonen] INT                NULL,
    [Maaltijd]       NVARCHAR (50)  NOT NULL,
    [Label]          NVARCHAR (50)  NOT NULL,
    [VoorNaam]       NVARCHAR (50)  NOT NULL,
    [AchterNaam]     NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (50)  NOT NULL,
    [Adres]          NVARCHAR (50)  NOT NULL,
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
    [Review]         NVARCHAR (200)     NULL,
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptId] ASC)
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

CREATE TABLE [dbo].[Gebruikers] (
    [GebruikersId]   INT            NOT NULL,
    [VoorNaam]       NVARCHAR (50)  NOT NULL,
    [AchterNaam]     NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (50)  NOT NULL,
    [Adres]          NVARCHAR (50)  NOT NULL,
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL
    CONSTRAINT [PK_Gebruikers] PRIMARY KEY CLUSTERED ([GebruikersId] ASC)
);

CREATE TABLE [dbo].[Recepten] (
    [ReceptId]       INT            NOT NULL,
    [ReceptNaam]     NVARCHAR (50)  NOT NULL,
    [GebruikersId]   INT            NOT NULL,
    [Beschrijving]   NVARCHAR (500) NOT NULL,
    [Tijd]           INT                NULL,
    [AantalPersonen] INT                NULL,
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptId] ASC),
    CONSTRAINT [FK_ReceptenGebruikersId] FOREIGN KEY ([GebruikersId]) REFERENCES [dbo].[Gebruikers] ([GebruikersId])
);

CREATE TABLE [dbo].[Reviews] (
    [ReviewId]     INT             NOT NULL,
    [Review]       NVARCHAR (200)  NOT NULL,
    [ReceptId]     INT             NOT NULL,
    [GebruikersId] INT             NOT NULL
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([ReviewId] ASC),
    CONSTRAINT [FK_ReviewsReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReviewsGebruikersId] FOREIGN KEY ([GebruikersId]) REFERENCES [dbo].[Gebruikers] ([GebruikersId])
);

CREATE TABLE [dbo].[Maaltijden] (
    [MaaltijdId]   INT            NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Maaltijden] PRIMARY KEY CLUSTERED ([MaaltijdId] ASC)
);

CREATE TABLE [dbo].[Labels] (
    [LabelId]   INT            NOT NULL,
    [Label]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED ([LabelId] ASC)
);

CREATE TABLE [dbo].[Ingrediënten] (
    [IngrediëntId]   INT            NOT NULL,
    [Ingrediënt]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Ingrediënten] PRIMARY KEY CLUSTERED ([IngrediëntId] ASC)
);

CREATE TABLE [dbo].[ReceptMaaltijd] (
    [ReceptId]     INT            NOT NULL,
    [MaaltijdId]   INT            NOT NULL,
    CONSTRAINT [PK_ReceptMaaltijd] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [MaaltijdId] ASC),
    CONSTRAINT [FK_ReceptMaaltijdReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptMaaltijdMaaltijdId] FOREIGN KEY ([MaaltijdId]) REFERENCES [dbo].[Maaltijden] ([MaaltijdId])
);

CREATE TABLE [dbo].[ReceptLabel] (
    [ReceptId]     INT            NOT NULL,
    [LabelId]      INT            NOT NULL,
    CONSTRAINT [PK_ReceptLabel] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [LabelId] ASC),
    CONSTRAINT [FK_ReceptLabelReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptLabelLabelId] FOREIGN KEY ([LabelId]) REFERENCES [dbo].[Labels] ([LabelId])
);

CREATE TABLE [dbo].[ReceptIngrediënt] (
    [ReceptId]     INT            NOT NULL,
    [IngrediëntId] INT            NOT NULL,
    CONSTRAINT [PK_ReceptIngrediënt] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [IngrediëntId] ASC),
    CONSTRAINT [FK_ReceptIngrediëntReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptIngrediëntIngrediëntId] FOREIGN KEY ([IngrediëntId]) REFERENCES [dbo].[Ingrediënten] ([IngrediëntId])
);


### 3NF:

CREATE TABLE [dbo].[ZipCodes] (
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_ZipCodes] PRIMARY KEY CLUSTERED ([ZipCode] ASC)
);

CREATE TABLE [dbo].[Gebruikers] (
    [GebruikersId]   INT            NOT NULL,
    [VoorNaam]       NVARCHAR (50)  NOT NULL,
    [AchterNaam]     NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (50)  NOT NULL,
    [Adres]          NVARCHAR (50)  NOT NULL,
    [ZipCode]        INT            NOT NULL,
    CONSTRAINT [PK_Gebruikers] PRIMARY KEY CLUSTERED ([GebruikersId] ASC),
    CONSTRAINT [FK_GebruikersZipCode] FOREIGN KEY ([ZipCode]) REFERENCES [dbo].[ZipCodes] ([ZipCode])
);

CREATE TABLE [dbo].[Recepten] (
    [ReceptId]       INT            NOT NULL,
    [ReceptNaam]     NVARCHAR (50)  NOT NULL,
    [GebruikersId]   INT            NOT NULL,
    [Beschrijving]   NVARCHAR (500) NOT NULL,
    [Tijd]           INT                NULL,
    [AantalPersonen] INT                NULL,
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptId] ASC),
    CONSTRAINT [FK_ReceptenGebruikersId] FOREIGN KEY ([GebruikersId]) REFERENCES [dbo].[Gebruikers] ([GebruikersId])
);

CREATE TABLE [dbo].[Reviews] (
    [ReviewId]     INT             NOT NULL,
    [Review]       NVARCHAR (200)  NOT NULL,
    [ReceptId]     INT             NOT NULL,
    [GebruikersId] INT             NOT NULL
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([ReviewId] ASC),
    CONSTRAINT [FK_ReviewsReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReviewsGebruikersId] FOREIGN KEY ([GebruikersId]) REFERENCES [dbo].[Gebruikers] ([GebruikersId])
);

CREATE TABLE [dbo].[Maaltijden] (
    [MaaltijdId]   INT            NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Maaltijden] PRIMARY KEY CLUSTERED ([MaaltijdId] ASC)
);

CREATE TABLE [dbo].[Labels] (
    [LabelId]   INT            NOT NULL,
    [Label]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED ([LabelId] ASC)
);

CREATE TABLE [dbo].[Ingrediënten] (
    [IngrediëntId]   INT            NOT NULL,
    [Ingrediënt]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Ingrediënten] PRIMARY KEY CLUSTERED ([IngrediëntId] ASC)
);

CREATE TABLE [dbo].[ReceptMaaltijd] (
    [ReceptId]     INT            NOT NULL,
    [MaaltijdId]   INT            NOT NULL,
    CONSTRAINT [PK_ReceptMaaltijd] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [MaaltijdId] ASC),
    CONSTRAINT [FK_ReceptMaaltijdReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptMaaltijdMaaltijdId] FOREIGN KEY ([MaaltijdId]) REFERENCES [dbo].[Maaltijden] ([MaaltijdId])
);

CREATE TABLE [dbo].[ReceptLabel] (
    [ReceptId]     INT            NOT NULL,
    [LabelId]      INT            NOT NULL,
    CONSTRAINT [PK_ReceptLabel] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [LabelId] ASC),
    CONSTRAINT [FK_ReceptLabelReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptLabelLabelId] FOREIGN KEY ([LabelId]) REFERENCES [dbo].[Labels] ([LabelId])
);

CREATE TABLE [dbo].[ReceptIngrediënt] (
    [ReceptId]     INT            NOT NULL,
    [IngrediëntId] INT            NOT NULL,
    CONSTRAINT [PK_ReceptIngrediënt] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [IngrediëntId] ASC),
    CONSTRAINT [FK_ReceptIngrediëntReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptIngrediëntIngrediëntId] FOREIGN KEY ([IngrediëntId]) REFERENCES [dbo].[Ingrediënten] ([IngrediëntId])
);

####Records

INSERT INTO ZipCodes (ZipCode, Stad)
VALUES (9000, 'Gent')
	, (8210, 'Zedelgem')
	, (2000, 'Antwerpen')
	, (3000, 'Leuven')
	, (3118, 'Werchter')
	, (2880, 'Bornem')
	, (2100, 'Deurne')
	, (3600, 'Genk')
	, (8400, 'Oostende')
	, (8510, 'Rollegem')
	, (9290, 'Berlare')
	, (9520, 'Zonnegem')
	, (9810, 'Nazareth')
	, (2400, 'Mol')
	, (1850, 'Grimbergen')
	, (1620, 'Drogenbos')
	, (2300, 'Turnhout')
	, (8000, 'Brugge')

INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
VALUES (1, 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000)
	, (2, 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210)
	, (3, 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000)
	, (4, 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000)
	, (5, 'Anton', 'Mertens', 'anton.mertens@hotmail.com', 'Bollaardstraat 29', 3118)
	, (6, 'Michiel', 'De Smet', 'Michiel.desmet@gmail.com', 'Giststraat 2', 2880)
	, (7, 'Saar', 'De Coster', 'saar.descoster@hotmail.com', 'Grote Markt 94', 9000)
	, (8, 'Marie', 'Gabriel', 'marie.gabriel@gmail.com', 'Kandelaarstraat 109', 8210)
	, (9, 'Marieke', 'Steen', 'marieke.steen@gmail.com', 'Kapelstraat 73', 9000)
	, (10, 'Lorenzo', 'Vanmullem', 'lorenzo.vanmullem@gmail.com', 'Neststraat 62', 2000)
	, (11, 'Ella', 'Dedrijcke', 'ella.derijcke@gmail.com', 'Oude Zak 1', 2100)
	, (12, 'Amber', 'Sommers', 'amber.sommers@gmail.com', 'Mallebergplaats 68', 3600)
	, (13, 'Charlotte', 'De Pauw', 'charlotte.depauw@gmail.com', 'Groenestraat 52', 3000)
	, (14, 'Laurent', 'Maes', 'laurent.maes@gmail.com', 'Goezeputstraat 7', 8400)
	, (15, 'Freddy', 'Vanbelle', 'freddy.vanbelle@gmail.com', 'Zilverstraat 84', 8510)
	, (16, 'Phillipe', 'De Coster', 'phillipe.decoster@gmail.com', 'Zuidzandstraat 19', 2100)
	, (17, 'Kenneth', 'Delange', 'kenneth.delange@gmail.com', 'Violierstraat 61', 8000)
	, (18, 'Kevin', 'slegers', 'kevin.slegers@gmail.com', 'Walstraat 37', 2000)
	, (19, 'Michiel', 'Deman', 'michiel.deman@gmail.com', 'Speelmansstraat 42', 9290)
	, (20, 'Tom', 'Devos', 'tom.devos@gmail.com', 'Rodestraat 20', 8210)
	, (21, 'Siebe', 'Goossens', 'siebe.goossens@gmail.com', 'Engelstraat 51', 2880)
	, (22, 'Sarah', 'de Jong', 'sarah.dejong@gmail.com', 'Fonteinstraat 126', 9520)
	, (23, 'Alain', 'Peeters', 'alain.peeters@gmail.com', 'Blekersstraat 14', 9810)
	, (24, 'Tristan', 'Vanheste', 'tristanvanheste@gmail.com', 'Beenhouwersstraat 93', 2400)
	, (25, 'Tom', 'van den Berg', 'tom.vandenberg@gmail.com', 'Molenmeers 87', 1850)
	, (26, 'Steven', 'de Vries', 'steven.devries@gmail.com', 'Pieter Pourbusstraat 46', 1620)
	, (27, 'Maxim', ' Visser', 'maxim.visser@gmail.com', 'Predikherenstraat 38', 9290)
	, (28, 'Dennis', 'Peeters', 'dennis.peeters@gmail.com', 'Niklaas Desparsstraat 55', 9000)
	, (29, 'Evelien', 'van Leeuwen', 'evelien.vanleeuwen@gmail.com', 'Loppemstraat 33', 2300)
	, (30, 'Danny', 'Smet', 'danny.smet', 'Kreupelenstraat 9', 3000);

INSERT INTO Recepten (ReceptId, ReceptNaam, GebruikersId, Beschrijving, Tijd, AantalPersonen)
VALUES (1, 'Gevulde croissantjes met eiersalade', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2)
	, (2, 'Cupcakes', 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3)
	, (3, 'Wraps met aardappel en bacon', 27, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (4, 'Tortellini ovenschotel met kip', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3)
	, (5, 'Tomatensoep', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL)
	, (6, 'Pompoen brownie', 16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 45, 8)
	, (7, 'Tortellini salade met spekjes', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 5)
	, (8, 'Quiche met kip kerrie', 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 2)
	, (9, 'Vegetarische saucijzenbroodjes', 24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 4)
	, (10, 'Tiramisu', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 180, 6)
	, (11, 'Pizza met gehaktballetjes', 29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
	, (12, 'Viskoekjes', 23, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 3)
	, (13, 'Kipschnitzel', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (14, 'Appel-perentaart', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 90, 4)
	, (15, 'Aspergesoep met ham', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
	, (16, 'Macaroni ovenschotel met gehakt', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 2)
	, (17, 'Ijstaart', 22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 8)
	, (18, 'Pastasalade met courgette', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (19, 'Pittige maiskolf', 24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 15, 3)
	, (20, 'Hutsepot met gehakt', 29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
