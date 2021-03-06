% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resize.R
\name{resize}
\alias{resize}
\title{Resize a droplet by power off, snapshot, and create new droplet}
\usage{
resize(droplet, delete_original = TRUE, ...)
}
\arguments{
\item{droplet}{A droplet, or something that can be coerced to a droplet by
\code{\link{as.droplet}}.}

\item{delete_original}{(logical) Delete original droplet. Default:
\code{TRUE}}

\item{...}{Named options passed on to \code{\link{droplet_create}}.}
}
\value{
A droplet
}
\description{
Resize a droplet by power off, snapshot, and create new droplet
}
\details{
Note that you can not resize a droplet while it is powered on.
Thus, this function powers off your droplet, makes a snapshot, then
creates a new droplet from that snapshot. We use \code{\link{droplet_wait}}
in between these steps to wait for each to finish. You can optionally delete
the original droplet.
}
\examples{
\dontrun{
d <- droplet_create()
d # current size is 512mb
d \%>\% resize(size = "2gb")
}
}
