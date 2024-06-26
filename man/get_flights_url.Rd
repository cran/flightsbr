% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_flights_url}
\alias{get_flights_url}
\title{Put together the url of flight data files}
\usage{
get_flights_url(type, year, month)
}
\arguments{
\item{type}{String. Whether the data set should be of the type \code{basica}
(flight stage, the default) or \code{combinada} (On flight origin and
destination - OFOD).}

\item{year}{Numeric. Year of the data in \code{yyyy} format.}

\item{month}{Numeric. Month of the data in \code{mm} format.}
}
\value{
A url string.
}
\description{
Put together the url of flight data files
}
\examples{
\dontrun{ if (interactive()) {
# Generate url
a <- get_flights_url(type='basica', year=2000, month=11)
}}
}
\keyword{internal}
