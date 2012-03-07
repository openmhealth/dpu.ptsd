#' Binning a vector
#' 
#' Bin a vector in either 'n' bins, or bins of length 'width'
#' 
#' @param x a numeric vector
#' @param n integer, number of bins
#' @param width width of a bin. If set, 'n' is ignored.
#' @return a list with breaks, count, density and mids of the bins
#' @export
bin <- function(x, n=10, width=NA){

	if(is.na(width)){
		#use n parameter to bin
		eps <- 10^-10
		min <- range(x)[1] - eps;
		max <- range(x)[2] + eps;		
		mybreaks <- seq(min, max, length=n+1);		
	} else {
		#use width parameter to bin
		min <- (range(x)[1] %/% width) * width;
		max <- (range(x)[2] %/% width) * width + width;
		mybreaks <- seq(min, max, by=width);	
	}
	
	myhist <- hist(x, breaks=mybreaks, plot=F);
	
	return(
		list(
			breaks = myhist$breaks, 
			count = myhist$counts,
			density = myhist$density,
			mids = myhist$mids
		)
	);	
}
