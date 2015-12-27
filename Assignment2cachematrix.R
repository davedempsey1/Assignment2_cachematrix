##See comments below.  Script is modeled after makeVector and
##cachemean scripts

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  #list that sets value of the matrix, gets value of the matrix
  list(set = set, get = get,
       setinv = setinv, #sets value of the inverse
       getinv = getinv) #gets value of the inverse
}

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("already computed, here it is:")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m
}
