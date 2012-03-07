#' Smoothing
#' 
#' Fit a 2 dimensional curve.
#' 
#' @param x a numeric vector.
#' @param y a numeric vector of length equal to x.
#' @param n the size of the output vector defining the smooth curve. When set to 0, this is ommitted.
#' @return The predicted y-values for the given x on the smooth line. If n > 0, also a vector defining the full curve. 
#' @export
smooth <- function(x, y, n=100){
	
	#verify input
	if(length(x) != length(y)) stop("x and y should be numeric vectors of equal length.")
	
	#calculate loess predictions
	myloess <- loess(y ~ x);
	predictions <- predict(myloess);
	output <- list(datapoints = list(x = x, y = predictions));
	
	#calculate a line
	if(!is.na(n) && n > 0){
		min <- range(x)[1];
		max <- range(x)[2]
		line <- seq(min, max, length=n);
		linepredictions <- predict(myloess, line);
		output$smoothline <- list(x = line, y = linepredictions)
	}
	
	
	#return
	return(output);	
}

