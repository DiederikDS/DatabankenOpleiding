CREATE VIEW Grieks
	AS SELECT Re.ReceptId 
		, ReceptNaam
		, Re.GebruikersId
	FROM Recepten AS Re
		FULL OUTER JOIN ReceptLabel AS ReLa ON Re.ReceptId = ReLa.ReceptId
		FULL OUTER JOIN Labels AS Le ON ReLa.LabelId = Le.LabelId
	WHERE Label = 'Grieks'