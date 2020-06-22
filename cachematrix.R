## Put comments here that give an overall description of what your
## functions do

## This function stores a matrix and caches its inverse

makeCacheMatrix <- function(x = matrix()) {
        ## 'x' is a matrix of any square dimensions
        
        ## Return list of functions that
        ## 1. set the matrix
        ## 2. get the matrix
        ## 3. set the inverse
        ## 4. get the inverse
        
        mat_inverse <- NULL
        
        set <- function(y){
                mat <<- y
                mat_inverse <<- NULL
        }
        
        get <- function() mat
        setInverse <- function(inverse) mat_inverse <<- inverse
        getInverse <- function() mat_inverse
        
        list(get = get, set = set,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
