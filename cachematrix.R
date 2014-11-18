########################################################### 
# CACHING THE INVERSE OF A MATRIX                         #
# Matrix inversion is usually a costly computation.       #
# Here are a pair of functions that cache the inverse     #
# of a matrix so we don't need to compute it repeatedly.  #
########################################################### 

## Function 1: makeCacheMatrix
#   This function creates a special "matrix" that 
#   can cache its inverse, which is actually a list containing
#   functions to 
#     1. set the value of the matrix
#     2. get the value of the matrix
#     3. set the value of the inverse
#     4. get the value of the inverse
## Arguments
# x     a square numeric or complex matrix containing the 
#       coefficients of the linear system. Logical matrices 
#       are coerced to numeric. Default value is a 1x1 matrix
#       of value NA.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Function 2: cacheSolve
#   This function returns a matrix that is the inverse of a 
#   special "matrix" returned by the makeCacheMatrix function 
#   above. If the inverse has already been calculated (and the 
#   matrix has not changed), then the cachesolve should  
#   retrieve the inverse from the cache.
### Arguments
# x     a special "matrix" returned by makeCacheMatrix.
# ...   further arguments that will be passed to the "solve" 
#       function used internally to compute the inverse of x.

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
