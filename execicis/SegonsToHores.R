segons <- as.numeric(readline(prompt = "Introdueix els segons totals: "))

hores <- segons %/% 3600
restant <- segons %% 3600
minuts <- restant %/% 60
rest_segons <- restant %% 60

cat("Hores:", hores, "Minuts:", minuts, "Segons:", rest_segons, "\n")
