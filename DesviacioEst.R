cat("Desviació estàndard introdueix 5 numeros\n")
firstN <- as.numeric(readline(prompt = "Introdueix el primer numero: "))
secondN <- as.numeric(readline(prompt = "Introdueix el segon numero: "))
thirdN <- as.numeric(readline(prompt = "Introdueix el tercer numero: "))
fourthN <- as.numeric(readline(prompt = "Introdueix el quart numero: "))
fifthN <- as.numeric(readline(prompt = "Introdueix el cinquè numero: "))
mitjana <- mean(c(firstN, secondN, thirdN, fourthN, fifthN))
numeros <- c(firstN, secondN, thirdN, fourthN, fifthN) 
diferenciaI <- numeros - mitjana

quadrats <- diferenciaI^2

sumatoria <- sum(quadrats)

result <- sqrt(sumatoria / 4)

cat("La desviació estàndard és:", round(result, 3), "\n")