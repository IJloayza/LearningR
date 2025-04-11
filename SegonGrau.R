x <- 2
y <- 9
z <- 3

a <- y^2 - 4 * x * z

x1 <- round((-y + sqrt(a)) / (2 * x), 2)
x2 <- round((-y - sqrt(a)) / (2 * x), 2)

cat("X: ", x1, "X2: ", x2, "\n")