## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = numeric()) {
  z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setmat <- function(solve) z <<- solve
  getmat <- function() z
  list(set = set, get = get,
       setmat = setmat,
       getmat = getmat)
}
##like make vector but instead once confirming not already, sets z using solve and sets positionally in the list

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  z <- x$getsolve()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setsolve(z)
  z
}
##like cache mean but again, uses solve instead of mean
