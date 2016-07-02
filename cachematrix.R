## Put comments here that give an overall description of what your
## functions do

#Function 1
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        a <- function(y) {
                x <<- y
                inv <<- NULL
        }
        b <- function() x
        c <- function(inverse) inv <<- inverse
        d <- function() inv
        list(a = a,
             b = b,
             c = c,
             d = d)
}

#Function 2
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
