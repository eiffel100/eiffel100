## Put comments here that give an overall description of what your
## functions do: to write functions to obtain the inverse of a matrix
and store the solution permanently. 

## Write a short comment describing this function£ºit is meant to set and get the inverse of a matrix and ensure efficiency.

x<-a= read.csv(squarematrix)
makeCacheMatrix <- function(x = matrix()) 
{
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) cacheinverse <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
## Return a matrix that is the inverse of 'x'
