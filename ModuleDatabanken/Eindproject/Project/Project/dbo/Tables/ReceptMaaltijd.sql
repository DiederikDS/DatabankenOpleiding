CREATE TABLE [dbo].[ReceptMaaltijd] (
    [ReceptId]     INT            NOT NULL,
    [MaaltijdId]   INT            NOT NULL,
    CONSTRAINT [PK_ReceptMaaltijd] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [MaaltijdId] ASC),
    CONSTRAINT [FK_ReceptMaaltijdReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptMaaltijdMaaltijdId] FOREIGN KEY ([MaaltijdId]) REFERENCES [dbo].[Maaltijden] ([MaaltijdId])
);