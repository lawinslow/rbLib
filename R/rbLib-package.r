#' rbLib: Ryan's convenient R functions
#'
#' The rbLib package is a collection of functions that I've written for specific projects, but which have applications that extend beyond the project that motivated their creation. They may be useful for generic tasks like transferring files, manipulating data, and plotting.
#'
#' @section Syncing and Running R Scripts Remotely:
#' Note that these scripts were written specifically for the case where the local system is running OSX, and the remote is Linux. For the ssh to work, you have to already have a key so that you don't need to enter a password. See \href{http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/}{HERE} for how to do that.
#' \tabular{ll}{
	#' \code{\link{pull}} \tab to pull from server \cr
	#' \code{\link{push}} \tab to push to server \cr
	#' \code{\link{run}} \tab to run script on server \cr
	#' \code{\link{prp}} \tab to push to a server, then run script there, then pull from it \cr
#'	}
#'
#' @section Generic Syncing:
#' \tabular{ll}{
	#' \code{\link{sync}} \tab similar to a \code{\link{push}} followed by a \code{\link{pull}}, except more generic in that it doesn't assume one location is remote, the two locations don't need to have same path (necessary if both are local), and includes option to exclude certain directories/ files. Never deletes files. \cr
	#' \code{\link{mirror}} \tab like \code{\link{sync}}, but unidirectional and deletes files at the destination that are not present in the source. \cr
#'	}
#'
#' @docType package
#' @name rbLib
NULL