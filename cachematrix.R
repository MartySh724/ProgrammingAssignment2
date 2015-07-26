## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ix <<- NULL
  set <- function(y) {
    x <<- y
    ix <<- NULL
  }
  get <- function() x
  getInverse <- function() {
    if(is.null(ix)) 
      ix <<- cacheSolve(x)
    ix
  }
  list(set = set, get=get,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  #Create the identity matrix
  i <- diag(nrow(x))
  solve(x, i)
}