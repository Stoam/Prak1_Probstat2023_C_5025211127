# Praktikum Probstat Modul 1

Nama : Nadif Mustafa
NRP : 5025211127
Kelas : C

## Soal 1

> **Probabilitas seorang bayi lahir laki-laki = 0.488
Terdapat 10 kelahiran**

### 1A

> **Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai**

Distribusi yang digunakan adalah Distribusi Binomial dengan parameter `n = 10` dan `p = 0.488`. Untuk menghitung Distribusi Binomial di R bisa menggunakan fungsi `dbinom()` seperti berikut :

```R
p = 0.488
n = 10
x = 0:10

# A
# Pendistribusian banyak bayi laki-laki
# Menggunakan Distribusi Binomial, karena hanya ada 2
# kemungkinan kejadian, yaitu laki-laki atau perempuan
A <- dbinom(x, n, p)
A
```

Berikut adalah hasilnya :

![output_1A](Images/output_1A.png)

### 1B

> **Probabilitas tepat 3 bayi adalah laki-laki**

Karena yang diminta adalah tepat 3, maka cukup gunakan fungsi `dbinom()` seperti di atas, dengan nilai `x` diganti menjadi 3 seperti berikut :

```R
# B
# Probabilitas tepat 3 bayi adalah laki-laki
B <- dbinom(3, n, p)
B
```

Berikut adalah hasilnya :

![output_1B](Images/output_1B.png)

### 1C

> **Probabilitas kurang dari 3 adalah bayi laki-laki**

Karena yang diminta kurang dari 3, maka sama saja dengan menghitung Kumulatif hingga 2, sehingga bisa menggunakan fungsi `pbinom()` seperti berikut :

```R
# C
# Probabilitas kurang dari 3 bayi adalah laki-laki
C <- pbinom(2, n, p)
C
```

Berikut adalah hasilnya :

![output_1C](Images/output_1C.png)

### 1D

> **Probabilitas 3 atau lebih bayi adalah laki-laki**

Karena yang diminta adalah 3 atau lebih, maka sama saja dengan Kumulatif Total (bernilai 1) dikurangi dengan Kumulatif hingga 2, karena nilai Kumulatif sudah dikerjakan sebelumnya pada subsoal C, maka bisa langsung ditulis sebagai berikut :

```R
# D
# Probabilitas 3 atau lebih bayi adalah laki-laki
D <- 1 - C
D
```

Berikut adalah hasilnya :

![output_1D](Images/output_1D.png)

### 1E

> **Nilai Harapan dan Simpangan Baku banyak bayi laki-laki**

Nilai Harapan dari Distribusi Binomial adalah perkalian jumlah percobaan dengan kemungkinan sukses.
Pada soal ini, jumlah percobaan `n = 10` dan kemungkinan sukses `p = 0.488`.
Sehingga nilai harapannya adalah `10 * 0.488 = 4.88`.

Nilai Simpangan Baku dari Distribusi Binomial adalah akar dari variannya.
Niali Varian dari Distribusi Binomial adalah perkalian antara jumlah percobaan, kemungkinan sukses, dan kemungkinan gagal.
Maka nilai simpangan baku adalah `sqrt(10 * 0.488 * (1 - 0.488)) = 1.580683`

Berikut adalah scriptnya :

```R
# E
# Nilai Harapan dan Simpangan Baku banyak bayi laki-laki
nilai_harapan <- n * p
simp_baku <- sqrt(n * p * (1 - p))
nilai_harapan
simp_baku
```

Berikut adalah hasilnya :

![output_1E](Images/output_1E.png)

### 1F

> **Histogram pendistribusian banyak bayi laki-laki**

Berikut adalah scriptnya :

```R
# F
# Histogram pendistribusian banyak bayi laki-laki
plot(x, dbinom(x, n, p), type = 'h', lwd = 3,
     main = "Distribui Banyak Bayi Laki-Laki",
     xlab = "Jumlah bayi laki-laki", ylab = "Probabilitas")
```

Berikut adalah hasilnya :

![plot_1F](Images/plot_1F.png)
