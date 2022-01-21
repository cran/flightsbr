## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#  install.packages("flightsbr")

## ---- eval = FALSE------------------------------------------------------------
#  # install.packages("remotes")
#  remotes::install_github("ipeaGIT/flightsbr")

## ---- message = FALSE---------------------------------------------------------
library(flightsbr)

## -----------------------------------------------------------------------------
df201506 <- read_flights(year=2015, month=6)

head(df201506)

