firstN <- as.numeric(readline(prompt = "Introdueix la nota de pràctiques: "))
secondN<- as.numeric(readline(prompt = "Introdueix la nota teórica: "))
terceraN <- as.numeric(readline(prompt = "Introdueix la nota de participació: "))

notaFinal <- (firstN * 0.3 + secondN * 0.6 + terceraN * 0.1)

cat("Nota final:", notaFinal, "\n")