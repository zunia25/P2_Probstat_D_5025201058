# P2_Probstat_D_5025201058
Praktikum Modul 2 Probabilitas dan Statistika

## Soal 1
  Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.   

![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/Tabel.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67,
dan setelah melakukan aktivitas 𝐴 sebanyak 70.

- Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

```R
#Nomor 1
#1a Carilah Standar Deviasi dari data selisih pasangan pengamatan pada tabel
  Respon = c(1,2,3,4,5,6,7,8,9)
  x = c(78,75,67,77,70,72,78,74,77)
  y = c(100,95,70,90,90,90,89,90,100)

data = data.frame(x,y)
sd(data$x-data$y)
```
Hasil dari program di atas menggunakan `data.frame`
  
  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/1a.png)

- Carilah nilai t (p-value).

```R
#1b Carilah nilai t (p-value)
t.test(x, y, alternative = "greater", var.equal = FALSE)
```

Hasil dari program di atas.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/1b.png)
  
- Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```R
#1c 
var.test(x,y)
t.test(x,y, mu = 0, alternative = "two.sided", var.equal = TRUE)
```

Hasil dari program di atas.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/1c.png)
  
 ## Soal 2
 Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan
library seperti referensi pada modul)

- Apakah Anda setuju dengan klaim tersebut?
```R 
#2a
Setuju
```
- Jelaskan maksud dari output yang dihasilkan!

```R
#2b 
install.packages("BSDA")
library(BSDA)


tsum.test(
  mean.x = 23500, 
  s.x = sd(3900), 
  n.x = 100
)
```

Hasil dari program di atas.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/2b.png)
  
Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900 Maka null hipotesis adalah
```
H0 : μ = 20000
```
Alternatif hipotesisnya yaitu
```
H1 : μ > 20000
```
  
 -  Buatlah kesimpulan berdasarkan P-Value yang dihasilkan
 
`kesimpulan dari soal diatas adalah mobil yang digunakan rata ratanya lebih dari 20.000 km/tahun`

## Soal 3
  Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/tabel2.png)
 
 Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :
-  H0 dan H1
H0 dan H1 dilakukan perhitungan H0 sebagai berikut

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/3a1.png)
  
dilakukan perhitungan H1 sebagai berikut
   
   ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/3a2.png)
   
-  Hitung Sampel Statistik

```R
# soal 3b 
# Hitung Sampel Statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```
Hasil dari program diatas.
  
  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/3b.png)
  
-  Lakukan Uji Statistik (df =2)

```R
# soal 3c
# Lakukan Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")
```

Hasil dari program di atas.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/3c.png)

-  Nilai Kritikal
```R
# soal 3d
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```

Hasil dari program di atas.

  ![alt text](https://github.com/zunia25/P2_Probstat_D_5025201058/blob/main/File_Praktikum2_Probstat/3d.png)  
  
- Keputusan
Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : `({a}_{a∈A})` Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan `t.test`

- Kesimpulan
Kesimpulan Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

## Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika : diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama Maka Kerjakan atau Carilah:

- Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.

```
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")
```
mengambil data dari link yang telah disediadakan kemudian membuat myFile menjadi group Setelah itu, 
dicek apakah dia menyimpan nilai di groupnya Lalu bagi tiap valuer menjadi 3 bagian ke 3 grup.


