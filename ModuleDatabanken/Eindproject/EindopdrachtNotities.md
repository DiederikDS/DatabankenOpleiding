# Notities eindopdracht
## Recepten tabel
### Sql script:
### 1NF

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


##### Records

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

	, ('Wraps met aardappel en bacon', 'Wrap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Wrap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Aardappel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Aardappel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Paprika', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Paprika', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Bacon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Bacon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Ei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Melk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Melk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Peterselie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Peterselie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Rucola', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Rucola', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Kaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Kaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Ontbijt', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, ('Wraps met aardappel en bacon', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2, 'Lunch', 'Vlees', 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')

	, ('Tortellini ovenschotel met kip', 'Tortellini', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Tortellini', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Kipfilet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Kipfilet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Roomkaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Paprika', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Paprika', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Kaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Kip', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, ('Tortellini ovenschotel met kip', 'Kaas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3, 'Dinner', 'Italiaans', 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')

	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Tomaat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Kippenbouilon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Knoflook', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Ui', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Wortel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Room', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Basilicum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Zout', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Aperitief', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Voorgerecht', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Soep', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, ('Tomatensoep', 'Peper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL, 'Lunch', 'Italiaans', 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')

INSERT INTO Reviews (Review, ReceptNaam, VoorNaamReviewer,AchterNaamReviewer)
VALUES ('Super lekker', 'Gevulde croissantjes met eiersalade', 'Anton', 'Mertens')
	, ('Super lekker als dessert', 'Cupcakes', 'Tom', 'Janssens')
	, ('Krokant!', 'Wraps met aardappel en bacon', 'Pieter', 'Maes')
	, ('Simpel en gezond', 'Tortellini ovenschotel met kip', 'Diederik', 'De Soete')
	, ('Niet lekker', 'Tomatensoep', 'Sarah', 'Peeters')

### 2NF

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

#### Records

INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode, Stad)
VALUES (1, 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000, 'Gent')
	, (2, 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210, 'Zedelgem')
	, (3, 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000, 'Antwerpen')
	, (4, 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000, 'Leuven')
	, (5, 'Anton', 'Mertens', 'anton.mertens@hotmail.com', 'Bollaardstraat 29', 3118, 'Werchter')

INSERT INTO Recepten (ReceptId, ReceptNaam, GebruikersId, Beschrijving, Tijd, AantalPersonen)
VALUES (1, 'Gevulde croissantjes met eiersalade', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2)
	, (2, 'Cupcakes', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3)
	, (3, 'Wraps met aardappel en bacon', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (4, 'Tortellini ovenschotel met kip', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3)
	, (5, 'Tomatensoep', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL)

INSERT INTO Reviews (ReviewId, Review, ReceptId, GebruikersId)
VALUES (1, 'Super lekker', 1, 5)
	, (2, 'Krokant!', 3, 4)
	, (3, 'Super lekker als dessert', 2, 3)
	, (4, 'Simpel en gezond', 4, 1)
	, (5, 'Niet lekker', 5, 2)

INSERT INTO Maaltijden (MaaltijdId, Maaltijd)
VALUES (1, 'Ontbijt')
	, (2, 'Aperitief')
	, (3, 'Voorgerecht')
	, (4, 'Lunch')
	, (5, 'Dessert')
	, (6, '4-uurtje')
	, (7, 'Dinner')

INSERT INTO Labels (LabelId, Label)
VALUES (1, 'Pasen')
	, (2, 'Sinterklaas')
	, (3, 'Halloween')
	, (4, 'Vlees')
	, (5, 'Kip')
	, (6, 'Vis')
	, (7, 'Pattiserie')
	, (8, 'Soep')
	, (9, 'Salade')
	, (10, 'Alcohol')
	, (11, 'Italiaans')
	, (12, 'Amerikaans')
	, (13, 'Oosters')
	, (14, 'Vlaams')
	, (15, 'Mexicaans')
	, (16, 'Grieks')
	, (17, 'Vegetarisch')

INSERT INTO Ingrediënten (IngrediëntId, Ingrediënt)
VALUES (1, 'Ei')
	, (2, 'Ham')
	, (3, 'Mayonaise')
	, (4, 'Bieslook')
	, (5, 'Croissant')
	, (6, 'Zout')
	, (7, 'Peper')
	, (8, 'Suiker')
	, (9, 'Nootmuskaat')
	, (10, 'Boter')
	, (11, 'Bakmeel')
	, (12, 'Speculaas')
	, (13, 'Kruidnoot')
	, (14, 'Roomkaas')
	, (15, 'Wrap')
	, (16, 'Aardappel')
	, (17, 'Paprika')
	, (18, 'Bacon')
	, (19, 'Melk')
	, (20, 'Peterselie')
	, (21, 'Rucola')
	, (22, 'Kaas')
	, (23, 'Tortellini')
	, (24, 'Kipfilet')
	, (25, 'Ui')
	, (26, 'Tomaat')
	, (27, 'Kippenbouillon')
	, (28, 'Knoflook')
	, (29, 'Room')
	, (30, 'Basilicum')
	, (68, 'Wortel')

INSERT INTO ReceptMaaltijd (ReceptId, MaaltijdId)
VALUES (1, 1)
	,(1, 4)
	,(2, 5)
	,(2, 6)
	,(3, 1)
	,(3, 4)
	,(4, 7)
	,(5, 2)
	,(5, 3)
	,(5, 4)

INSERT INTO ReceptLabel (ReceptId, LabelId)
VALUES (1, 1)
	,(1, 4)
	,(2, 2)
	,(2, 7)
	,(2, 12)
	,(3, 4)
	,(4, 5)
	,(4, 11)
	,(5, 8)
	,(5, 11)

INSERT INTO ReceptIngrediënt (ReceptId, IngrediëntId)
VALUES (1, 1)
	,(1, 2)
	,(1, 3)
	,(1, 4)
	,(1, 5)
	,(1, 6)
	,(1, 7)
	,(2, 10)
	,(2, 8)
	,(2, 1)
	,(2, 11)
	,(2, 6)
	,(2, 12)
	,(2, 13)
	,(2, 14)
	,(3, 15)
	,(3, 16)
	,(3, 17)
	,(3, 18)
	,(3, 1)
	,(3, 19)
	,(3, 20)
	,(3, 21)
	,(3, 22)
	,(3, 6)
	,(3, 7)
	,(4, 23)
	,(4, 24)
	,(4, 14)
	,(4, 25)
	,(4, 17)
	,(4, 22)
	,(5, 26)
	,(5, 27)
	,(5, 28)
	,(5, 25)
	,(5, 68)
	,(5, 29)
	,(5, 30)
	,(5, 6)
	,(5, 7)


### 3NF

CREATE TABLE [dbo].[ZipCodes] (
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
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

#### Records

INSERT INTO ZipCodes (ZipCode, Stad)
VALUES (9000, 'Gent')
	, (8210, 'Zedelgem')
	, (2000, 'Antwerpen')
	, (3000, 'Leuven')
	, (3118, 'Werchter')

INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
VALUES (1, 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000)
	, (2, 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210)
	, (3, 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000)
	, (4, 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000)
	, (5, 'Anton', 'Mertens', 'anton.mertens@hotmail.com', 'Bollaardstraat 29', 3118)

INSERT INTO Recepten (ReceptId, ReceptNaam, GebruikersId, Beschrijving, Tijd, AantalPersonen)
VALUES (1, 'Gevulde croissantjes met eiersalade', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2)
	, (2, 'Cupcakes', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3)
	, (3, 'Wraps met aardappel en bacon', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (4, 'Tortellini ovenschotel met kip', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3)
	, (5, 'Tomatensoep', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL)

INSERT INTO Reviews (ReviewId, Review, ReceptId, GebruikersId)
VALUES (1, 'Super lekker', 1, 5)
	, (2, 'Krokant!', 3, 4)
	, (3, 'Super lekker als dessert', 2, 3)
	, (4, 'Simpel en gezond', 4, 1)
	, (5, 'Niet lekker', 5, 2)

INSERT INTO Maaltijden (MaaltijdId, Maaltijd)
VALUES (1, 'Ontbijt')
	, (2, 'Aperitief')
	, (3, 'Voorgerecht')
	, (4, 'Lunch')
	, (5, 'Dessert')
	, (6, '4-uurtje')
	, (7, 'Dinner')

INSERT INTO Labels (LabelId, Label)
VALUES (1, 'Pasen')
	, (2, 'Sinterklaas')
	, (3, 'Halloween')
	, (4, 'Vlees')
	, (5, 'Kip')
	, (6, 'Vis')
	, (7, 'Pattiserie')
	, (8, 'Soep')
	, (9, 'Salade')
	, (10, 'Alcohol')
	, (11, 'Italiaans')
	, (12, 'Amerikaans')
	, (13, 'Oosters')
	, (14, 'Vlaams')
	, (15, 'Mexicaans')
	, (16, 'Grieks')
	, (17, 'Vegetarisch')

INSERT INTO Ingrediënten (IngrediëntId, Ingrediënt)
VALUES (1, 'Ei')
	, (2, 'Ham')
	, (3, 'Mayonaise')
	, (4, 'Bieslook')
	, (5, 'Croissant')
	, (6, 'Zout')
	, (7, 'Peper')
	, (8, 'Suiker')
	, (9, 'Nootmuskaat')
	, (10, 'Boter')
	, (11, 'Bakmeel')
	, (12, 'Speculaas')
	, (13, 'Kruidnoot')
	, (14, 'Roomkaas')
	, (15, 'Wrap')
	, (16, 'Aardappel')
	, (17, 'Paprika')
	, (18, 'Bacon')
	, (19, 'Melk')
	, (20, 'Peterselie')
	, (21, 'Rucola')
	, (22, 'Kaas')
	, (23, 'Tortellini')
	, (24, 'Kipfilet')
	, (25, 'Ui')
	, (26, 'Tomaat')
	, (27, 'Kippenbouillon')
	, (28, 'Knoflook')
	, (29, 'Room')
	, (30, 'Basilicum')
	, (68, 'Wortel')

INSERT INTO ReceptMaaltijd (ReceptId, MaaltijdId)
VALUES (1, 1)
	,(1, 4)
	,(2, 5)
	,(2, 6)
	,(3, 1)
	,(3, 4)
	,(4, 7)
	,(5, 2)
	,(5, 3)
	,(5, 4)

INSERT INTO ReceptLabel (ReceptId, LabelId)
VALUES (1, 1)
	,(1, 4)
	,(2, 2)
	,(2, 7)
	,(2, 12)
	,(3, 4)
	,(4, 5)
	,(4, 11)
	,(5, 8)
	,(5, 11)

INSERT INTO ReceptIngrediënt (ReceptId, IngrediëntId)
VALUES (1, 1)
	,(1, 2)
	,(1, 3)
	,(1, 4)
	,(1, 5)
	,(1, 6)
	,(1, 7)
	,(2, 10)
	,(2, 8)
	,(2, 1)
	,(2, 11)
	,(2, 6)
	,(2, 12)
	,(2, 13)
	,(2, 14)
	,(3, 15)
	,(3, 16)
	,(3, 17)
	,(3, 18)
	,(3, 1)
	,(3, 19)
	,(3, 20)
	,(3, 21)
	,(3, 22)
	,(3, 6)
	,(3, 7)
	,(4, 23)
	,(4, 24)
	,(4, 14)
	,(4, 25)
	,(4, 17)
	,(4, 22)
	,(5, 26)
	,(5, 27)
	,(5, 28)
	,(5, 25)
	,(5, 68)
	,(5, 29)
	,(5, 30)
	,(5, 6)
	,(5, 7)


### Database:

CREATE TABLE [dbo].[ZipCodes] (
    [ZipCode]        INT            NOT NULL,
    [Stad]           NVARCHAR (50)  NOT NULL,
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

#### View

CREATE VIEW Grieks
	AS SELECT Re.ReceptId 
		, ReceptNaam
		, Re.GebruikersId
	FROM Recepten AS Re
		FULL OUTER JOIN ReceptLabel AS ReLa ON Re.ReceptId = ReLa.ReceptId
		FULL OUTER JOIN Labels AS Le ON ReLa.LabelId = Le.LabelId
	WHERE Label = 'Grieks'

#### Procedure

CREATE PROCEDURE NieuweGebruiker @Zipcode INT, @Stad NVARCHAR(50), @GebruikersId INT, @Voornaam NVARCHAR(50), @Achternaam NVARCHAR(50), @Email NVARCHAR(50), @Adres NVARCHAR(50)
AS

IF @Zipcode IN (SELECT ZipCode FROM ZipCodes)
BEGIN
	INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
	VALUES (@GebruikersId, @Voornaam, @Achternaam, @Email, @Adres, @Zipcode)
END
ELSE
BEGIN
	INSERT INTO ZipCodes (ZipCode, Stad)
	VALUES (@Zipcode, @Stad)

	INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
	VALUES (@GebruikersId, @Voornaam, @Achternaam, @Email, @Adres, @Zipcode)
END

RETURN 0

####Records

INSERT INTO ZipCodes (ZipCode, Stad)
VALUES (9000, 'Gent')
	, (8210, 'Zedelgem')
	, (2000, 'Antwerpen')
	, (3000, 'Leuven')
	, (3118, 'Werchter')
	, (2880, 'Bornem')
	, (2100, 'Deurne')
	, (3600, 'Genk')
	, (8400, 'Oostende')
	, (8510, 'Rollegem')
	, (9290, 'Berlare')
	, (9520, 'Zonnegem')
	, (9810, 'Nazareth')
	, (2400, 'Mol')
	, (1850, 'Grimbergen')
	, (1620, 'Drogenbos')
	, (2300, 'Turnhout')
	, (8000, 'Brugge')

INSERT INTO Gebruikers (GebruikersId, VoorNaam, AchterNaam, Email, Adres, ZipCode)
VALUES (1, 'Diederik', 'De Soete', 'diederik.desoete@gmail.com', 'Parklaan 17', 9000)
	, (2, 'Sarah', 'Peeters', 'sarah.Peeters@gmail.com', 'Hazenpad 4', 8210)
	, (3, 'Tom', 'Janssens', 'tom.janssens@gmail.com', 'Academiestraat 5', 2000)
	, (4, 'Pieter', 'Maes', 'pieter.maes@gmail.com', 'Augustijnenrei 34', 3000)
	, (5, 'Anton', 'Mertens', 'anton.mertens@hotmail.com', 'Bollaardstraat 29', 3118)
	, (6, 'Michiel', 'De Smet', 'Michiel.desmet@gmail.com', 'Giststraat 2', 2880)
	, (7, 'Saar', 'De Coster', 'saar.descoster@hotmail.com', 'Grote Markt 94', 9000)
	, (8, 'Marie', 'Gabriel', 'marie.gabriel@gmail.com', 'Kandelaarstraat 109', 8210)
	, (9, 'Marieke', 'Steen', 'marieke.steen@gmail.com', 'Kapelstraat 73', 9000)
	, (10, 'Lorenzo', 'Vanmullem', 'lorenzo.vanmullem@gmail.com', 'Neststraat 62', 2000)
	, (11, 'Ella', 'Dedrijcke', 'ella.derijcke@gmail.com', 'Oude Zak 1', 2100)
	, (12, 'Amber', 'Sommers', 'amber.sommers@gmail.com', 'Mallebergplaats 68', 3600)
	, (13, 'Charlotte', 'De Pauw', 'charlotte.depauw@gmail.com', 'Groenestraat 52', 3000)
	, (14, 'Laurent', 'Maes', 'laurent.maes@gmail.com', 'Goezeputstraat 7', 8400)
	, (15, 'Freddy', 'Vanbelle', 'freddy.vanbelle@gmail.com', 'Zilverstraat 84', 8510)
	, (16, 'Phillipe', 'De Coster', 'phillipe.decoster@gmail.com', 'Zuidzandstraat 19', 2100)
	, (17, 'Kenneth', 'Delange', 'kenneth.delange@gmail.com', 'Violierstraat 61', 8000)
	, (18, 'Kevin', 'slegers', 'kevin.slegers@gmail.com', 'Walstraat 37', 2000)
	, (19, 'Michiel', 'Deman', 'michiel.deman@gmail.com', 'Speelmansstraat 42', 9290)
	, (20, 'Tom', 'Devos', 'tom.devos@gmail.com', 'Rodestraat 20', 8210)
	, (21, 'Siebe', 'Goossens', 'siebe.goossens@gmail.com', 'Engelstraat 51', 2880)
	, (22, 'Sarah', 'de Jong', 'sarah.dejong@gmail.com', 'Fonteinstraat 126', 9520)
	, (23, 'Alain', 'Peeters', 'alain.peeters@gmail.com', 'Blekersstraat 14', 9810)
	, (24, 'Tristan', 'Vanheste', 'tristanvanheste@gmail.com', 'Beenhouwersstraat 93', 2400)
	, (25, 'Tom', 'van den Berg', 'tom.vandenberg@gmail.com', 'Molenmeers 87', 1850)
	, (26, 'Steven', 'de Vries', 'steven.devries@gmail.com', 'Pieter Pourbusstraat 46', 1620)
	, (27, 'Maxim', ' Visser', 'maxim.visser@gmail.com', 'Predikherenstraat 38', 9290)
	, (28, 'Dennis', 'Peeters', 'dennis.peeters@gmail.com', 'Niklaas Desparsstraat 55', 9000)
	, (29, 'Evelien', 'van Leeuwen', 'evelien.vanleeuwen@gmail.com', 'Loppemstraat 33', 2300)
	, (30, 'Danny', 'Smet', 'danny.smet', 'Kreupelenstraat 9', 3000);

INSERT INTO Recepten (ReceptId, ReceptNaam, GebruikersId, Beschrijving, Tijd, AantalPersonen)
VALUES (1, 'Gevulde croissantjes met eiersalade', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 20, 2)
	, (2, 'Cupcakes', 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 3)
	, (3, 'Wraps met aardappel en bacon', 27, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (4, 'Tortellini ovenschotel met kip', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 40, 3)
	, (5, 'Tomatensoep', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, NULL)
	, (6, 'Pompoen brownie', 16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 45, 8)
	, (7, 'Tortellini salade met spekjes', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 5)
	, (8, 'Quiche met kip kerrie', 11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 2)
	, (9, 'Vegetarische saucijzenbroodjes', 24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 4)
	, (10, 'Tiramisu', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 180, 6)
	, (11, 'Pizza met gehaktballetjes', 29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
	, (12, 'Viskoekjes', 23, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 3)
	, (13, 'Kipschnitzel', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (14, 'Appel-perentaart', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 90, 4)
	, (15, 'Aspergesoep met ham', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
	, (16, 'Macaroni ovenschotel met gehakt', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 50, 2)
	, (17, 'Ijstaart', 22, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 8)
	, (18, 'Griekse salade met kip', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 25, 2)
	, (19, 'Pittige maiskolf', 24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 15, 3)
	, (20, 'Hutsepot met gehakt', 29, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 30, 2)
	, (21, 'Noedels met broccoli en gehakt', 19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', NULL, 2)
	, (22, 'Nachos met gehakt', 25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 35, 2)

INSERT INTO Reviews (ReviewId, Review, ReceptId, GebruikersId)
VALUES (1, 'Super lekker', 11, 30)
	, (2, 'Krokant!', 12, 23)
	, (3, 'Super lekker als dessert', 17, 4)
	, (4, 'Simpel en gezond', 19, 3)
	, (5, 'Niet lekker', 5, 16)
	, (6, 'Mijn kinderen zijn grote fan', 10, 28)
	, (7, 'Het moet niet altijd margherita zijn', 11, 12)
	, (8, 'De ham is een leuk idee', 15, 22)
	, (9, 'Echte winterkost!', 20, 23)
	, (10, 'Klassiek', 2, 19)
	, (11, 'Verrassend lekker', 6, 20)
	, (12, 'Normaal geen fan van asperges, maar in deze soep wel echt lekker', 15, 24)
	, (13, 'Net zoals mama die maakt', 10, 4)
	, (14, 'lekker gezonde lunch', 18, 11)
	, (15, 'Lekkere combinatie', 8, 17)
	, (16, 'Deze mist nog iets vind ik', 5, 7)
	, (17, 'Mmmmmm!', 6, 26)
	, (18, 'Altijd grote fan van spekjes', 7, 6)
	, (19, 'Vreemde, maar lekkere combinatie', 1, 2)
	, (20, 'Aanrader', 18, 17)
	, (21, 'Koud zijn deze ook heel lekker', 3, 16)
	, (22, 'Aanrader!', 14, 25)
	, (23, 'Weinig werk voor een lekkere maaltijd', 4, 8)
	, (24, 'Lekker als voorgerecht', 15, 18)
	, (25, 'All time favorite', 10, 24)
	, (26, 'Heel lekker', 3, 19)
	, (27, 'Simpel', 19, 5)
	, (28, 'Deze zou ik sterk aanraden', 20, 7)
	, (29, 'Goed voor bij de koffie', 6, 13)
	, (30, '10/10', 7, 22)
	, (31, 'De borccoli maakt het uniek', 21, 9)
	, (32, 'Lekker als hoofdgerecht of voorgerecht', 22, 4)
	, (33, 'Dit vond ik niet lekker, Potvolkoffie!', 16, 7)

INSERT INTO Maaltijden (MaaltijdId, Maaltijd)
VALUES (1, 'Ontbijt')
	, (2, 'Aperitief')
	, (3, 'Voorgerecht')
	, (4, 'Lunch')
	, (5, 'Dessert')
	, (6, '4-uurtje')
	, (7, 'Dinner')

INSERT INTO Labels (LabelId, Label)
VALUES (1, 'Pasen')
	, (2, 'Sinterklaas')
	, (3, 'Halloween')
	, (4, 'Vlees')
	, (5, 'Kip')
	, (6, 'Vis')
	, (7, 'Pattiserie')
	, (8, 'Soep')
	, (9, 'Salade')
	, (10, 'Alcohol')
	, (11, 'Italiaans')
	, (12, 'Amerikaans')
	, (13, 'Oosters')
	, (14, 'Vlaams')
	, (15, 'Mexicaans')
	, (16, 'Grieks')
	, (17, 'Vegetarisch')

INSERT INTO Ingrediënten (IngrediëntId, Ingrediënt)
VALUES (1, 'Ei')
	, (2, 'Ham')
	, (3, 'Mayonaise')
	, (4, 'Bieslook')
	, (5, 'Croissant')
	, (6, 'Zout')
	, (7, 'Peper')
	, (8, 'Suiker')
	, (9, 'Nootmuskaat')
	, (10, 'Boter')
	, (11, 'Bakmeel')
	, (12, 'Speculaas')
	, (13, 'Kruidnoot')
	, (14, 'Roomkaas')
	, (15, 'Wrap')
	, (16, 'Aardappel')
	, (17, 'Paprika')
	, (18, 'Bacon')
	, (19, 'Melk')
	, (20, 'Peterselie')
	, (21, 'Rucola')
	, (22, 'Kaas')
	, (23, 'Tortellini')
	, (24, 'Kipfilet')
	, (25, 'Ui')
	, (26, 'Tomaat')
	, (27, 'Kippenbouillon')
	, (28, 'Knoflook')
	, (29, 'Room')
	, (30, 'Basilicum')
	, (31, 'Pompoen')
	, (32, 'Chocolade')
	, (33, 'Bloem')
	, (34, 'Spek')
	, (35, 'Sla')
	, (36, 'Groene pesto')
	, (37, 'Bladerdeeg')
	, (38, 'Prei')
	, (39, 'Kerriepoeder')
	, (40, 'Vegetarisch gehakt')
	, (41, 'Mascarpone')
	, (42, 'Cacao')
	, (43, 'Lange vingers')
	, (44, 'Koffie')
	, (45, 'Amaretto')
	, (46, 'Pizzadeeg')
	, (47, 'Gehakt')
	, (48, 'Mozarella')
	, (49, 'Italiaanse kruiden')
	, (50, 'Witvis')
	, (51, 'Paneermeel')
	, (52, 'Kaneel')
	, (53, 'Appel')
	, (54, 'Peer')
	, (55, 'Asperge')
	, (56, 'Water')
	, (57, 'Macaroni')
	, (58, 'Groentenmix')
	, (59, 'Vanille ijs')
	, (60, 'Aardbei')
	, (61, 'Kiwi')
	, (62, 'Ananas')
	, (63, 'Feta')
	, (64, 'Komkommer')
	, (65, 'Oregano')
	, (66, 'Olijfolie')
	, (67, 'Maïskolf')
	, (68, 'Wortel')
	, (69, 'Ketjap Manis')
	, (70, 'Noedels')
	, (71, 'Broccoli')
	, (72, 'Tortilla chips')
	, (73, 'Cake')

INSERT INTO ReceptMaaltijd (ReceptId, MaaltijdId)
VALUES (1, 1)
	,(1, 4)
	,(2, 5)
	,(2, 6)
	,(3, 1)
	,(3, 4)
	,(4, 7)
	,(5, 2)
	,(5, 3)
	,(5, 4)
	,(6, 5)
	,(6, 6)
	,(7, 4)
	,(7, 7)
	,(8, 4)
	,(8, 7)
	,(9, 2)
	,(9, 3)
	,(9, 4)
	,(9, 7)
	,(10, 5)
	,(11, 2)
	,(11, 4)
	,(11, 7)
	,(12, 4)
	,(12, 7)
	,(13, 7)
	,(14, 5)
	,(14, 6)
	,(15, 2)
	,(15, 3)
	,(15, 4)
	,(16, 4)
	,(16, 7)
	,(17, 5)
	,(18, 4)
	,(18, 7)
	,(19, 3)
	,(19, 4)
	,(19, 6)
	,(20, 7)
	,(21, 4)
	,(21, 7)
	,(22, 4)
	,(22, 7)

INSERT INTO ReceptLabel (ReceptId, LabelId)
VALUES (1, 1)
	,(1, 4)
	,(2, 2)
	,(2, 7)
	,(2, 12)
	,(3, 4)
	,(4, 5)
	,(4, 11)
	,(5, 8)
	,(5, 11)
	,(6, 3)
	,(6, 7)
	,(7, 4)
	,(7, 9)
	,(7, 11)
	,(8, 5)
	,(9, 17)
	,(10, 12)
	,(10, 14)
	,(11, 4)
	,(11, 11)
	,(12, 6)
	,(13, 5)
	,(14, 7)
	,(15, 4)
	,(15, 8)
	,(16, 4)
	,(16, 11)
	,(17, 7)
	,(18, 5)
	,(18, 9)
	,(18, 16)
	,(19, 12)
	,(19, 17)
	,(20, 4)
	,(20, 14)
	,(21, 4)
	,(21, 13)
	,(22, 4)
	,(22, 15)

INSERT INTO ReceptIngrediënt (ReceptId, IngrediëntId)
VALUES (1, 1)
	,(1, 2)
	,(1, 3)
	,(1, 4)
	,(1, 5)
	,(1, 6)
	,(1, 7)
	,(2, 10)
	,(2, 8)
	,(2, 1)
	,(2, 11)
	,(2, 6)
	,(2, 12)
	,(2, 13)
	,(2, 14)
	,(3, 15)
	,(3, 16)
	,(3, 17)
	,(3, 18)
	,(3, 1)
	,(3, 19)
	,(3, 20)
	,(3, 21)
	,(3, 22)
	,(3, 6)
	,(3, 7)
	,(4, 23)
	,(4, 24)
	,(4, 14)
	,(4, 25)
	,(4, 17)
	,(4, 22)
	,(5, 26)
	,(5, 27)
	,(5, 28)
	,(5, 25)
	,(5, 68)
	,(5, 29)
	,(5, 30)
	,(5, 6)
	,(5, 7)
	,(6, 31)
	,(6, 1)
	,(6, 8)
	,(6, 10)
	,(6, 32)
	,(6, 12)
	,(6, 11)
	,(6, 6)
	,(6, 33)
	,(7, 23)
	,(7, 34)
	,(7, 35)
	,(7, 3)
	,(7, 36)
	,(7, 25)
	,(7, 26)
	,(7, 7)
	,(8, 37)
	,(8, 24)
	,(8, 38)
	,(8, 39)
	,(8, 25)
	,(8, 28)
	,(8, 1)
	,(8, 20)
	,(8, 29)
	,(9, 40)
	,(9, 37)
	,(9, 28)
	,(9, 25)
	,(10, 8)
	,(10, 41)
	,(10, 1)
	,(10, 42)
	,(10, 43)
	,(10, 44)
	,(10, 45)
	,(11, 46)
	,(11, 26)
	,(11, 47)
	,(11, 51)
	,(11, 49)
	,(11, 17)
	,(11, 48)
	,(11, 25)
	,(11, 22)
	,(12, 50)
	,(12, 1)
	,(12, 28)
	,(12, 20)
	,(12, 9)
	,(12, 25)
	,(12, 33)
	,(12, 6)
	,(12, 7)
	,(12, 51)
	,(13, 24)
	,(13, 1)
	,(13, 51)
	,(13, 33)
	,(13, 6)
	,(13, 7)
	,(14, 11)
	,(14, 10)
	,(14, 8)
	,(14, 52)
	,(14, 1)
	,(14, 53)
	,(14, 54)
	,(15, 55)
	,(15, 56)
	,(15, 27)
	,(15, 25)
	,(15, 2)
	,(15, 33)
	,(15, 10)
	,(15, 20)
	,(15, 6)
	,(15, 7)
	,(16, 57)
	,(16, 58)
	,(16, 26)
	,(16, 28)
	,(16, 30)
	,(16, 47)
	,(16, 10)
	,(16, 19)
	,(16, 33)
	,(16, 22)
	,(16, 6)
	,(16, 7)
	,(17, 59)
	,(17, 60)
	,(17, 61)
	,(17, 62)
	,(17, 73)
	,(17, 52)
	,(18, 63)
	,(18, 26)
	,(18, 25)
	,(18, 64)
	,(18, 24)
	,(18, 65)
	,(18, 66)
	,(18, 35)
	,(19, 67)
	,(19, 10)
	,(19, 28)
	,(19, 6)
	,(20, 68)
	,(20, 16)
	,(20, 47)
	,(20, 39)
	,(20, 69)
	,(20, 6)
	,(20, 7)
	,(20, 28)
	,(20, 19)
	,(20, 25)
	,(21, 70)
	,(21, 71)
	,(21, 47)
	,(21, 25)
	,(21, 28)
	,(21, 69)
	,(22, 47)
	,(22, 25)
	,(22, 28)
	,(22, 22)
	,(22, 6)
	,(22, 7)
	,(22, 26)
	,(22, 72)
	,(22, 17)
