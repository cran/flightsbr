# flightsbr: Download Flight and Airport Data from Brazil <img align="right" src="man/figures/logo.png?raw=true" alt="logo" width="180">

[![CRAN
   status](https://www.r-pkg.org/badges/version/flightsbr)](https://CRAN.R-project.org/package=flightsbr)
[![CRAN/METACRAN Total
   downloads](https://cranlogs.r-pkg.org/badges/grand-total/flightsbr?color=yellow)](https://CRAN.R-project.org/package=flightsbr)
[![R-CMD-check](https://github.com/ipeaGIT/flightsbr/workflows/R-CMD-check/badge.svg)](https://github.com/ipeaGIT/flightsbr/actions)
[![Lifecycle:
     active](https://img.shields.io/badge/lifecycle-active-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)
[![Codecov test
coverage](https://codecov.io/gh/ipeaGIT/flightsbr/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ipeaGIT/flightsbr?branch=main)
[![DOI](https://img.shields.io/badge/DOI-10.31219%2Fosf.io%2Fjdv7u-blue)](https://doi.org/10.31219/osf.io/jdv7u)

**flightsbr** is an R package designed to facilitate the download of comprehensive flight and airport data from Brazil’s Civil Aviation Agency (ANAC). The package provides access to detailed information on aircraft, airports, and airport operations registered with ANAC. It also includes data on airfares, all international flights to and from Brazil, and domestic flights within the country.


## Installation

```R
# From CRAN
  install.packages("flightsbr")

# or use the development version with latest features
  utils::remove.packages('flightsbr')
  remotes::install_github("ipeaGIT/flightsbr")
```

## Basic usage
The package currently includes [five main functions](https://ipeagit.github.io/flightsbr/reference/index.html):

1. `read_flights()`
2. `read_airports()`
3. `read_aircraft()`
4. `read_airport_movements()`
5. `read_airfares()`


#### 1) `read_flights()` to download data on national and international flights.
```
# flights in a given month/year (yyyymm)
df_201506 <- read_flights(date = 201506)

# flights in a given year (yyyy)
df_2015 <- read_flights(date = 2015)

```

#### 2) `read_airports()` to download data on private and public airports.
```
# all airports
airports_all <- flightsbr::read_airports(type = 'all')

# public airports
airports_pbl <- flightsbr::read_airports(type = 'public')

# private airports
airports_prv <- flightsbr::read_airports(type = 'private')

```

#### 3) `read_aircraft()` to download aircraft data.
```
aircraft <- read_aircraft(date = 2024)
```

#### 4) `read_airport_movements()` to download data on aiport movements.
```
airport_ops <- read_airport_movements(date = 202001)
```

#### 5) `read_airfares()` to download data on airfares of domestic or international flights.
```
airfares <- read_airfares(date = 202001, domestic = TRUE)

```

#### **Related projects**

Similar packages for other countries/continents

- World: [openSkies: a client interface to the 'OpenSky' API](https://github.com/Rafael-Ayala/openSkies)
- USA: [anyflights](https://simonpcouch.github.io/anyflights/)

Similar projects for Brazil:

As of today, there are two repositories/projects with Brazilian aviation data, which include more info related to weather conditions, air traffic management etc. The advantage of **flightsbt** is that it's the easiest and fastest way to download flight and airport Data from Brazil in `R`.

- [AVSTATS-Brasil](https://www.nectar.ita.br/avstats/), by the team at ITA
- [Integrated Dataset of Brazilian Flights](https://ieee-dataport.org/documents/brazilian-flights-dataset), by the team at CEFET-RJ.


## Acknowledgement <a href="https://www.ipea.gov.br"><img align="right" src="man/figures/ipea_logo.png" alt="IPEA" width="300" /></a>

Original data is collected by [Brazil’s Civil Aviation Agency (ANAC)](https://www.gov.br/anac/pt-br). The **flightsbr** package is developed by a team at the Institute for Applied Economic Research (Ipea), Brazil. If you want to cite this package, you can cite it as:

* Pereira, R.H.M. (2022). **flightsbr: Download Flight And Airport Data from Brazil**. R package (Version 0.1.0). OSF. https://doi.org/10.31219/osf.io/jdv7u 
