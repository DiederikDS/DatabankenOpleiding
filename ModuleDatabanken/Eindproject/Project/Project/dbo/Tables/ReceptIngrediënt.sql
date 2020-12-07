CREATE TABLE [dbo].[ReceptIngrediënt] (
    [ReceptId]     INT            NOT NULL,
    [IngrediëntId] INT            NOT NULL,
    CONSTRAINT [PK_ReceptIngrediënt] PRIMARY KEY NONCLUSTERED ([ReceptId] ASC, [IngrediëntId] ASC),
    CONSTRAINT [FK_ReceptIngrediëntReceptId] FOREIGN KEY ([ReceptId]) REFERENCES [dbo].[Recepten] ([ReceptId]),
    CONSTRAINT [FK_ReceptIngrediëntIngrediëntId] FOREIGN KEY ([IngrediëntId]) REFERENCES [dbo].[Ingrediënten] ([IngrediëntId])
);