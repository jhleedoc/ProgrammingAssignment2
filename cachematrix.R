## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
 cache <- NULL
        setMat <- function(y) {
                x <- y
               
                cache <- NULL
        }
        
        
        getMat <- function() {
                x
        }
        
        
        setInv <- function(solve) {
                cache <- solve
        }
        
      
        getInv <- function() {
                cache
        }
        
       
        list(setMat = setMat, getMat = getMat, setInv = setInv, getInv = getInv)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 inverse <- x$getInv()
        
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
       
        data <- x$getMat()
        inverse <- solve(data)
        x$setInv(inverse)
        
        
        inverse
}
