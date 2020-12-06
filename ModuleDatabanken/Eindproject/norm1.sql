CREATE TABLE [dbo].[Recepten] (
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
    [Stad]           NVARCHAR (50)  NOT NULL
    CONSTRAINT [PK_Recepten] PRIMARY KEY CLUSTERED ([ReceptNaam], [Ingrediënt], [Maaltijd], [Label] ASC)
);

CREATE TABLE [dbo].[Reviews] (
    [Review]             NVARCHAR (200)  NOT NULL,
    [ReceptNaam]         NVARCHAR (50)   NOT NULL,
    [VoorNaamReviewer]   NVARCHAR (50)   NOT NULL,
    [AchterNaamReviewer] NVARCHAR (50)   NOT NULL,
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([Review] ASC),
);

INSERT INTO Recepten(ReceptNaam, Ingrediënt, Beschrijving, Tijd, AantalPersonen, Maaltijd, Label, VoorNaam, AchterNaam, Email, Adres, ZipCode, Stad)
VALUES ('Gevulde croissantjes met eiersalade', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ham', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ham', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ham', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Ham', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Mayonaise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Mayonaise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Mayonaise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Mayonaise', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Bieslook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Bieslook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Bieslook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Bieslook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Croissant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Croissant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Croissant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Croissant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Pasen', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Ontbijt', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')
	, ('Gevulde croissantjes met eiersalade', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2, 'Lunch', 'Vlees', 'Anton', 'Mertens', 'anton.mertens@gmail.com', 'Bollaardstraat 29', 3118, 'Werchter')

	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Boter', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Suiker', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Bakmeel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Speculaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Kruidnoot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Sinterklaas', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Patisserie', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, 'Dessert', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, ('Cupcakes', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3, '4-uurtje', 'Amerikaans', 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')

INSERT INTO Reviews (Review, ReceptNaam, VoorNaamReviewer,AchterNaamReviewer)
VALUES ('Super lekker', 'Gevulde croissantjes met eiersalade', 'Anton', 'Mertens')
	, ('Super lekker als dessert', 'Cupcakes', 'Tom', 'Janssens')