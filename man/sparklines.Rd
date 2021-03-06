% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sparklines.R
\name{sparklines}
\alias{sparklines}
\title{Add Sparklines to a Figure}
\usage{
sparklines(x, y, x_pt, y_pt, y_align = c("bot", "top", "mid", "left",
  "right"), x_align = c("left", "right", "mid"), scale_xy = TRUE,
  x_cex = 1, y_cex = 1, ax_sides = NULL, col = "black", lwd = 1,
  acol = "black", awd = 1)
}
\arguments{
\item{x, y}{numeric vector of values for sparklines}

\item{x_pt, y_pt}{numeric length 1 indicating coordinate to use as a reference for positioning sparkline}

\item{y_align}{character indicating the portion of \code{y} to use for vertical alignment relative to reference coordinate}

\item{x_align}{same as \code{y_align}, except for \code{x} and horizontal alignment; fewer options than \code{y_align}}

\item{scale_xy}{Logical; if TRUE (default) \code{x} and \code{y} are rescaled to be the size of a character}

\item{x_cex, y_cex}{numeric, scaling factor to adjust the size of the sparklines in either direction; does nothing if \code{scale_xy} is FALSE}

\item{ax_sides}{Integer value(s) in 1:4 indicating the sides of the sparkline to be bordered by a solid 'axis' line; if \code{NULL} (default), no lines are drawn}

\item{col}{color of the sparkline}

\item{lwd}{width of the sparkline}

\item{acol}{color of the axis lines}

\item{awd}{width of the axis lines}
}
\value{
Returns NULL invisibly
}
\description{
Adds lines and (optionally) axes positioned relative to reference coordinates and scaled to the size of a character
}
\details{
Created as a way of associating a mini time series with a particular point in a primary time series. For example, if plotting monthly averages, could add a sparkline for each month showing daily values.
}
\examples{
# fake data
x <- 1:20
y <- cumsum(rnorm(20))

# plot squared values
# to show that sparkline x-y 
# can be on a different scale
plot(x^2, y^2, type='l')

# add sparklines
# showing a mini version of the time series
# leading into and out of each point
# of the big time series
for(i in 1:length(x)){
	xpt <- x[i]^2
	ypt <- y[i]^2
	sparklines(
		x, y, xpt, ypt,
		y_align="right", x_align="right", ax_sides=c(1,2), col="red", awd=0.5
	)
	sparklines(
		x, y, xpt, ypt,
		y_align="left", x_align="left", ax_sides=c(1,4), col="blue", awd=0.5
	)
}

}
\seealso{
For another approach to adding miniaturized time series data to a specific location on a figure, see \code{\link{polarGlyph}}.
}

