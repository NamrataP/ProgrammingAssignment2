## Put comments here that give an overall description of what your
## functions do

## The first function, makeCacheMatrix creates a special “matrix”, which is really a list containing a function to
## Sets the value of the matrix
## Gets the value of the matrix
## Sets the inverse of the matrix
## Gets the inverse of the matrix
makeCacheMatrix<- function(x = matrix()) {
  inv<-NULL
  set<-function(y) {
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinv<-function(inv) inv<<-inverse
  getinv<-function()inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## The following function calculates the inverse
## of the matrix created with the above function
## and caches the result
cacheSolve<-function(x) {
  inv<-x$getinv()
  if(!is.null(inv)) {
    message("getting the cached data")
    return(inv)
  }
  mat.data<-x$get()
  inv = solve(mat.data)
  x$setinv(inv)
  return(inv)
}

