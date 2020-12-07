CREATE TABLE [dbo].[Recepten] (
    [ReceptId]       INT            NOT NULL,
    [ReceptNaam]     NVARCHAR (50)  NOT NULL,
    [GebruikersId]   INT            NOT NULL,
    [Beschrijving]   NVARCHAR (500) NOT NULL,
    [Tijd]           INT                NULL,
    [AantalPersonen] INT                NULL,
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptId] ASC),
    CONSTRAINT [UK_Recepten] UNIQUE ([ReceptNaam], [GebruikersId] ASC),
    CONSTRAINT [FK_ReceptenGebruikersId] FOREIGN KEY ([GebruikersId]) REFERENCES [dbo].[Gebruikers] ([GebruikersId])
);