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
    [Provincie]      NVARCHAR (50)  NOT NULL,
    [Review]         NVARCHAR (200)     NULL,
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptId] ASC)
);