#funció que em determina si un nombre és primer
# Un nombre és primer si només és divisible per 1 i per ell mateix
# El unico primo par es 2
esPrimer <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  if (n == 2) {
    return(TRUE)
  }
  if (n %% 2 == 0) {
    return(FALSE)
  }
  
  limit <- floor(sqrt(n))
  if (limit < 3) return(TRUE)
  
  #crea secuencia de 3 hasta raiz de num y vamos proando por cada impar by= 2
  for (i in seq(3, sqrt(n), by = 2)) {
    if (n %% i == 0) {
      #si en algun punto se divide exactamente no es primo
      return(FALSE)
    }
  }
  return(TRUE)
}
#funció recursiva del càlcul de factorial
factorialRecursiu <- function(nombre) {
  #factorial de 0 y 1 es 1
  if (nombre == 0 || nombre == 1) {
    return(1)
  } else {
    # Crida recursiva: n! = n * (n-1)!
    return(nombre * factorialRecursiu(nombre - 1))
  }
}
#funció que m'indica si dos nombres són amics
# Dos nombres són amics si:
#La suma dels divisors del primer és igual al segon
#La suma dels divisors del segon és igual al primer
#No són el mateix nombre
sumaDivisors <- function(d) {
  suma <- 0
  for (i in 1:(d-1)) {
    #se divide por cada numero menor a d
    if (d %% i == 0) {
      #si da cero se suma
      suma <- suma + i  
    }
  }
  return(suma)
}

sonAmics <- function(a, b) {
  return(sumaDivisors(a) == b && 
           sumaDivisors(b) == a && 
           a != b)
}


#funció que m'indica si un nombre és perfecte
# Un nombre és perfecte si la suma dels seus divisors propis és igual al nombre
esPerfecte <- function(n) {
  #numeros menores y 1 no son perfectps
  if (n <= 1) return(FALSE)
  
  suma_divisors <- sumaDivisors(n)
  
  return(suma_divisors == n)
}


cat("1. Comprovar si un nombre és primer\n")
cat("2. Calcular factorial d'un nombre\n") 
cat("3. Comprovar si dos nombres són amics\n")
cat("4. Comprovar si un nombre és perfecte\n")

opcio <- as.integer(readline("Opció: "))

if (opcio == 1) {
  n <- as.integer(readline("Introdueix un nombre: "))
  #La ternaria aqui mola mès que en java
  cat(ifelse(esPrimer(n), "És primer", "No és primer"))
  
} else if (opcio == 2) {
  n <- as.integer(readline("Introdueix un nombre: "))
  cat("Factorial:", factorialRecursiu(n))
  
} else if (opcio == 3) {
  a <- as.integer(readline("Nombre 1: "))
  b <- as.integer(readline("Nombre 2: "))
  cat(ifelse(sonAmics(a, b), "Són amics", "No són amics"))
  
} else if (opcio == 4) {
  n <- as.integer(readline("Introdueix un nombre: "))
  cat(ifelse(esPerfecte(n), "És perfecte", "No és perfecte"))
  
} else {
  cat("Si us plau tria una opció que sigui válida")
}
