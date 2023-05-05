p = 0.488
n = 10
x = 0:10

# A
# Pendistribusian banyak bayi laki-laki
# Menggunakan Distribusi Binomial, karena hanya ada 2
# kemungkinan kejadian, yaitu laki-laki atau perempuan
A <- dbinom(x, n, p)
A

# B
# Probabilitas tepat 3 bayi adalah laki-laki
B <- dbinom(3, n, p)
B

# C
# Probabilitas kurang dari 3 bayi adalah laki-laki
C <- pbinom(2, n, p)
C

# D
# Probabilitas 3 atau lebih bayi adalah laki-laki
D <- 1 - C
D

# E
# Nilai Harapan dan Simpangan Baku banyak bayi laki-laki
nilai_harapan <- n * p
simp_baku <- sqrt(n * p * (1 - p))
nilai_harapan
simp_baku

# F
# Histogram pendistribusian banyak bayi laki-laki
plot(x, dbinom(x, n, p), type = 'h', lwd = 3,
     main = "Distribui Banyak Bayi Laki-Laki",
     xlab = "Jumlah bayi laki-laki", ylab = "Probabilitas")

