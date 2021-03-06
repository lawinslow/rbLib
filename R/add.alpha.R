
#' @title Add alpha (transparency) to a color
#' 
#' @description Friendly way to change the transparency of a color of vector of colors that are specified by name. 
#' 
#' @param col a color, specified as in \code{\link{colors}}, or in output format of \code{\link{rgb}}
#' @param alpha numeric vector w/ value(s) between 0 (transparent) and 1 (opaque)
#' 
#' @details
#' Pretty sure I got the code (or inspiration) \href{# http://www.magesblog.com/2013/04/how-to-change-alpha-value-of-colours-in.html}{here}. This function is simple (the code is just 1 line), but it is quick and convenient.
#' 
#' @seealso See \code{\link{rgb}}, \code{\link{colors}}, \code{\link{colorRampPalette}}, \code{\link{adjustcolor}} for base functions handling colors. See \code{\link{rbLib-package}} for package overview.
#' 
#' @examples
#' N <- 10
#' blues <- add.alpha("blue", seq(0.1,1, length.out=N))
#' plot(1:N, col=blues, pch=19)
#' b2r <- colorRampPalette
#' 
#' ba <- add.alpha("blue", alpha=0.25)
#' ra <- add.alpha("red", alpha=1)
#' cols <- colorRampPalette(c(ba, ra), alpha=TRUE)(N)
#' plot(1:N, col=cols, pch=19)
#' 
#' @export
add.alpha <- function(col, alpha=1){
	if(missing(col)){
		stop("Please provide a vector of colours.")
	}
	apply(sapply(col, grDevices::col2rgb)/255, 2, function(x)grDevices::rgb(x[1],x[2],x[3],alpha=alpha))
}