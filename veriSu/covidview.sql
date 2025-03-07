CREATE VIEW v_HastaHastalıkları
AS
SELECT
	HK.AD
   ,HK.SOYAD
   ,HA.HASTALIK_ISMI
FROM Hasta_Kayıt HK
INNER JOIN HastaHastalıkları HH
	ON HK.TC_NO = HH.ID
INNER JOIN Hastalıklar HA
	ON HH.HASTALIK_ID = HA.ID
---------------------------------------------------------------
CREATE VIEW v_CovidHastalari
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,c.TEST_SONUC
FROM Covid c
INNER JOIN Hasta_Kayıt hk
	ON c.HASTA_ID = hk.TC_NO
---------------------------------------------------------------
CREATE VIEW v_HastalarınAdresleri
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,a.ILCE+ '/' +a.IL
FROM Hasta_Kayıt HK INner join Adres a on hk.ADRES_ID=a.ID
---------------------------------------------------------------
CREATE VIEW v_DoktorDetay
AS
SELECT
	d.AD,
	d.SOYAD,
	u.Uzmanlık,
	hd.HASTANE_ADI
FROM DOktor d inner join Uzmanlık u on d.UZMANLIK_ID=u.ID
INNER JOIN Hastane_Detay hd on hd.ID=d.HASTANE_ID