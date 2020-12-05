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