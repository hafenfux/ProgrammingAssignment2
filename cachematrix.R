## Put comments here that give an overall description of what your
## functions do

## The following function creates a function to
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following function calculates the inverse of the given matrix. 
# It checks if the inverse has already been computed. If so, returnes 
# the result, if not it computes it, sets the value in the cache 
# and returnes it.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinvers(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
