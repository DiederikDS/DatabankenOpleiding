CREATE TABLE [dbo].[Gebruikers] (
    [GebruikersId]   INT            NOT NULL,
    [VoorNaam]       NVARCHAR (50)  NOT NULL,
    [AchterNaam]     NVARCHAR (50)  NOT NULL,
    [Email]          NVARCHAR (50)  NOT NULL,
    [Adres]          NVARCHAR (50)  NOT NULL,
    [ZipCode]        INT            NOT NULL,
    CONSTRAINT [PK_Gebruikers] PRIMARY KEY CLUSTERED ([GebruikersId] ASC),
    CONSTRAINT [UK_Gebruikers] UNIQUE ([VoorNaam], [AchterNaam], [Adres], [ZipCode] ASC),
    CONSTRAINT [FK_GebruikersZipCode] FOREIGN KEY ([ZipCode]) REFERENCES [dbo].[ZipCodes] ([ZipCode])
);