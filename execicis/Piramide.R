columnes <- 5
files <- 4

for(i in 1:files) {

    #print_estrelles <- 2 * i - 1

    #print_espais <- (columnes - print_estrelles) / 2
    #cat(print_espais) 
    #Mare meva no potser que 1:0 sigui 2 iteracions:(
    #for(j in 1:print_espais) {
    #    cat(" ")
    #}

    #for(k in 1:print_estrelles) {
    #    cat("*")
    #}

    #cat("\n")
    for (j in 1:(files - i)) {
        if(j != 0 && j != 1) {
            cat(" ")
        }
    }
    # Asteriscos: 2i - 1
    for (k in 1:(2*i - 1)) {
        cat("*")
    }
    cat("\n")
}