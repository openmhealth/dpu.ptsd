
#' Correlation
#' 
#' Calcualte a correlation coefficient between two vectors
#' 
#' @param x a numeric vector
#' @param y another numeric vector of length equal to 'x'
#' @return a correlation coefficient. 
#' @export
correlation <- function(x, y){
	
	#verify input
	if(length(x) != length(y)) stop("x and y should be numeric vectors of equal length.")
	
	#calculate
	mycor <- cor(x,y)
	
	#return
	return(
		list(
			correlation=mycor
		)
	);	
}

