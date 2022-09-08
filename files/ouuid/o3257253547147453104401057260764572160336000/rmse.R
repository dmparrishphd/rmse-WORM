function ( mod, obs ) {
    stopifnot (
        is.numeric ( mod ) ,
        is.numeric ( obs ) ,
        length ( mod ) == length ( obs ) )
    if  (
            length ( mod ) < 1
        ||  any ( is.na ( mod ) )
        ||  any ( is.na ( obs ) ) ) return ( NA_real_ )
    ERR <- mod - obs
    MSE  <- mean ( ERR * ERR )
    sqrt ( MSE ) }
