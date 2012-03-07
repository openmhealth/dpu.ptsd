#' Quantiles
#' 
#' Calculate quantiles for a numeric vector
#' 
#' @param x a numeric vector.
#' @param probs vector with quantie probabilities. All values must be between 0 and 1.
#' @return probabilities and corresponding quantiles.
#' @export
quantiles <- function(x, probs=c(0, .25, .50, .75, 1)){
	
	#verify
	if(range(probs)[1] < 0 || range(probs)[2] > 1) {
		stop("probs must be vector with values between 0 and 1")
	}
	
	#calculate
	myquantiles <- quantile(x, probs=probs, names=F);
	
	#return
	return(
		list(
			probs = probs,
			quantiles = myquantiles
		)
	);	
}

