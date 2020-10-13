-- Voer volgend statement uit.
-- Het lukt niet om dit uit te voeren. Geen paniek.
-- Lees de foutmeldingen. Begrijp je wat het probleem is?




DECLARE @landEnStaat VARCHAR(100)


SET @landEnStaat = CASE STATE
  WHEN 'onbekend'
   THEN Land
  ELSE STATE + ' (' + Land + ')'
  END


SELECT @landEnStaat
FROM Chinook.dbo.Customer


