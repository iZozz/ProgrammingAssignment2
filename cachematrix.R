#Name: Zaur Mammadov
#Course:Coursera, Data Science by Johns Hopkins University
#Level: R Programming
#Programming Assignmnt: Week 3

## Caching the Inverse of a Matrix
## Below function caches the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv.matrix <- NULL
        set <- function(y) {
                x <<- y
                inv.matrix <<- NULL
        }
        get <- function() {x}
        setInverse <- function(inverse) {inv.matrix <<- inverse}
        getInverse <- function() {inv.matrix}
        list(set = set, get = get,
             setInverse = setInverse, getInverse = getInverse) 
}


## Below function computes the inverse of the matrix. In case if it is already calculated it retrieves the result from the cashe

cacheSolve <- function(x, ...) {
        inv.matrix <- x$getInverse()
        if(!is.null(inv.matrix)){
                message("Getting the cached data...")
                return(inv.matrix)
        }
        data <- x$get()
        inv.matrix<- solve(data,...)
        x$setInverse(inv.matrix)
        inv.matrix
}