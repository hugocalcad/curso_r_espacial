##Manejo de datos Vector

#InsTalación SF
if()
library(sf)
library(sp)

shape_files <- list.files('recursos/shps', full.names = T, pattern = '.shp$')

sf_dep <- st_read(shape_files[1])

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
plot(st_geometry(sf_aer), pch = 3, col = "red", add = T)
