factura <- as.numeric(readline(prompt = "Intrdueix la quantitat de la factura: "))
years <- as.numeric(readline(prompt = "Per quants anys: "))

total <- factura * (1 + 0.03) ^ years

cat("La quantitat de la factura", factura , "desprès de ", years, "anys ès:", total, "\n")