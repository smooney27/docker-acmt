
source("GeocoderACMT.R")
location <- geocode("1959 NE Pacific Street, Seattle, WA 98195")
measures <- get_acmt_standard_array(location$longitude, location$latitude, 2000, year=2010)  
location[1]


location <- geocode("515 W Olympic Pl, Seattle, WA 98195")
measures <- get_acmt_standard_array(location$longitude, location$latitude, 2000, year=2010)  

data.frame(measures$names, round(measures$values, 2))
