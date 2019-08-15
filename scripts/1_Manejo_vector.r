##Manejo de datos Vector
library(sf)

shapes_files <- list.files('recursos/shps', full.names = T, pattern = '.shp$')

sf_dep <- st_read(shapes_files[1])

plot(sf_dep)

summary(sf_dep['NOM_DEP'])

plot(sf_dep['NOM_DEP'])
