## Programming Assignement #2
## This creates a cached Matrix and will return an inverse matrix from
## the cached object.

## Create the cached matrix

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


## Create the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  #Create the identity matrix
  i <- diag(nrow(x))
  solve(x, i)
}