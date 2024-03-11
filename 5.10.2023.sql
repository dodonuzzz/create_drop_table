CREATE TABLE #RAPOR
(KULLANICI_ADI VARCHAR(100),AD_SOYAD VARCHAR(100),TELNR1 VARCHAR(50),TELNR2 VARCHAR(50),ULKE VARCHAR(100),SEHIR VARCHAR(100),
ILCE VARCHAR(100),ACIK_ADRES VARCHAR (500),SIPARIS_ID INT,URUN_KODU VARCHAR(500),URUN_ADI VARCHAR(500),MARKA VARCHAR(500),
KATEGORI1 VARCHAR(500),KATEGORI2 VARCHAR(500),KATEGORI3 VARCHAR(500),KATEGORI4 VARCHAR(500),MIKTAR FLOAT,BIRIM_FIYAT FLOAT,
TOPLAM_TUTAR FLOAT,SIPARIS_TARIHI DATE,SIPARIS_SAATI TIME,YIL INT,AY VARCHAR(50),GUN VARCHAR(50)
)









INSERT INTO #RAPOR
EXEC SP_SATISLAR '20190101','20190131','%','�SK�DAR','%'

SELECT KATEGORI1,SUM(TOPLAM_TUTAR) FROM #RAPOR GROUP BY KATEGORI1 ORDER BY SUM(TOPLAM_TUTAR) DESC
DROP TABLE #RAPOR

SELECT * FROM #RAPOR