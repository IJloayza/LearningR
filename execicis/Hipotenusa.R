catet1 <- as.numeric(readline(prompt = "Introdueix el valor del catet 1: "))
catet2 <- as.numeric(readline(prompt = "Introdueix el valor del catet 2: "))

catets_quadrats <- catet1^2 + catet2^2
hipotenusa <- sqrt(catets_quadrats)

cat("Hipotenusa:", hipotenusa, "de catets ", catet1, " ", catet2 , "\n")