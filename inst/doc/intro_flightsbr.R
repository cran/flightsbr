## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# install.packages("flightsbr")

## ----eval=FALSE---------------------------------------------------------------
# library(flightsbr)

## ----eval=FALSE---------------------------------------------------------------
# # in a given **month* of a given **year** (yyyymm)
# df_201506 <- read_flights(date = 201506, showProgress = FALSE)
# 
# # in a given year (yyyy)
# df_2015 <- read_flights(date = 2015, showProgress = FALSE)
# 

## ----eval=FALSE---------------------------------------------------------------
# airports_all <- flightsbr::read_airports(type = 'all', showProgress = FALSE)
# 
# airports_prv <- flightsbr::read_airports(type = 'private', showProgress = FALSE)
# 
# airports_pbl <- flightsbr::read_airports(type = 'public', showProgress = FALSE)
# 
# 

## ----eval=FALSE---------------------------------------------------------------
# aircraft <- flightsbr::read_aircraft(date = 2024, showProgress = FALSE)
# 
# head(aircraft)

## ----eval=FALSE---------------------------------------------------------------
# airport_mov <- flightsbr::read_airport_movements(date = 201901)
# 
# head(airport_mov)

## ----eval=FALSE---------------------------------------------------------------
# airfares <- flightsbr::read_airfares(date = 202003, domestic = TRUE)
# 
# head(airfares)

## ----eval=FALSE---------------------------------------------------------------
# # where are the cached files?
# get_flightsbr_cache_dir()
# 
# # use another folder (this choice is kept across R sessions)
# set_flightsbr_cache_dir("path/to/folder")
# 
# # go back to the default folder
# set_flightsbr_cache_dir(NULL)
# 
# # list the cached files
# list_flightsbr_cache()
# 
# # delete one cached file, or all of them
# delete_flightsbr_cache("basica2015-06.zip")
# delete_flightsbr_cache()

