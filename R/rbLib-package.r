#' rbLib: Ryan's convenient R functions
#'
#' The rbLib package is a collective of convenient functions that are not specific to a particular project, and may be useful for generic tasks like transferring files, manipulating data, and plotting.
#'
#'
#' @section Syncing and Running R Scripts Remotely:
#' \code{\link{pull}} to pull from server
#' \code{\link{push}} to push to server
#' \code{\link{run}} to run script on server
#' \code{\link{prp}} to push to a server, then run script there, then pull from it
#'
#' @section Generic Syncing:
#' \code{\link{sync}} similar to a \code{\link{push}} followed by a \code{\link{pull}}, except more generic in that it doesn't assume one location is remote, the two locations don't need to have same path (necessary if both are local), and includes option to exclude certain directories/ files. Never deletes files.
#' \code{\link{mirror}} like \code{\link{sync}}, but unidirectional and deletes files at the destination that are not present in the source.
#'
#' @note These scripts were written specifically for the case where the local system is running OSX, and the remote is Linux. For the ssh to work, you have to already have a key so that you don't need to enter a password. See \href{http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/}{HERE} for how to do that.
#'
#' @docType package
#' @name rbLib
NULL