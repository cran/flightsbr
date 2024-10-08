% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_airports.R
\name{read_airports}
\alias{read_airports}
\title{Download airports data from Brazil}
\usage{
read_airports(type = "all", showProgress = TRUE, cache = TRUE)
}
\arguments{
\item{type}{String. Whether the function should download data on \code{all},
\code{public} or \code{private} airports. Defaults to \code{all}, returning fewer
columns. Downloading \code{public} and \code{private} airports separately
will return the full set of columns available for each of those
data sets.}

\item{showProgress}{Logical. Defaults to \code{TRUE} display progress.}

\item{cache}{Logical. Whether the function should read cached data downloaded
previously. Defaults to \code{TRUE}. If \code{FALSE}, the function will
always download the data and overwrite cached data.}
}
\value{
A \verb{"data.table" "data.frame"} object.
}
\description{
Download data of all airports and aerodromes registered in Brazil’s Civil
Aviation Agency (ANAC). Data source: \url{https://www.gov.br/anac/pt-br/assuntos/regulados/aerodromos/lista-de-aerodromos-civis-cadastrados}.
The data dictionary for public airports can be found at \url{https://www.anac.gov.br/acesso-a-informacao/dados-abertos/areas-de-atuacao/aerodromos/lista-de-aerodromos-publicos-v2/70-lista-de-aerodromos-publicos-v2}.
The data dictionary for private airports can be found at \url{https://www.anac.gov.br/acesso-a-informacao/dados-abertos/areas-de-atuacao/aerodromos/lista-de-aerodromos-privados-v2}.
}
\examples{
\dontrun{ if (interactive()) {
# Read airports data
all_airports <- read_airports(type = 'all')

public_airports <- read_airports(type = 'public')

private_airports <- read_airports(type = 'private')
}}
}
\concept{download airport data}
