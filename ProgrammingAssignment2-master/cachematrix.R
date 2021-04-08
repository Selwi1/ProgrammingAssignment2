## First simply set the input x as a matrix
## Then set the solved value "inv" as a NULL

## last change every reference to "mean" to "solve"


makeCacheMatrix <- function(x = matrix()) {
           inv  <- NULL
           set  <- function(y){
             x <<- y
          inv  <<- NULL
  }
  get <- function()x
  setInverse <- function(Inverse)inv <<- Inverse
  getInverse <- function()inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
## Change "mean" to "solve" and "m" to "inv"

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()
       if(!is.null(inv)){
    message("getting cached data")
    return(inv)
}   
## Return a matrix that is the inverse of 'x'
       
matrix <- x$get()
  inv  <- solve(matrix, ...)
  x$setInverse(inv)
  inv
       
}
