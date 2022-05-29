#Nomor 1
#1a Carilah Standar Deviasi dari data selisih pasangan pengamatan pada tabel
  Respon = c(1,2,3,4,5,6,7,8,9)
  x = c(78,75,67,77,70,72,78,74,77)
  y = c(100,95,70,90,90,90,89,90,100)

data = data.frame(x,y)
sd(data$x-data$y)

#1b Carilah nilai t (p-value)
t.test(x, y, alternative = "greater", var.equal = FALSE)

#1c 
var.test(x,y)
t.test(x,y, mu = 0, alternative = "two.sided", var.equal = TRUE)

#Nomor 2
#2a 
Setuju

#2b 
install.packages("BSDA")
library(BSDA)


tsum.test(
  mean.x = 23500, 
  s.x = sd(3900), 
  n.x = 100
)

#2c 
#kesimpulan dari soal diatas adalah mobil yang digunakan rata ratanya lebih dari 20.000 km/tahun

#Nomor 3
# 3a
# H0 dan H1
# Jawaban di README

# soal 3b 
# Hitung Sampel Statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# soal 3c
# Lakukan Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# soal 3d
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# soal 3e
# Jawaban di README

# soal 3f
# Jawaban di README

# 4a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
  
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
  
