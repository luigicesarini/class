my_path <- dirname(rstudioapi::getActiveDocumentContext()$path)

pkg <- c("Hmisc","leaflet","rgdal","rgeos","sp","sf","raster","Rmisc","gstat","automap","dplyr","knitr", "extraDistr","gnFit","data.table",
         "modifiedmk","tmap","extRemes","grid","gridExtra","extrafont","lubridate","reshape2","data.table","janitor","fields",
         "tibble","truncnorm", "EnvStats", "kableExtra", "igraph","nngeo","wesanderson","ggmap","leaflet.extras","tidyr",
         "tidyverse")

dummy = sapply(pkg, function(x){ # for each package check if it is already installed, do so if not, and load it
  if(x %in% rownames(installed.packages()) == FALSE) install.packages(x)
  library(x, character.only = T, quietly = T) # may give some information or warnings, can be ignored usually
})



