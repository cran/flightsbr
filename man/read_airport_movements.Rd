% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_airport_movements.R
\name{read_airport_movements}
\alias{read_airport_movements}
\title{Download airport movement data from Brazil}
\usage{
read_airport_movements(date = NULL, showProgress = TRUE, cache = TRUE)
}
\arguments{
\item{date}{Numeric. Date of the data in the format \code{yyyymm}. Defaults to
the latest date available. To download the data for all months in
a year, the user can pass a 4-digit year input \code{yyyy}. The
function also accepts a vector of dates, like \code{c(202201, 202301)}
or \code{c(2022, 2024)}.}

\item{showProgress}{Logical. Defaults to \code{TRUE} display progress.}

\item{cache}{Logical. Whether the function should read cached data downloaded
previously. Defaults to \code{TRUE}. If \code{FALSE}, the function will
always download the data and overwrite cached data.}
}
\value{
A \verb{"data.table" "data.frame"} object. All columns are returned with
\code{class} of type \code{"character"}.
}
\description{
Download airport movements data from Brazil’s Civil Aviation Agency (ANAC).
The data covers all passenger, aircraft, cargo and mail movement data from
airports regulated by ANAC. Data only available from Jan 2019 onwards. A
description of all variables included in the data is available at
\url{https://www.anac.gov.br/acesso-a-informacao/dados-abertos/areas-de-atuacao/operador-aeroportuario/dados-de-movimentacao-aeroportuaria/60-dados-de-movimentacao-aeroportuaria}.
}
\examples{
\dontrun{ if (interactive()) {
# Read airport movement data
amov202006 <- read_airport_movements(date = 202006)

amov2020 <- read_airport_movements(date = 2020)
}}
}
\concept{download airport movement data}
