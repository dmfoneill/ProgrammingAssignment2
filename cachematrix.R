## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$get()
        if(!is.null(m)) {
                message("getting cached matrix")
                return(x$getinv())
        } else {
			inv <- solv(x)
		}	
}
