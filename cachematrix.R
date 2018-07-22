## Put comments here that give an overall description of what your
## functions do
##---This function is to cache the inverse of a matrix.
## Write a short comment describing this function
##---This function creates special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(n) {
          x<<- n
          m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, 
         get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
##---This function computes the inverse of the special "matrix" returned by makeCasheMatrix
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
        message("getting cashed data")
        return(m)
  }
  data <-x$get()
  m<- solve(data, ...)
  x$setinverse(m)
  m
  }
