n = 100
mean = 45
sd = 5

# A
# Perhitungan
data <- rnorm(n, mean, sd)
avg <- mean(data)
x1 <- floor(avg)
x2 <- ceiling(avg)
prob <- pnorm(x2, avg, sd) - pnorm(x1, avg, sd)
z1 <- (x1 - avg) / sd
z2 <- (x2 - avg) / sd

# Output
avg
x1
x2
prob
z1
z2

# Plot
plot(data)

# B
# Histogram Distribusi Normal dengan breaks 50
hist(data, breaks = 50)

# C
# Varian data bangkitan acak Distribusi Normal
var(data)