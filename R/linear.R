#' Linear Regression
#' 
#' Perform a linear regression of two variables (i.e. calculate optimal slope).
#' 
#' @param x numeric vector on x axis.
#' @param y numeric vector on y axis.
#' @return intercept and slope
#' @export
linear <- function(x, y){
	
	#verify input
	if(length(x) != length(y)) stop("x and y should be numeric vectors of equal length.")
	
	#calculate
	mylm <- lm(y~x);
	
	return(
		list(
			intercept = coef(mylm)[1],
			slope = coef(mylm)[2]
		)
	);	
}

