## The first function creates the inverse of the matrix then moves it to cache.
## The second function checks to see if the inverse is already in the cache, and returns the cached value if it is.

# To make this as easy as possible to understand and grade, I am attempting to follow the format of the mean example provided as closely as possible
# As a part of that, I'm closely following the format of comments from there as well.
# makeCacheMatrix creates a special "matrix", which is really a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

 makeCacheMatrix <- function(x = matrix()) {
     inv <- NULL
     set <- function(y) {
         x <<- y
         inv <<- NULL
     }
     get <- function() x
     setinv <- function(inverse) inv <<- inversre
     getinv <- function() inv
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
 }


# The following function calculates the inverse of the special "matrix" created with the above function. 
#However, it first checks to see if the inverse has already been calculated. 
#If so, it gets the inverse from the cache and skips the computation. 
#Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setinv function.
cacheSolve <- function(x, ...) {
	  inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }                                                      

    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)                                     
    inv
}
