##Manejo de datos Vector

#InsTalación SF
if()
library(sf)
library(sp)

shape_files <- list.files('../recursos/shps', full.names = T, pattern = '.shp$')

sf_dep <- st_read(shape_files[2])

plot(sf_dep)

summary(sf_dep['NOM_DEP'])

plot(sf_dep['NOM_DEP'])

sf_duc <- st_read(shape_files[2])

sf_pob <- st_read(shape_files[3])

##seleccionar datos (Ductos, poblacion y departamento)

##cargamos puntos de aeropuertos en Bolivia usando la libreria here sf

library(here)
set_here()
dr_here()

bol_aeropuertos <- read.csv(here("recursos", "archivos","aeropuertos_bolivia.csv"), 
                            stringsAsFactors = FALSE)

bol_aeropuertos

class(bol_aeropuertos)

sf_aer <- st_as_sf(bol_aeropuertos, coords = c("longitude", "latitude"), crs=4326)

##guardar datos en formato shapefile
st_write(sf_aer, here("recursos", "shps", "aeropuertos_bolivia.shp"))

##ploting todo junto
plot(st_geometry(sf_dep), col = sf.colors(9, categorical = TRUE), border = 'grey', 
     axes = TRUE)
plot(st_geometry(sf_duc), add = T)
plot(st_geometry(sf_aer), pch = 1, col = "red", add = T)

raster_files <- list.files('../recursos/raster', full.names = T, 
                           recursive = T, pattern = '.tif$')

ras_1 <- raster(raster_files[1], band=1)
ras_2 <- raster(raster_files[1], band=2)
ras_3 <- raster(raster_files[1], band=3)


plot(st_geometry(sf_dep), col = sf.colors(9, categorical = TRUE), border = 'grey', 
     axes = TRUE)
plot(ras_1, add = TRUE)
ras_1
plot(ras_1)
plot(st_geometry(sf_duc), col = "red", add = T)
ras_1

install.packages('leaflet')
library(leaflet)
library(sf)
leaflet() %>% addTiles()
leaflet(sf_dep) %>%addTiles()
plot(sf_dep)

map <- leaflet(sf_dep) %>%
  addPolygons(color = "#444444", weight = 1, smoothFactor = 0.5,
              opacity = 0.5, fillOpacity = 0.5,
              highlightOptions = highlightOptions(color = "white", weight = 2,
                                                  bringToFront = TRUE))
map %>% addTiles()
