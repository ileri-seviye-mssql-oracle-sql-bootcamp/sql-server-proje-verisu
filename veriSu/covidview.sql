CREATE VIEW v_HastaHastal�klar�
AS
SELECT
	HK.AD
   ,HK.SOYAD
   ,HA.HASTALIK_ISMI
FROM Hasta_Kay�t HK
INNER JOIN HastaHastal�klar� HH
	ON HK.TC_NO = HH.ID
INNER JOIN Hastal�klar HA
	ON HH.HASTALIK_ID = HA.ID
---------------------------------------------------------------
CREATE VIEW v_CovidHastalari
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,c.TEST_SONUC
FROM Covid c
INNER JOIN Hasta_Kay�t hk
	ON c.HASTA_ID = hk.TC_NO
---------------------------------------------------------------
CREATE VIEW v_Hastalar�nAdresleri
AS
SELECT
	hk.AD
   ,hk.SOYAD
   ,a.ILCE+ '/' +a.IL
FROM Hasta_Kay�t HK INner join Adres a on hk.ADRES_ID=a.ID
---------------------------------------------------------------
CREATE VIEW v_DoktorDetay
AS
SELECT
	d.AD,
	d.SOYAD,
	u.Uzmanl�k,
	hd.HASTANE_ADI
FROM DOktor d inner join Uzmanl�k u on d.UZMANLIK_ID=u.ID
INNER JOIN Hastane_Detay hd on hd.ID=d.HASTANE_ID