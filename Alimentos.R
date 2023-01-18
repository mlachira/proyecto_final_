#Se hicieron 8 diferentes listas en las que contiene diferentes alimentos (de origen animal, cereales, frutas, verduras, leguminosas, grasas con proteinas, grasas y azucar)
#En las tablas se anotaron el numero de kcal, proteinas, carbohidratos y grasas contenidas en 100 gramos de dicho alimento

#1. Alimentos de origen animal
#Se cargo la tabla de alimentos de origen animal, para esto se uso la funcion "read.table", que sirve para leer bases de datos hacia R, entre parentesis se coloco entre comillas en nombre del archivo ("Alimentos_de_origen_animal.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila, sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
alimento_origen_animal <-read.table("Alimentos_de_origen_animal.csv", header=TRUE, sep=',', row.names = 1)
alimento_origen_animal

#2. Cereales
#Se cargo la tabla de cereales, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Cereales.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila, sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
cereales <-read.table("Cereales.csv", header=TRUE, sep=',', row.names=1)
cereales

#3. Fruta
#Se cargo la tabla de fruta, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Fruta.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila, sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
frutas<-read.table("Fruta.csv",header=TRUE, sep=',', row.names = 1 )
frutas

#4. Verduras
#Se cargo la tabla de verduras, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Verduras.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila,  sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
verduras<-read.table("Verduras.csv",header=TRUE, sep=',', row.names = 1 )
verduras

#5. Leguminosas
#Se cargo la tabla de leguminosas, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Leguminosas.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila,  sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
leguminosas<- read.table("Leguminosas.csv",header=TRUE, sep=',', row.names = 1)
leguminosas

#6. Grasas con proteinas
#Se cargo la tabla de proteinas, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Grasas con proteina.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila,  sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
grasas_con_proteinas<- read.table("Grasas con proteina.csv", header = TRUE, sep=',', row.names = 1)
grasas_con_proteinas

#7. Grasas
#Se cargo la tabla de alimentos de grasas, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Grasas.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila,  sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
grasas<- read.table("Grasas.csv", header= TRUE, sep = ',', row.names = 1)
grasas

#8. Azucar
#Se cargo la tabla de alimentos de azucar, para esto se uso la funcion "read.table", entre parentesis se coloco entre comillas en nombre del archivo ("Azúcar.csv"), header=TRUE ya que de esta manera indicamos que el nombre de las columnas sea la primera fila, sep="," porque es un archivo con extension .csv (que esta separado por comas) y por ultimo row.names= 1 indica que los nombres de las filas es la primera columna
azucar<- read.table("Azucar.csv", header = TRUE, sep = ',', row.names = 1)
azucar


#####  #####   #####   #####   #####   #####   #####

#FORMA 1
#podriamos hacer un data frame, pero creo que solo admite vectores
matriz_oa <- data.frame(
  "kcal" = (kcal_totales_oa3), 
  "Prote?nas totales" = (proteina_totales_oa3), 
  "proteinas totales" = (proteina_totales_oa3), 
  "Carbohidratos" = (carbohidrato_totales_oa3),
  "Grasas" = (grasas_totales_oa3)
)
matriz_oa


#FORMA 2
#install.packages("expss")
library(expss)

mtcars
fre(kcal_totales_oa3)


alimentos_oa <- apply_labels(kcal_totales_oa3,
                             mpg = "Miles/(US) gallon",
                             cyl = "Number of cylinders",
                             disp = "Displacement (cu.in.)",
                             hp = "Gross horsepower")

#p?gina super util para tablas: https://rfortherestofus.com/2019/11/how-to-make-beautiful-tables-in-r/


#####  #####   #####   #####   #####   #####   #####


