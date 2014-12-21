<<<<<<< HEAD
## Provide comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  ## create a matrix object x and related methods/ sub-functions
  
  ## define the cache m
  m <- NULL
  set <- function(y) {
    x <<- y    ## Now x in the parent environment has been assigned the value ofinput matrix y
    m <<- NULL ## m in the parent environment is reset to null
  }
  get <- function() x ## return the matrix x
  setinverse <- function(inverse) m <<- inverse ## set the cache m equal
  ## to the inverse of the matrix x
  getinverse <- function() m ## return the cached inverse of x
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7

}


<<<<<<< HEAD
## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix(). When the inverse has already been calculated 
## and the matrix remains unchanged, then the inverse value is retrieved from the cach. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("retrieving cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}

=======
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
