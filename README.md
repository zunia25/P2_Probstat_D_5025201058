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
  
 -  Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

