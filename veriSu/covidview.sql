CREATE VIEW v_HastaHastalýklarý
AS
SELECT
	HK.AD
   ,HK.SOYAD
   ,HA.HASTALIK_ISMI
FROM Hasta_Kayýt HK
INNER JOIN HastaHastalýklarý HH
	ON HK.TC_NO = HH.ID
INNER JOIN Hastalýklar HA
	ON HH.HASTALIK_ID = HA.ID
---------------------------------------------------------------
CREATE VIEW v_CovidHastalari
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,c.TEST_SONUC
FROM Covid c
INNER JOIN Hasta_Kayýt hk
	ON c.HASTA_ID = hk.TC_NO
---------------------------------------------------------------
CREATE VIEW v_HastalarýnAdresleri
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,a.ILCE+ '/' +a.IL
FROM Hasta_Kayýt HK INner join Adres a on hk.ADRES_ID=a.ID
---------------------------------------------------------------
CREATE VIEW v_DoktorDetay
AS
SELECT
	d.AD,
	d.SOYAD,
	u.Uzmanlýk,
	hd.HASTANE_ADI
FROM DOktor d inner join Uzmanlýk u on d.UZMANLIK_ID=u.ID
INNER JOIN Hastane_Detay hd on hd.ID=d.HASTANE_ID