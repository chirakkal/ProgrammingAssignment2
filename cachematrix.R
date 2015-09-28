

## Creates a list containing functions to set value of a matrix, get the value of a matrix,
## set the value of inverse and get the value of inverse

makeCacheMatrix <- function(x = matrix()) {

	inv <- NULL
	set <- function(y) {
                    x <<- y
                    inv <<- NULL
            }
            get <- function() x
            setinv <- function(inverse) inv <<- inverse
            getinv <- function() inv
            list(set = set, get = get,
                 setinv = setinv,
                 getinv = getinv)

}


## This function accepts as input the list created using makeCacheMatrix function.
## If the inverse is already calculated it fetches the inverse
## Otherwise it calculates inverse and sets the cache using setinv function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	   inv <- x$getinv()
           if(!is.null(inv)) {
                    message("getting cached data")
                    return(inv)
            }
            data <- x$get()
            inv <- solve(data, ...)
            x$setinv(inv)
            inv
}
