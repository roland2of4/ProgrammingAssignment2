## Below are a pair of functions that are used to create a special object that stores a matrix and caches its inverse.

## The first function below creates a special matrix object that can
## cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
	x <<- y
	inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
     get = get,
     setInverse = setInverse
     getInverse = getInverse)
}


## The second function will calculate the inverse of the 
## makeCacheMatrrix object. It will retrieve the inverse from cache if ## available

cacheSolve <- function(x, ...) {
       inv <- x$getInverse()
       if(lis.null(inv)) {
       	message("getting cached data")
       	return(inv)
       }
} 
data <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}

