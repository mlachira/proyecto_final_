
#Alimentos de origen animal
getwd()
alimento_origen_animal <-read.csv("Alimentos_de_origen_animal.csv")
alimento_origen_animal <-read.table("Alimentos_de_origen_animal.csv", header=TRUE, sep=',')
alimento_origen_animal
#Para ver la lista de alimentos de origen animal
alimento_origen_animal$Alimentos

#Cereales
cereales <-read.csv("Cereales.csv")
cereales <-read.table("Cereales.csv", header=TRUE, sep=',')
cereales
#Para ver la lista de cereales
cereales$Alimentos

#Fruta
frutas<- read.csv("Fruta.csv")
frutas<-read.table("Fruta.csv",header=TRUE, sep=',' )
frutas
#Para ver la lista de frutas 
frutas$Alimentos

#Verduras
verduras<- read.csv("Verduras.csv")
verduras<-read.table("Verduras.csv",header=TRUE, sep=',' )
verduras
#Para ver la lista de verduras
verduras$Alimentos

#Leguminosas
leguminosas<- read.csv("Leguminosas.csv")
leguminosas<- read.table("Leguminosas.csv",header=TRUE, sep=',')
leguminosas
#Para ver la lista de leguminosas
leguminosas$Alimentos

#Grasas con proteínas
grasas_con_proteínas<- read.csv("Grasas con proteína.csv")
grasas_con_proteínas<- read.table("Grasas con proteínas.csv", header = TRUE, sep=',')
grasas_con_proteínas
#Para ver la lista de grasas con proteínas
grasas_con_proteínas$Alimentos

#Grasas
grasas<- read.csv("Grasas.csv")
grasas<- read.table("Grasas.csv", header= TRUE, sep = ',')
grasas
#Para ver la lista de grasas
grasas$Alimentos

#Azúcar
azúcar<- read.csv("Azúcar.csv")
azúcar<- read.table("Azúcar.csv", header = TRUE, sep = ',')
azúcar
#Para ver la lista de azúcar
azúcar$Alimentos
