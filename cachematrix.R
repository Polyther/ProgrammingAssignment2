## Put comments here that give an overall description of what your
## functions do

## This function named 'makeCacheMatrix' creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        raw_matrix <- x  ## to get an original matrix.
        inverse_matrix <- solve(raw_matrix) ## to calculate the inverse of given matrix.
        m <- inverse_matrix  ## to cache the inverse matrix.
        
        list(original_matrix = raw_matrix, inverse_matrix = m) ## to create a special "matrix" object that can cache the inverse matrix.
            
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        
        m <- x$inverse_matrix
        
        if(!is.na(m)){         ## to check if the inverse matrix has already been calculated.
                massage('getting the inverse matrix')
                return(m)
                }
        raw_matrix <- x$original_matrix  ## to get the special "matrix" from makeCacheMatrix above. 
        inverse_matrix <- solve(raw_matrix) ## to compute the inverse of the special "matrix" returned above.
        m <- inverse_matrix  
        x$inverse_matrix <- m ## to cache the inverse matrix.
        m  ## Return a matrix that is the inverse of 'x'.
        }
        
        
        
        
        
        
}
