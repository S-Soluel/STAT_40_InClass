# Sam Solheim
# Stat 40

## Ex 1
vector_scale = function(vec){
  for(i in 1:length(vec)){
    Y = (vec[i] - min(vec))/(max(vec)-min(vec))
    vec[i] = Y
    # This for loop takes the original value of the vector at a specific 
    # position and computes the the scale of it compared to the other values
    # within the vector. 
    
    # Take the following example:
    # min(vec) = 1, max(vec) = 9, i = 1
    # Y = (1 - 1) / (9 - 1) = 0
  }
  return(vec)
}

## Ex 2
matrix_scale = function(mat){
  if (!is.matrix(mat)){
    stop("The input needs to be a matrix.")
    # Makes sure that the input to the formula is a matrix, results in 
    # a forced error message otherwise. 
  }
  if (is.matrix(mat))
  {
    return(vector_scale(mat))
    # Utilizes the vector_scale formula we created to determine the scope of an
    # entire matrix instead of only doing so for a vector. 
  }
}
x = c(1:9)
y= matrix(x, nrow = 3)


