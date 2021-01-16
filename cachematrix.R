## crea un objeto especial que almacena una matriz y almacena en caché su inversa

makeCacheMatrix <- function(x = matrix()) {
  e <- NULL
  set <- function(y) {
    x <<- y
    e <<- NULL
  }
  get <- function() x
  setinversa <- function(inversa) e <<- inversa
  getinversa <- function() e
  list(set=set, get=get,setinversa=setinversa,getinversa=getinversa)
}


## devuelve una matriz que es la inversa de la matriz que se pasa como argumento x
## primero comprueba si ha sido calculada y sino devuelve un mensaje por consola

cacheSolve <- function(x, ...) {
  m<- x$getinversa()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  datos<- x$get()
  m<- solve(datos, ...)
  x$setinversa(m)
  m
}
