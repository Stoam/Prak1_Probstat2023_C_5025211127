x = 3
v = 10

# A
# Fungsi Probabilitas Distribusi Chi-Square
dchisq(x, v)

# B
# Histogram dari Distribusi Chi-Square dengan 500 data acak
hist(rchisq(n = 500, df = v), main = "Histogram Distribusi Chi-Square",
     xlab = "Nilai", ylab = "Frekuensi")

# C
# Rataan dan Varian Distribusi Chi-Square
mean <- v
varian <- 2 * v
mean
varian