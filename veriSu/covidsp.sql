USE [COVID-19]
GO
CREATE PROCEDURE Doktor_Ekle(
@AD nvarchar(50) 
,@SOYAD nvarchar(50)
,@CINSIYET char(1)
,@TC_NO char(11)
,@DOGUM_TARIHI date           
,@UZMANLIK_ID int           
,@HASTANE_ID int)      
AS
BEGIN
INSERT INTO [dbo].[Doktor] ([AD]
, [SOYAD]
, [CINSIYET]
, [TC_NO]
, [DOGUM_TARIHI]
, [UZMANLIK_ID]
, [HASTANE_ID])
	VALUES (@AD, @SOYAD, @CINSIYET, @TC_NO, @DOGUM_TARIHI, @UZMANLIK_ID, @HASTANE_ID)
END

-------------------------------------------------------------------------------------

USE [COVID-19]
GO
CREATE PROCEDURE Hasta_Guncelle(
@HastaId bigint
,@Tedavi_Durum tinyint
) as
BEGIN
UPDATE [dbo].[Hasta_Durum]
SET [TEDAVI_Durum] = @Tedavi_Durum
WHERE HASTA_ID = @HastaId
END

-------------------------------------------------------------------------------------

USE [COVID-19]
GO
CREATE PROCEDURE Hasta_Ekle( @AD nvarchar(50),
           @SOYAD nvarchar(50),
           @CINSIYET char(1),
           @TC_NO char(11),
           @TEL_NO char(12),
           @DOGUM_TARIHI date,
           @ADRES_ID int) as BEGIN
INSERT INTO [dbo].[Hasta_Kayýt] ([AD]
, [SOYAD]
, [CINSIYET]
, [TC_NO]
, [TEL_NO]
, [DOGUM_TARIHI]
, [ADRES_ID])
	VALUES (@AD, @SOYAD, @CINSIYET, @TC_NO, @TEL_NO, @DOGUM_TARIHI, @ADRES_ID)
END

-------------------------------------------------------------------------------------

USE [COVID-19]
GO
CREATE PROCEDURE Hasta_Hastaligi_Ekle(@Id int,@Hastalik_Id int) as BEGIN
INSERT INTO [dbo].[HastaHastalýklarý]
           ([ID]
           ,[HASTALIK_ID])
     VALUES
           (@Id,@Hastalik_Id)
END

-------------------------------------------------------------------------------------
USE [COVID-19]
GO

CREATE PROCEDURE Yeni_Hastalik_Ekle(@Id int,@Hastalik_Ýsmi varchar(100)) as begin
INSERT INTO [dbo].[Hastalýklar] 
([ID]
,[HASTALIK_ISMI])
	VALUES (@Id, @Hastalik_Ýsmi)
END

-------------------------------------------------------------------------------------

USE [COVID-19]
GO
CREATE PROCEDURE ins_Yeni_Hastane(@HastaneAdý nvarchar(150),@Adres_Id int) as BEGIN
INSERT INTO [dbo].[Hastane_Detay] ([HASTANE_ADI]
, [ADRES_ID])
	VALUES (@HastaneAdý, @Adres_Id)
END

-------------------------------------------------------------------------------------

USE [COVID-19]
GO
CREATE PROCEDURE ins_Ýlac_Ekle(@Id int,@Ilacadi varchar(100)) as begin
INSERT INTO [dbo].[ILACLAR] ([ID]
, [ILAC_ADI])
	VALUES (@Id, @Ilacadi)
END
