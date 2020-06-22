## Put comments here that give an overall description of what your
## functions do

## This function stores a matrix and caches its inverse, creating a special
## matrix

makeCacheMatrix <- function(x = matrix()) {
        ## 'x' is a matrix of any square dimensions
        
        ## Return list of functions that:
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


## This function gets the inverse of the special matrix, if it's already
## calculated it gets it from the cache, otherwise it's calculated and
## set in the cache

cacheSolve <- function(x, ...) {
        ## 'x' is a matrix of any square dimensions
        
        ## Return a matrix that is the inverse of 'x'
        
        inverse <- x$getInverse()
        
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
        }
        
        mat <- x$get()
        inverse <- solve(mat)
        x$setInverse(inverse)
        inverse
}
