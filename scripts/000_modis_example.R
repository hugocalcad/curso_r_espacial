## Modis Donwload
install.packages('MODIS')

library(MODIS)

setwd('d:/VC2019/TRABAJO/UMSA/geografia/curso/modis/')
MODISoptions(localArcPath = "d:/VC2019/TRABAJO/UMSA/geografia/curso/modis/", gdalPath = "c:/OSGeo4W64/bin/")

#primero nos autenticaremos con la funcion setNASAauth
setNASAauth(username='hugocalcad@gmail.com',password='123456Hu')

#listar los productos de modis
getProduct()

##Bolivia se cubre por los tiles(h,v)[(11,10),(12,10),(11,11),(12,11)]
#x=3 # or x="MOD14A1"
product <- getProduct('MOD14A')

getHdf(product = "MOD14A", begin='2019.07.01', end='2019.08.27',
       tileH= 12, tileV=10)




