##Manejo de datos Vector
library(sf)

shape_files <- list.files('recursos/shps', full.names = T, pattern = '.shp$')

sf_dep <- st_read(shape_files[1])

plot(sf_dep)

summary(sf_dep['NOM_DEP'])

plot(sf_dep['NOM_DEP'])

sf_duc <- st_read(shape_files[2])

sf_pob <- st_read(shape_files[3])

##seleccionar datos (Ductos, poblacion y departamento)