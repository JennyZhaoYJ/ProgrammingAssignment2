## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL #initialize an inverse
  set <- function(x){ 
    m <<- x            #set a new matrix 
    i <<- NULL         #clear the (existing) inverse
  }
  get <- function(){   #get the matrix
    m
  }
  setInverse <- function(inverse){ #set a new inverse
    i <<- inverse
  }
  getInverse <- function(){        #get the inverse
    i
  }
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse) #create a list containing the functions of a matrix
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i)){     ##if the inverse has already been calculated, then return a matrix that is the inverse of 'x'
    message("get cached inverse")
    return(i)
  }
  m <- x$get()  #get the matrix
  i <- solve(m) #calculate the inverse of matrix
  x$setInverse(i)
  i
}
