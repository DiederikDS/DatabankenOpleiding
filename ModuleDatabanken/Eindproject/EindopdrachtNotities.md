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
    [ReceptId]     INT            NOT NULL,
    [ReceptNaam]   NVARCHAR (50)  NOT NULL,
    [Auteur]       NVARCHAR (50)  NOT NULL,
    [Maaltijd]     NVARCHAR (50)  NOT NULL,
    [Label]        NVARCHAR (50)  NULL,
    [Ingrediënten] NVARCHAR (500) NOT NULL,
    [Beschrijving] NVARCHAR (500) NOT NULL,
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

CREATE TABLE [dbo].[Gebruikers] (
    [GebruikersId]   INT            NOT NULL,
    [VoorNaam]       NVARCHAR (50)  NOT NULL,
    [AchterNaam]     NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (50)  NOT NULL,
    [Adres]          NVARCHAR (50)  NOT NULL,
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
    [Provincie]      NVARCHAR (50)  NOT NULL
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
    [Provincie]      NVARCHAR (50)  NOT NULL,
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


