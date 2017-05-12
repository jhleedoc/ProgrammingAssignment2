## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set it to NULL
}
 cache <- NULL
        # store a matrix
        setMat <- function(y) {
                x <- y
               # since the matrix is assigned a new value, flush the cache
                cache <- NULL
        }
        
        # returns the stored matrix
        getMat <- function() {
                x
        }
        
         # cache the given argument
        setInv <- function(solve) {
                cache <- solve
        }
        
      # get the cached value
        getInv <- function() {
                cache
        }
        
        # return a list. Each named element of the list is a function
        list(setMat = setMat, getMat = getMat, setInv = setInv, getInv = getInv)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # get the cached value
 inverse <- x$getInv()
         # if a cached value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # otherwise get the matrix, caclulate the inverse and store it in
        # the cache
        data <- x$getMat()
        inverse <- solve(data)
        x$setInv(inverse)
        
        # return the inverse
        inverse
}
