# A
# Menggunakan Distribusi Poisson
lambda = 1.8

# B
# Probabilitas 4 kematian kanker tulang (Tidak Biasa)
B <- dpois(4, lambda)
B

# C
# Peluang paling banyak 4 kematian kanker tulang
C <- ppois(4, lambda)
C

# D
# Peluang lebih dari 4 kematian kanker tulang
D <- 1 - C
D

# E
# Nilai Harapan dan Standar Deviasi kematian kanker tulang
nilai_harapan <- lambda
sd <- lambda
nilai_harapan
sd

# F
# Histogram Pendistribusian kematian kanker tulang
plot(0:10, dpois(0:10, lambda), type = 'h', lwd = 3,
     main = "Distribusi banyak kematian akibat kanker tulang",
     xlab = "Jumlah Kematian", ylab = "Probabilitas")