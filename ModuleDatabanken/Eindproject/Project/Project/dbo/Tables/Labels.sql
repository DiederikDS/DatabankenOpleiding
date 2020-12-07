CREATE TABLE [dbo].[Labels] (
    [LabelId]   INT            NOT NULL,
    [Label]     NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED ([LabelId] ASC),
    CONSTRAINT [UK_Labels] UNIQUE ([Label] ASC)
);