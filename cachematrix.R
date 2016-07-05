

## makeCacheMatrix 
## puts a matrix to a cached memory, in order to have the result ready after the first calcultion

makeCacheMatrix <- function(x = matrix()){    
        m <- NULL
        set <- function(y){
        x <<- y  
        m <<- NULL #save the matrix cache 
        }
    get <- function() x 
    setInverse <- function(solve) m<<-solve 
    getInverse <- function() m 
    list(set = set, get = get, ## set and get puts the matrix to cache
         setInverse = setInverse, 
         getInverse = getInverse)  ## setinverse, and getinverse gets and puts an inversed matrix to cache,
}


## cacheSolve take a custom matrix type created by the makeCacheMatrix function
## and calculates the inverse matrix of it
## In addition, first it analyese if the calculation has been done before
## And if it has been done before it recalls the data from the cache. If it has not been done 
## before it calculates the inverse matrix and store it.

cacheSolve <- function(x, ...) {
    m <- x$getInverse()                   #query the x matrix's cache
    if(!is.null(m)){                  
        message("getting cached data")    
        return(m)                         # return the cache  
    }
    data <- x$get()                     # obtain the matrix used by makeCacheMatrix function 
    m <- solve(data, ...)               # calculate the inverse matrix
    x$setInverse(m)                     # save the inverse matrix in cache using the makeCacheMatrix set function
}
