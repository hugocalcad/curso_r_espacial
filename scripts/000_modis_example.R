## Modis Donwload
install.packages('rts')
install.packages('MODIS')
install.packages('MODIStools')

library(rts)
library(MODIS)
library(MODISTools)

print(str(subset))

#primero nos autenticaremos con la funcion setNASAauth
EarthdataLogin(run)
setNASAauth(username='hugocalcad@gmail.com',password='123456Hu')

#listar los productos de modis
modisProducts(version = 5)
modisProducts(version = 6)
getProduct()

##Bolivia se cubre por los tiles(h,v)[(11,10),(12,10),(11,11),(12,11)]
#x=3 # or x="MOD14A1"
x=3
x=103
product <- getProduct('MOD14A1')

ModisDownload(x=x, h=12,v=10,dates='2019.08.01', mosaic=F, proj=F, MRTpath="d:/MRT/bin")
getHdf(product = "MOD14A1", begin='2019.08.25', end='2019.08.25',
       tileH= 12, tileV=10)
a <- getTile()
MODISoptions(localArcPath = "d:/VC2019/TRABAJO/UMSA/geografia/curso/modis/")

library(MODIStsp)
MODIStsp()

