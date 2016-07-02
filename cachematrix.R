## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

 makeCacheMatrix <- function(x = matrix()) {
+         inv <- NULL
+         a <- function(y) {
+                 x <<- y
+                 inv <<- NULL
+         }
+         b <- function() x
+         c <- function(inverse) inv <<- inverse
+         d <- function() inv
+         list(a = a,
+              b = b,
+              c = c,
+              d = d)
+ }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
+         inv <- x$d()
+         if (!is.null(inv)) {
+                 message("getting cached data")
+                 return(inv)
+         }
+         mat <- x$b()
+         inv <- solve(mat, ...)
+         x$c(inv)
+         inv
+ }
