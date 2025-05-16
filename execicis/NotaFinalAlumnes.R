firstN <- as.numeric(readline(prompt = "Introdueix la nota del primer alumne: "))
secondN <- as.numeric(readline(prompt = "Introdueix la nota del segon alumne: "))
thirdN <- as.numeric(readline(prompt = "Introdueix la nota del tercer alumne: "))
fourthN <- as.numeric(readline(prompt = "Introdueix la nota del quart alumne: "))

#mitjana <- (firstN + secondN + thirdN + fourthN) / 4
mitjana <- mean(c(firstN, secondN, thirdN, fourthN))
cat("La mitjana de les notes és:", mitjana, "\n")