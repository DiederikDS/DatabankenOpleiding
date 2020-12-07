CREATE TABLE [dbo].[ZipCodes] (
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_ZipCodes] PRIMARY KEY CLUSTERED ([ZipCode] ASC),
    CONSTRAINT [UK_ZipCodes] UNIQUE ([Stad] ASC)
);