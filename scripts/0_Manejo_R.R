##Manejo de R

##Hola Mundo

print("Hola Mundo")
print(paste('Hola,', 'como', 'estas?'))

##R calculadora
2+2
sqrt(9)/3
pi
sin(23)

##Trabajar con vectores

x <- c(3,6,8)
y <- c(2,9,0)
x + y
x + 1

##sum mean product on vector

sum(2,7,5)
sum(x)
x <- c(5,NaN,2,3,4)
sum(x, na.rm = TRUE)
mean(x, na.rm = TRUE)
prod(x, na.rm = TRUE)

# Construct a matrix with 5 rows that contain the numbers 1 up to 10 and byrow =  TRUE 
matrix_a <-matrix(1:10, byrow = TRUE, nrow = 5)
matrix_a
dim(matrix_a)

#Data Frames
# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c('book', 'pen', 'textbook', 'pencil_case')
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5, 8, 10, 7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df
names(df) <- c('ID', 'items', 'store', 'price')
df
str(df)
## Select row 1 in column 2
df[1,2]
## Select Rows 1 to 2
df[1:2,]

# Create a new vector
quantity <- c(10, 35, 40, 5)

# Add `quantity` to the `df` data frame
df$quantity <- quantity
df

# Select price above 5
subset(df, subset = price > 5)

##trabajando con archivos

PATH <- 'https://raw.githubusercontent.com/guru99-edu/R-Programming/master/mtcars.csv'                
df <- read.csv(PATH, header =  TRUE, sep = ',')
length(df)

require(readxl)
library(readxl)
readxl_example()
file_xls <- readxl_example('clippy.xls')
df <- read_xls(file_xls)

##list files in the workign directory
list.files()

#list files in a specific folder
list.files (path = "C:/Folder/Subfolder1/Subfolder2")

#list files in a browsed folder
list.files(path = choose.dir())

#list of subfolders and files within the subfolders
list.files(recursive = TRUE)

#get the full name (path and file name) of each file
list.files(full.name = TRUE)

#list all files that contain the word "Product"
list.files(pattern = "Product")

#list files that end with the word "csv"
list.files (pattern = "csv$")

#list files that start with the word "Product" followed by anything and ending with the word "xlsx":
list.files(pattern = "^Product(.*)xlsx$")

