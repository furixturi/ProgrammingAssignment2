########################################################### 
# Matrix inversion is usually a costly computation.       #
# Here are a pair of functions that cache the inverse     #
# of a matrix so we don't need to compute it repeatedly.  #
########################################################### 

## makeCacheMatrix
#   This function creates a special "matrix" object that 
#   can cache its inverse.
### Arguments
# x     a square numeric or complex matrix containing the 
#       coefficients of the linear system. Logical matrices 
#       are coerced to numeric. Default value is a 1x1 matrix
#       of value NA.

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve
#   This function computes the inverse of the special "matrix"
#   returned by makeCacheMatrix above. If the inverse has 
#   already been calculated (and the matrix has not changed), 
#   then the cachesolve should retrieve the inverse from the cache.
### Arguments
# x     a special "matrix" returned by makeCacheMatrix.
# ...   further arguments that will be passed to the "solve" 
#       function used internally to compute the inverse of x.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
