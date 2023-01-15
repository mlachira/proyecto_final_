#Para calcular las kcal, proteinas, carbohidratos y grasas que se consumen diario se le pide que llene lo que se le pide. 
#Se recomienda imprimir la base de datos de origen animal para saber cuales alimentos se encuentran en esta y como se deben de escribir.

######ALIMENTO ORIGEN ANIMAL######
#Para imprimir la tabla
alimento_origen_animal

dieta_origen_animal<- function(){
  cantidad_de_oa<- readline(prompt = "Ingresa el numero de alimentos de origen animal: ")
  cantidad_oa<- as.numeric(cantidad_de_oa)
  for(alimento in 1){
  if(cantidad_oa==1){
    #Saca las kcal
    alimento_dieta_oa1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "kcal"]
    n_kcal_alimento_dieta_oa1<-as.numeric(kcal_alimento_dieta_oa1)
    porcion_alimento1<- readline(prompt = "Ingresa el peso en gr: ")
    n_porcion_alimento1<-as.numeric(porcion_alimento1)
    kcal_totales_oa1<- (n_kcal_alimento_dieta_oa1*n_porcion_alimento1)/100
    kcal_totales_oa1
    #Saca las proteinas 
    proteina_alimento_dieta_oa1<-alimento_origen_animal[alimento_dieta_oa1, "ProteÍnas"]
    n_proteina_alimento_dieta_oa1<- as.numeric(proteina_alimento_dieta_oa1)
    n_proteina_totales_oa1<- (n_proteina_alimento_dieta_oa1*n_porcion_alimento1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa1<-as.numeric(carbohidratos_alimento_dieta_oa1)
    n_carbohidratos_totales_oa1<- (n_carbohidratos_alimento_dieta_oa1*n_porcion_alimento1)/100
    #Saca las grasas
    grasas_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "Grasas"]
    n_grasas_alimento_dieta_oa1<- as.numeric(grasas_alimento_dieta_oa1)
    n_grasas_totales_oa1<- (n_grasas_alimento_dieta_oa1*n_porcion_alimento1)/100
    alimento<-c(kcal_totales_oa1, n_proteina_totales_oa1, n_carbohidratos_totales_oa1, n_grasas_totales_oa1 )
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(alimento)<-nombres
    return(print(alimento))
  }else if (cantidad_oa==2){
    #Saca las kcal
    alimento_dieta_oa2.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "kcal"]
    n_kcal_alimento_dieta_oa2.1<-as.numeric(kcal_alimento_dieta_oa2.1)
    porcion_alimento2.1<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 1: ")
    n_porcion_alimento2.1<-as.numeric(porcion_alimento2.1)
    kcal_oa2.1<- (n_kcal_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100
    kcal_oa2.1
    alimento_dieta_oa2.2<-readline(prompt = "Ingresa alimento de origen animal 2: ")
    kcal_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "kcal"]
    n_kcal_alimento_dieta_oa2.2<-as.numeric(kcal_alimento_dieta_oa2.2)
    porcion_alimento2.2<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 2: ")
    n_porcion_alimento2.2<-as.numeric(porcion_alimento2.2)
    kcal_oa2.2<- (n_kcal_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100
    kcal_oa2.2
    kcal_totales_oa2<- kcal_oa2.1+kcal_oa2.2
    kcal_totales_oa2
    #Saca la proteina
    proteina_alimento_dieta_oa2.1<-alimento_origen_animal[alimento_dieta_oa2.1, "Proteínas"]
    n_proteina_alimento_dieta_oa2.1<- as.numeric(proteina_alimento_dieta_oa2.1)
    n_proteina_totales_oa2.1<- (n_proteina_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100
    proteina_alimento_dieta_oa2.2<-alimento_origen_animal[alimento_dieta_oa2.2, "Proteínas"]
    n_proteina_alimento_dieta_oa2.2<- as.numeric(proteina_alimento_dieta_oa2.2)
    n_proteina_totales_oa2.2<- (n_proteina_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100
    proteina_totales_oa2<- n_proteina_totales_oa2.1 + n_proteina_totales_oa2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa2.1<-as.numeric(carbohidratos_alimento_dieta_oa2.1)
    n_carbohidratos_totales_oa2.1<- (n_carbohidratos_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100
    carbohidratos_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa2.2<-as.numeric(carbohidratos_alimento_dieta_oa2.2)
    n_carbohidratos_totales_oa2.2<- (n_carbohidratos_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100
    carbohidrato_totales_oa2<- n_carbohidratos_totales_oa2.1 + n_carbohidratos_totales_oa2.2
    #Saca las grasas
    grasas_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "Grasas"]
    n_grasas_alimento_dieta_oa2.1<- as.numeric(grasas_alimento_dieta_oa2.1)
    n_grasas_totales_oa2.1<- (n_grasas_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100
    grasas_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "Grasas"]
    n_grasas_alimento_dieta_oa2.2<- as.numeric(grasas_alimento_dieta_oa2.2)
    n_grasas_totales_oa2.2<- (n_grasas_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100
    grasas_totales_oa2<- n_grasas_totales_oa2.1 + n_grasas_totales_oa2.2
    alimento<- c(kcal_totales_oa2, proteina_totales_oa2, carbohidrato_totales_oa2, grasas_totales_oa2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(alimento)<-nombres
    return(print(alimento))
  } else if (cantidad_oa==3){
    #Saca las kcal
    alimento_dieta_oa3.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "kcal"]
    n_kcal_alimento_dieta_oa3.1<-as.numeric(kcal_alimento_dieta_oa3.1)
    class(n_kcal_alimento_dieta_oa3.1)
    porcion_alimento3.1<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 1: ")
    n_porcion_alimento3.1<-as.numeric(porcion_alimento3.1)
    class(n_porcion_alimento3.1)
    kcal_oa3.1<- (n_kcal_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100
    kcal_oa3.1
    alimento_dieta_oa3.2<-readline(prompt = "Ingresa alimento de origen animal 2: ")
    kcal_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "kcal"]
    n_kcal_alimento_dieta_oa3.2<-as.numeric(kcal_alimento_dieta_oa3.2)
    class(n_kcal_alimento_dieta_oa3.2)
    porcion_alimento3.2<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 2: ")
    n_porcion_alimento3.2<-as.numeric(porcion_alimento3.2)
    class(n_porcion_alimento3.2)
    kcal_oa3.2<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100
    kcal_oa3.2
    alimento_dieta_oa3.3<-readline(prompt = "Ingresa alimento de origen animal 3: ")
    kcal_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "kcal"]
    n_kcal_alimento_dieta_oa3.3<-as.numeric(kcal_alimento_dieta_oa3.3)
    class(n_kcal_alimento_dieta_oa3.3)
    porcion_alimento3.3<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 3: ")
    n_porcion_alimento3.3<-as.numeric(porcion_alimento3.3)
    class(n_porcion_alimento3.3)
    kcal_oa3.3<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.3)/100
    kcal_oa3.2
    kcal_totales_oa3<- kcal_oa3.1+kcal_oa3.2+kcal_oa3.3
    kcal_totales_oa3
    #Saca las proteinas
    proteina_alimento_dieta_oa3.1<-alimento_origen_animal[alimento_dieta_oa3.1, "Proteínas"]
    n_proteina_alimento_dieta_oa3.1<- as.numeric(proteina_alimento_dieta_oa3.1)
    n_proteina_totales_oa3.1<- (n_proteina_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100
    proteina_alimento_dieta_oa3.2<-alimento_origen_animal[alimento_dieta_oa3.2, "Proteínas"]
    n_proteina_alimento_dieta_oa3.2<- as.numeric(proteina_alimento_dieta_oa3.2)
    n_proteina_totales_oa3.2<- (n_proteina_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100
    proteina_alimento_dieta_oa3.3<-alimento_origen_animal[alimento_dieta_oa3.3, "Proteínas"]
    n_proteina_alimento_dieta_oa3.3<- as.numeric(proteina_alimento_dieta_oa3.3)
    n_proteina_totales_oa3.3<- (n_proteina_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100
    proteina_totales_oa3<- n_proteina_totales_oa3.1 + n_proteina_totales_oa3.2 + n_proteina_totales_oa3.3
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa3.1<-as.numeric(carbohidratos_alimento_dieta_oa3.1)
    n_carbohidratos_totales_oa3.1<- (n_carbohidratos_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100
    carbohidratos_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa3.2<-as.numeric(carbohidratos_alimento_dieta_oa3.2)
    n_carbohidratos_totales_oa3.2<- (n_carbohidratos_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100
    carbohidratos_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_oa3.3<-as.numeric(carbohidratos_alimento_dieta_oa3.3)
    n_carbohidratos_totales_oa3.3<- (n_carbohidratos_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100
    carbohidrato_totales_oa3<- n_carbohidratos_totales_oa3.1 + n_carbohidratos_totales_oa3.2 + n_carbohidratos_totales_oa3.3
    #Saca las grasas
    grasas_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "Grasas"]
    n_grasas_alimento_dieta_oa3.1<- as.numeric(grasas_alimento_dieta_oa3.1)
    n_grasas_totales_oa3.1<- (n_grasas_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100
    grasas_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "Grasas"]
    n_grasas_alimento_dieta_oa3.2<- as.numeric(grasas_alimento_dieta_oa3.2)
    n_grasas_totales_oa3.2<- (n_grasas_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100
    grasas_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "Grasas"]
    n_grasas_alimento_dieta_oa3.3<- as.numeric(grasas_alimento_dieta_oa3.3)
    n_grasas_totales_oa3.3<- (n_grasas_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100
    grasas_totales_oa3<- n_grasas_totales_oa3.1 + n_grasas_totales_oa3.2 + n_grasas_totales_oa3.3
    alimento<- c(kcal_totales_oa3, proteina_totales_oa3, carbohidrato_totales_oa3, grasas_totales_oa3)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(alimento)<-nombres
    return(print(alimento))
    }
  }
}
dieta_origen_animal()

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
install.packages("expss")
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



######### FRUTAS #######
frutas

dieta_fruta<- function(){
  cantidad_de_fruta<- readline(prompt = "Ingresa el numero de frutas: ")
  cantidad_fruta<- as.numeric(cantidad_de_fruta)
  for(fruta in 1){
  if(cantidad_fruta==1){
    #Saca las kcal
    alimento_dieta_fruta1<-readline(prompt = "Ingresa la fruta 1: ")
    kcal_alimento_dieta_fruta1<- frutas[alimento_dieta_fruta1, "kcal"]
    n_kcal_alimento_dieta_fruta1<-as.numeric(kcal_alimento_dieta_fruta1)
    porcion_fruta1<- readline(prompt = "Ingresa el peso en gr: ")
    n_porcion_fruta1<-as.numeric(porcion_fruta1)
    kcal_totales_fruta1<- (n_kcal_alimento_dieta_fruta1*n_porcion_fruta1)/100
    kcal_totales_fruta1
    #Saca las proteinas 
    proteina_alimento_dieta_fruta1<-frutas[alimento_dieta_fruta1, "Proteínas"]
    n_proteina_alimento_dieta_fruta1<- as.numeric(proteina_alimento_dieta_fruta1)
    n_proteina_totales_fruta1<- (n_proteina_alimento_dieta_fruta1*n_porcion_fruta1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_fruta1<- frutas[alimento_dieta_fruta1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta1<-as.numeric(carbohidratos_alimento_dieta_fruta1)
    n_carbohidratos_totales_fruta1<- (n_carbohidratos_alimento_dieta_fruta1*n_porcion_fruta1)/100
    #Saca las grasas
    grasas_alimento_dieta_fruta1<- frutas[alimento_dieta_fruta1, "Grasas"]
    n_grasas_alimento_dieta_fruta1<- as.numeric(grasas_alimento_dieta_fruta1)
    n_grasas_totales_fruta1<- (n_grasas_alimento_dieta_fruta1*n_porcion_fruta1)/100
    fruta<- c(kcal_totales_fruta1, n_proteina_totales_fruta1, n_carbohidratos_totales_fruta1, n_grasas_totales_fruta1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(fruta)<- nombres
    return(print(fruta))
    }else if (cantidad_fruta==2){
    #Saca las kcal
    alimento_dieta_fruta2.1<-readline(prompt = "Ingresa fruta 1: ")
    kcal_alimento_dieta_fruta2.1<- frutas[alimento_dieta_fruta2.1, "kcal"]
    n_kcal_alimento_dieta_fruta2.1<-as.numeric(kcal_alimento_dieta_fruta2.1)
    porcion_fruta2.1<- readline(prompt = "Ingresa el peso en gr de la fruta 1: ")
    n_porcion_fruta2.1<-as.numeric(porcion_fruta2.1)
    kcal_fruta2.1<- (n_kcal_alimento_dieta_fruta2.1*n_porcion_fruta2.1)/100
    kcal_fruta2.1
    alimento_dieta_fruta2.2<-readline(prompt = "Ingresa fruta 2: ")
    kcal_alimento_dieta_fruta2.2<- frutas[alimento_dieta_fruta2.2, "kcal"]
    n_kcal_alimento_dieta_fruta2.2<-as.numeric(kcal_alimento_dieta_fruta2.2)
    porcion_fruta2.2<- readline(prompt = "Ingresa el peso en gr de la fruta 2: ")
    n_porcion_fruta2.2<-as.numeric(porcion_fruta2.2)
    kcal_fruta2.2<- (n_kcal_alimento_dieta_fruta2.2*n_porcion_fruta2.2)/100
    kcal_fruta2.2
    kcal_totales_fruta2<- kcal_fruta2.1+kcal_fruta2.2
    kcal_totales_fruta2
    #Saca la proteina
    proteina_alimento_dieta_fruta2.1<-frutas[alimento_dieta_fruta2.1, "Proteínas"]
    n_proteina_alimento_dieta_fruta2.1<- as.numeric(proteina_alimento_dieta_fruta2.1)
    n_proteina_totales_fruta2.1<- (n_proteina_alimento_dieta_fruta2.1*n_porcion_fruta2.1)/100
    proteina_alimento_dieta_fruta2.2<-frutas[alimento_dieta_fruta2.2, "Proteínas"]
    n_proteina_alimento_dieta_fruta2.2<- as.numeric(proteina_alimento_dieta_fruta2.2)
    n_proteina_totales_fruta2.2<- (n_proteina_alimento_dieta_fruta2.2*n_porcion_fruta2.2)/100
    proteina_totales_fruta2<- n_proteina_totales_fruta2.1 + n_proteina_totales_fruta2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_fruta2.1<- frutas[alimento_dieta_fruta2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta2.1<-as.numeric(carbohidratos_alimento_dieta_fruta2.1)
    n_carbohidratos_totales_fruta2.1<- (n_carbohidratos_alimento_dieta_fruta2.1*n_porcion_fruta2.1)/100
    carbohidratos_alimento_dieta_fruta2.2<- frutas[alimento_dieta_fruta2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta2.2<-as.numeric(carbohidratos_alimento_dieta_fruta2.2)
    n_carbohidratos_totales_fruta2.2<- (n_carbohidratos_alimento_dieta_fruta2.2*n_porcion_fruta2.2)/100
    carbohidrato_totales_fruta2<- n_carbohidratos_totales_fruta2.1 + n_carbohidratos_totales_fruta2.2
    #Saca las grasas
    grasas_alimento_dieta_fruta2.1<- frutas[alimento_dieta_fruta2.1, "Grasas"]
    n_grasas_alimento_dieta_fruta2.1<- as.numeric(grasas_alimento_dieta_fruta2.1)
    n_grasas_totales_fruta2.1<- (n_grasas_alimento_dieta_fruta2.1*n_porcion_fruta2.1)/100
    grasas_alimento_dieta_fruta2.2<- frutas[alimento_dieta_fruta2.2, "Grasas"]
    n_grasas_alimento_dieta_fruta2.2<- as.numeric(grasas_alimento_dieta_fruta2.2)
    n_grasas_totales_fruta2.2<- (n_grasas_alimento_dieta_fruta2.2*n_porcion_fruta2.2)/100
    grasas_totales_fruta2<- n_grasas_totales_fruta2.1 + n_grasas_totales_fruta2.2
    fruta<- c(kcal_totales_fruta2, proteina_totales_fruta2, carbohidrato_totales_fruta2, grasas_totales_fruta2)
    nombres<-c("kcal","proteina","carbohidratos","grasas")
    names(fruta)<- nombres
    return(print(fruta))
  } else if (cantidad_fruta==3){
    #Saca las kcal
    alimento_dieta_fruta3.1<-readline(prompt = "Ingresa la fruta 1: ")
    kcal_alimento_dieta_fruta3.1<- frutas[alimento_dieta_fruta3.1, "kcal"]
    n_kcal_alimento_dieta_fruta3.1<-as.numeric(kcal_alimento_dieta_fruta3.1)
    porcion_fruta3.1<- readline(prompt = "Ingresa el peso en gr de la fruta 1: ")
    n_porcion_fruta3.1<-as.numeric(porcion_fruta3.1)
    kcal_fruta3.1<- (n_kcal_alimento_dieta_fruta3.1*n_porcion_fruta3.1)/100
    kcal_fruta3.1
    alimento_dieta_fruta3.2<-readline(prompt = "Ingresa la fruta 2: ")
    kcal_alimento_dieta_fruta3.2<- frutas[alimento_dieta_fruta3.2, "kcal"]
    n_kcal_alimento_dieta_fruta3.2<-as.numeric(kcal_alimento_dieta_fruta3.2)
    porcion_fruta3.2<- readline(prompt = "Ingresa el peso en gr de la fruta 2: ")
    n_porcion_fruta3.2<-as.numeric(porcion_fruta3.2)
    kcal_fruta3.2<- (n_kcal_alimento_dieta_fruta3.2*n_porcion_fruta3.2)/100
    kcal_fruta3.2
    alimento_dieta_fruta3.3<-readline(prompt = "Ingresa la fruta 3: ")
    kcal_alimento_dieta_fruta3.3<- frutas[alimento_dieta_fruta3.3, "kcal"]
    n_kcal_alimento_dieta_fruta3.3<-as.numeric(kcal_alimento_dieta_fruta3.3)
    porcion_fruta3.3<- readline(prompt = "Ingresa el peso en gr de la fruta 3: ")
    n_porcion_fruta3.3<-as.numeric(porcion_fruta3.3)
    kcal_fruta3.3<- (n_kcal_alimento_dieta_fruta3.2*n_porcion_fruta3.3)/100
    kcal_fruta3.3
    kcal_totales_fruta3<- kcal_fruta3.1+kcal_fruta3.2+kcal_fruta3.3
    kcal_totales_fruta3
    #Saca las proteinas
    proteina_alimento_dieta_fruta3.1<-frutas[alimento_dieta_fruta3.1, "Proteínas"]
    n_proteina_alimento_dieta_fruta3.1<- as.numeric(proteina_alimento_dieta_fruta3.1)
    n_proteina_totales_fruta3.1<- (n_proteina_alimento_dieta_fruta3.1*n_porcion_fruta3.1)/100
    proteina_alimento_dieta_fruta3.2<-frutas[alimento_dieta_fruta3.2, "Proteínas"]
    n_proteina_alimento_dieta_fruta3.2<- as.numeric(proteina_alimento_dieta_fruta3.2)
    n_proteina_totales_fruta3.2<- (n_proteina_alimento_dieta_fruta3.2*n_porcion_fruta3.2)/100
    proteina_alimento_dieta_fruta3.3<-frutas[alimento_dieta_fruta3.3, "Proteínas"]
    n_proteina_alimento_dieta_fruta3.3<- as.numeric(proteina_alimento_dieta_fruta3.3)
    n_proteina_totales_fruta3.3<- (n_proteina_alimento_dieta_fruta3.3*n_porcion_fruta3.3)/100
    proteina_totales_fruta3<- n_proteina_totales_fruta3.1 + n_proteina_totales_fruta3.2 + n_proteina_totales_fruta3.3
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_fruta3.1<- frutas[alimento_dieta_fruta3.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta3.1<-as.numeric(carbohidratos_alimento_dieta_fruta3.1)
    n_carbohidratos_totales_fruta3.1<- (n_carbohidratos_alimento_dieta_fruta3.1*n_porcion_fruta3.1)/100
    carbohidratos_alimento_dieta_fruta3.2<- frutas[alimento_dieta_fruta3.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta3.2<-as.numeric(carbohidratos_alimento_dieta_fruta3.2)
    n_carbohidratos_totales_fruta3.2<- (n_carbohidratos_alimento_dieta_fruta3.2*n_porcion_fruta3.2)/100
    carbohidratos_alimento_dieta_fruta3.3<- frutas[alimento_dieta_fruta3.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta3.3<-as.numeric(carbohidratos_alimento_dieta_fruta3.3)
    n_carbohidratos_totales_fruta3.3<- (n_carbohidratos_alimento_dieta_fruta3.3*n_porcion_fruta3.3)/100
    carbohidrato_totales_fruta3<- n_carbohidratos_totales_fruta3.1 + n_carbohidratos_totales_fruta3.2 + n_carbohidratos_totales_fruta3.3
    #Saca las grasas
    grasas_alimento_dieta_fruta3.1<- frutas[alimento_dieta_fruta3.1, "Grasas"]
    n_grasas_alimento_dieta_fruta3.1<- as.numeric(grasas_alimento_dieta_fruta3.1)
    n_grasas_totales_fruta3.1<- (n_grasas_alimento_dieta_fruta3.1*n_porcion_fruta3.1)/100
    grasas_alimento_dieta_fruta3.2<- frutas[alimento_dieta_fruta3.2, "Grasas"]
    n_grasas_alimento_dieta_fruta3.2<- as.numeric(grasas_alimento_dieta_fruta3.2)
    n_grasas_totales_fruta3.2<- (n_grasas_alimento_dieta_fruta3.2*n_porcion_fruta3.2)/100
    grasas_alimento_dieta_fruta3.3<- frutas[alimento_dieta_fruta3.3, "Grasas"]
    n_grasas_alimento_dieta_fruta3.3<- as.numeric(grasas_alimento_dieta_fruta3.3)
    n_grasas_totales_fruta3.3<- (n_grasas_alimento_dieta_fruta3.3*n_porcion_fruta3.3)/100
    grasas_totales_fruta3<- n_grasas_totales_fruta3.1 + n_grasas_totales_fruta3.2 + n_grasas_totales_fruta3.3
    fruta<- c(kcal_totales_fruta3, proteina_totales_fruta3, carbohidrato_totales_fruta3, grasas_totales_fruta3)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(fruta)<- nombres
    return(print(fruta))
  } else if (cantidad_fruta==4){
    alimento_dieta_fruta4.1<-readline(prompt = "Ingresa la fruta 1: ")
    kcal_alimento_dieta_fruta4.1<- frutas[alimento_dieta_fruta4.1, "kcal"]
    n_kcal_alimento_dieta_fruta4.1<-as.numeric(kcal_alimento_dieta_fruta4.1)
    porcion_fruta4.1<- readline(prompt = "Ingresa el peso en gr de la fruta 1: ")
    n_porcion_fruta4.1<-as.numeric(porcion_fruta4.1)
    kcal_fruta4.1<- (n_kcal_alimento_dieta_fruta4.1*n_porcion_fruta4.1)/100
    kcal_fruta4.1
    alimento_dieta_fruta4.2<-readline(prompt = "Ingresa la fruta 2: ")
    kcal_alimento_dieta_fruta4.2<- frutas[alimento_dieta_fruta4.2, "kcal"]
    n_kcal_alimento_dieta_fruta4.2<-as.numeric(kcal_alimento_dieta_fruta4.2)
    porcion_fruta4.2<- readline(prompt = "Ingresa el peso en gr de la fruta 2: ")
    n_porcion_fruta4.2<-as.numeric(porcion_fruta4.2)
    kcal_fruta4.2<- (n_kcal_alimento_dieta_fruta4.2*n_porcion_fruta4.2)/100
    kcal_fruta4.2
    alimento_dieta_fruta4.3<-readline(prompt = "Ingresa la fruta 3: ")
    kcal_alimento_dieta_fruta4.3<- frutas[alimento_dieta_fruta4.3, "kcal"]
    n_kcal_alimento_dieta_fruta4.3<-as.numeric(kcal_alimento_dieta_fruta4.3)
    porcion_fruta4.3<- readline(prompt = "Ingresa el peso en gr de la fruta 3: ")
    n_porcion_fruta4.3<-as.numeric(porcion_fruta4.3)
    kcal_fruta4.3<- (n_kcal_alimento_dieta_fruta4.3*n_porcion_fruta4.3)/100
    kcal_fruta4.3
    alimento_dieta_fruta4.4<-readline(prompt = "Ingresa la fruta 4: ")
    kcal_alimento_dieta_fruta4.4<- frutas[alimento_dieta_fruta4.4, "kcal"]
    n_kcal_alimento_dieta_fruta4.4<-as.numeric(kcal_alimento_dieta_fruta4.4)
    porcion_fruta4.4<- readline(prompt = "Ingresa el peso en gr de la fruta 4: ")
    n_porcion_fruta4.4<-as.numeric(porcion_fruta4.4)
    kcal_fruta4.4<- (n_kcal_alimento_dieta_fruta4.4*n_porcion_fruta4.4)/100
    kcal_fruta4.4
    kcal_totales_fruta4<- kcal_fruta4.1+kcal_fruta4.2+kcal_fruta4.3+ kcal_fruta4.4
    kcal_totales_fruta4
    #Saca las proteinas
    proteina_alimento_dieta_fruta4.1<-frutas[alimento_dieta_fruta4.1, "Proteínas"]
    n_proteina_alimento_dieta_fruta4.1<- as.numeric(proteina_alimento_dieta_fruta4.1)
    n_proteina_totales_fruta4.1<- (n_proteina_alimento_dieta_fruta4.1*n_porcion_fruta4.1)/100
    proteina_alimento_dieta_fruta4.2<-frutas[alimento_dieta_fruta4.2, "Proteínas"]
    n_proteina_alimento_dieta_fruta4.2<- as.numeric(proteina_alimento_dieta_fruta4.2)
    n_proteina_totales_fruta4.2<- (n_proteina_alimento_dieta_fruta4.2*n_porcion_fruta4.2)/100
    proteina_alimento_dieta_fruta4.3<-frutas[alimento_dieta_fruta4.3, "Proteínas"]
    n_proteina_alimento_dieta_fruta4.3<- as.numeric(proteina_alimento_dieta_fruta4.3)
    n_proteina_totales_fruta4.3<- (n_proteina_alimento_dieta_fruta4.3*n_porcion_fruta4.3)/100
    proteina_alimento_dieta_fruta4.4<-frutas[alimento_dieta_fruta4.4, "Proteínas"]
    n_proteina_alimento_dieta_fruta4.4<- as.numeric(proteina_alimento_dieta_fruta4.4)
    n_proteina_totales_fruta4.4<- (n_proteina_alimento_dieta_fruta4.4*n_porcion_fruta4.4)/100
    proteina_totales_fruta4<- n_proteina_totales_fruta4.1 + n_proteina_totales_fruta4.2 + n_proteina_totales_fruta4.3 + n_proteina_totales_fruta4.4
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_fruta4.1<- frutas[alimento_dieta_fruta4.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta4.1<-as.numeric(carbohidratos_alimento_dieta_fruta4.1)
    n_carbohidratos_totales_fruta4.1<- (n_carbohidratos_alimento_dieta_fruta4.1*n_porcion_fruta4.1)/100
    carbohidratos_alimento_dieta_fruta4.2<- frutas[alimento_dieta_fruta4.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta4.2<-as.numeric(carbohidratos_alimento_dieta_fruta4.2)
    n_carbohidratos_totales_fruta4.2<- (n_carbohidratos_alimento_dieta_fruta4.2*n_porcion_fruta4.2)/100
    carbohidratos_alimento_dieta_fruta4.3<- frutas[alimento_dieta_fruta4.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta4.3<-as.numeric(carbohidratos_alimento_dieta_fruta4.3)
    n_carbohidratos_totales_fruta4.3<- (n_carbohidratos_alimento_dieta_fruta4.3*n_porcion_fruta4.3)/100
    carbohidratos_alimento_dieta_fruta4.4<- frutas[alimento_dieta_fruta4.4, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta4.4<-as.numeric(carbohidratos_alimento_dieta_fruta4.4)
    n_carbohidratos_totales_fruta4.4<- (n_carbohidratos_alimento_dieta_fruta4.4*n_porcion_fruta4.4)/100
    carbohidrato_totales_fruta4<- n_carbohidratos_totales_fruta4.1 + n_carbohidratos_totales_fruta4.2 + n_carbohidratos_totales_fruta4.3 + n_carbohidratos_totales_fruta4.4
    #Saca las grasas
    grasas_alimento_dieta_fruta4.1<- frutas[alimento_dieta_fruta4.1, "Grasas"]
    n_grasas_alimento_dieta_fruta4.1<- as.numeric(grasas_alimento_dieta_fruta4.1)
    n_grasas_totales_fruta4.1<- (n_grasas_alimento_dieta_fruta4.1*n_porcion_fruta4.1)/100
    grasas_alimento_dieta_fruta4.2<- frutas[alimento_dieta_fruta4.2, "Grasas"]
    n_grasas_alimento_dieta_fruta4.2<- as.numeric(grasas_alimento_dieta_fruta4.2)
    n_grasas_totales_fruta4.2<- (n_grasas_alimento_dieta_fruta4.2*n_porcion_fruta4.2)/100
    grasas_alimento_dieta_fruta4.3<- frutas[alimento_dieta_fruta4.3, "Grasas"]
    n_grasas_alimento_dieta_fruta4.3<- as.numeric(grasas_alimento_dieta_fruta4.3)
    n_grasas_totales_fruta4.3<- (n_grasas_alimento_dieta_fruta4.3*n_porcion_fruta4.3)/100
    grasas_alimento_dieta_fruta4.4<- frutas[alimento_dieta_fruta4.4, "Grasas"]
    n_grasas_alimento_dieta_fruta4.4<- as.numeric(grasas_alimento_dieta_fruta4.4)
    n_grasas_totales_fruta4.4<- (n_grasas_alimento_dieta_fruta4.4*n_porcion_fruta4.4)/100
    grasas_totales_fruta4<- n_grasas_totales_fruta4.1 + n_grasas_totales_fruta4.2 + n_grasas_totales_fruta4.3 + n_grasas_totales_fruta4.4
    fruta<- c(kcal_totales_fruta4, proteina_totales_fruta4, carbohidrato_totales_fruta4, grasas_totales_fruta4)
    nombre<- c("kcal","proteina","carbohidratos","grasas")
    names(fruta)<- nombre
    return(print(fruta))
  } else if (cantidad_fruta==5){
    alimento_dieta_fruta5.1<-readline(prompt = "Ingresa la fruta 1: ")
    kcal_alimento_dieta_fruta5.1<- frutas[alimento_dieta_fruta5.1, "kcal"]
    n_kcal_alimento_dieta_fruta5.1<-as.numeric(kcal_alimento_dieta_fruta5.1)
    porcion_fruta5.1<- readline(prompt = "Ingresa el peso en gr de la fruta 1: ")
    n_porcion_fruta5.1<-as.numeric(porcion_fruta5.1)
    kcal_fruta5.1<- (n_kcal_alimento_dieta_fruta5.1*n_porcion_fruta5.1)/100
    kcal_fruta5.1
    alimento_dieta_fruta5.2<-readline(prompt = "Ingresa la fruta 2: ")
    kcal_alimento_dieta_fruta5.2<- frutas[alimento_dieta_fruta5.2, "kcal"]
    n_kcal_alimento_dieta_fruta5.2<-as.numeric(kcal_alimento_dieta_fruta5.2)
    porcion_fruta5.2<- readline(prompt = "Ingresa el peso en gr de la fruta 2: ")
    n_porcion_fruta5.2<-as.numeric(porcion_fruta5.2)
    kcal_fruta5.2<- (n_kcal_alimento_dieta_fruta5.2*n_porcion_fruta5.2)/100
    kcal_fruta5.2
    alimento_dieta_fruta5.3<-readline(prompt = "Ingresa la fruta 3: ")
    kcal_alimento_dieta_fruta5.3<- frutas[alimento_dieta_fruta5.3, "kcal"]
    n_kcal_alimento_dieta_fruta5.3<-as.numeric(kcal_alimento_dieta_fruta5.3)
    porcion_fruta5.3<- readline(prompt = "Ingresa el peso en gr de la fruta 3: ")
    n_porcion_fruta5.3<-as.numeric(porcion_fruta5.3)
    kcal_fruta5.3<- (n_kcal_alimento_dieta_fruta5.3*n_porcion_fruta5.3)/100
    kcal_fruta5.3
    alimento_dieta_fruta5.4<-readline(prompt = "Ingresa la fruta 4: ")
    kcal_alimento_dieta_fruta5.4<- frutas[alimento_dieta_fruta5.4, "kcal"]
    n_kcal_alimento_dieta_fruta5.4<-as.numeric(kcal_alimento_dieta_fruta5.4)
    porcion_fruta5.4<- readline(prompt = "Ingresa el peso en gr de la fruta 4: ")
    n_porcion_fruta5.4<-as.numeric(porcion_fruta5.4)
    kcal_fruta5.4<- (n_kcal_alimento_dieta_fruta5.4*n_porcion_fruta5.4)/100
    kcal_fruta5.4
    alimento_dieta_fruta5.5<-readline(prompt = "Ingresa la fruta 5: ")
    kcal_alimento_dieta_fruta5.5<- frutas[alimento_dieta_fruta5.5, "kcal"]
    n_kcal_alimento_dieta_fruta5.5<-as.numeric(kcal_alimento_dieta_fruta5.5)
    porcion_fruta5.5<- readline(prompt = "Ingresa el peso en gr de la fruta 5: ")
    n_porcion_fruta5.5<-as.numeric(porcion_fruta5.5)
    kcal_fruta5.5<- (n_kcal_alimento_dieta_fruta5.5*n_porcion_fruta5.5)/100
    kcal_fruta5.5
    kcal_totales_fruta5<- kcal_fruta5.1+kcal_fruta5.2+kcal_fruta5.3+ kcal_fruta5.4 + kcal_fruta5.5
    kcal_totales_fruta5
    #Saca las proteinas
    proteina_alimento_dieta_fruta5.1<-frutas[alimento_dieta_fruta5.1, "proteinas"]
    n_proteina_alimento_dieta_fruta5.1<- as.numeric(proteina_alimento_dieta_fruta5.1)
    n_proteina_totales_fruta5.1<- (n_proteina_alimento_dieta_fruta5.1*n_porcion_fruta5.1)/100
    proteina_alimento_dieta_fruta5.2<-frutas[alimento_dieta_fruta5.2, "proteinas"]
    n_proteina_alimento_dieta_fruta5.2<- as.numeric(proteina_alimento_dieta_fruta5.2)
    n_proteina_totales_fruta5.2<- (n_proteina_alimento_dieta_fruta5.2*n_porcion_fruta5.2)/100
    proteina_alimento_dieta_fruta5.3<-frutas[alimento_dieta_fruta5.3, "proteinas"]
    n_proteina_alimento_dieta_fruta5.3<- as.numeric(proteina_alimento_dieta_fruta5.3)
    n_proteina_totales_fruta5.3<- (n_proteina_alimento_dieta_fruta5.3*n_porcion_fruta5.3)/100
    proteina_alimento_dieta_fruta5.4<-frutas[alimento_dieta_fruta5.4, "proteinas"]
    n_proteina_alimento_dieta_fruta5.4<- as.numeric(proteina_alimento_dieta_fruta5.4)
    n_proteina_totales_fruta5.4<- (n_proteina_alimento_dieta_fruta5.4*n_porcion_fruta5.4)/100
    proteina_alimento_dieta_fruta5.5<-frutas[alimento_dieta_fruta5.5, "proteinas"]
    n_proteina_alimento_dieta_fruta5.5<- as.numeric(proteina_alimento_dieta_fruta5.5)
    n_proteina_totales_fruta5.5<- (n_proteina_alimento_dieta_fruta5.5*n_porcion_fruta5.5)/100
    proteina_totales_fruta5<- n_proteina_totales_fruta5.1 + n_proteina_totales_fruta5.2 + n_proteina_totales_fruta5.3 + n_proteina_totales_fruta5.4 + n_proteina_totales_fruta5.5
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_fruta5.1<- frutas[alimento_dieta_fruta5.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta5.1<-as.numeric(carbohidratos_alimento_dieta_fruta5.1)
    n_carbohidratos_totales_fruta5.1<- (n_carbohidratos_alimento_dieta_fruta5.1*n_porcion_fruta5.1)/100
    carbohidratos_alimento_dieta_fruta5.2<- frutas[alimento_dieta_fruta5.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta5.2<-as.numeric(carbohidratos_alimento_dieta_fruta5.2)
    n_carbohidratos_totales_fruta5.2<- (n_carbohidratos_alimento_dieta_fruta5.2*n_porcion_fruta5.2)/100
    carbohidratos_alimento_dieta_fruta5.3<- frutas[alimento_dieta_fruta5.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta5.3<-as.numeric(carbohidratos_alimento_dieta_fruta5.3)
    n_carbohidratos_totales_fruta5.3<- (n_carbohidratos_alimento_dieta_fruta5.3*n_porcion_fruta5.3)/100
    carbohidratos_alimento_dieta_fruta5.4<- frutas[alimento_dieta_fruta5.4, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta5.4<-as.numeric(carbohidratos_alimento_dieta_fruta5.4)
    n_carbohidratos_totales_fruta5.4<- (n_carbohidratos_alimento_dieta_fruta5.4*n_porcion_fruta5.4)/100
    carbohidratos_alimento_dieta_fruta5.5<- frutas[alimento_dieta_fruta5.5, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_fruta5.5<-as.numeric(carbohidratos_alimento_dieta_fruta5.5)
    n_carbohidratos_totales_fruta5.5<- (n_carbohidratos_alimento_dieta_fruta5.5*n_porcion_fruta5.5)/100
    carbohidrato_totales_fruta5<- n_carbohidratos_totales_fruta5.1 + n_carbohidratos_totales_fruta5.2 + n_carbohidratos_totales_fruta5.3 + n_carbohidratos_totales_fruta5.4 + n_carbohidratos_totales_fruta5.5
    #Saca las grasas
    grasas_alimento_dieta_fruta5.1<- frutas[alimento_dieta_fruta5.1, "Grasas"]
    n_grasas_alimento_dieta_fruta5.1<- as.numeric(grasas_alimento_dieta_fruta5.1)
    n_grasas_totales_fruta5.1<- (n_grasas_alimento_dieta_fruta5.1*n_porcion_fruta5.1)/100
    grasas_alimento_dieta_fruta5.2<- frutas[alimento_dieta_fruta5.2, "Grasas"]
    n_grasas_alimento_dieta_fruta5.2<- as.numeric(grasas_alimento_dieta_fruta5.2)
    n_grasas_totales_fruta5.2<- (n_grasas_alimento_dieta_fruta5.2*n_porcion_fruta5.2)/100
    grasas_alimento_dieta_fruta5.3<- frutas[alimento_dieta_fruta5.3, "Grasas"]
    n_grasas_alimento_dieta_fruta5.3<- as.numeric(grasas_alimento_dieta_fruta5.3)
    n_grasas_totales_fruta5.3<- (n_grasas_alimento_dieta_fruta5.3*n_porcion_fruta5.3)/100
    grasas_alimento_dieta_fruta5.4<- frutas[alimento_dieta_fruta5.4, "Grasas"]
    n_grasas_alimento_dieta_fruta5.4<- as.numeric(grasas_alimento_dieta_fruta5.4)
    n_grasas_totales_fruta5.4<- (n_grasas_alimento_dieta_fruta5.4*n_porcion_fruta5.4)/100
    grasas_alimento_dieta_fruta5.5<- frutas[alimento_dieta_fruta5.5, "Grasas"]
    n_grasas_alimento_dieta_fruta5.5<- as.numeric(grasas_alimento_dieta_fruta5.5)
    n_grasas_totales_fruta5.5<- (n_grasas_alimento_dieta_fruta5.5*n_porcion_fruta5.5)/100
    grasas_totales_fruta5<- n_grasas_totales_fruta5.1 + n_grasas_totales_fruta5.2 + n_grasas_totales_fruta5.3 + n_grasas_totales_fruta5.4 + n_grasas_totales_fruta5.5
    fruta<- c(kcal_totales_fruta5, proteina_totales_fruta5, carbohidrato_totales_fruta5, grasas_totales_fruta5)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(fruta)<- nombres
    return(print(fruta))
  }
  }
}
dieta_fruta()



######### VERDURAS #######
verduras

dieta_verduras <- function(){
  cantidad_de_verd <- readline(prompt = "Ingresa el numero de verduras: ")
  if(cantidad_de_verd == 1){
    #Saca las kcal
    alimento_dieta_verd1 <- readline(prompt = "Ingresa la verdura 1: ")
    kcal_alimento_dieta_verd1 <- verduras[alimento_dieta_verd1, "kcal"]
    n_kcal_alimento_dieta_verd1 <- as.numeric(kcal_alimento_dieta_verd1)
    porcion_verd1 <- readline(prompt = "Ingresa el peso en gr: ")
    n_porcion_verd1 <- as.numeric(porcion_verd1)
    kcal_totales_verd1 <- (n_kcal_alimento_dieta_verd1*n_porcion_verd1)/100
    kcal_totales_verd1
    #Saca las proteinas 
    proteina_alimento_dieta_verd1 <- verduras[alimento_dieta_verd1, "Proteinas"]
    n_proteina_alimento_dieta_verd1 <- as.numeric(proteina_alimento_dieta_verd1)
    n_proteina_totales_verd1 <- (n_proteina_alimento_dieta_verd1*n_porcion_verd1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd1 <- verduras[alimento_dieta_verd1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd1 <- as.numeric(carbohidratos_alimento_dieta_verd1)
    n_carbohidratos_totales_verd1 <- (n_carbohidratos_alimento_dieta_verd1*n_porcion_verd1)/100
    #Saca las grasas
    grasas_alimento_dieta_verd1 <- verduras[alimento_dieta_verd1, "Grasas"]
    n_grasas_alimento_dieta_verd1 <- as.numeric(grasas_alimento_dieta_verd1)
    n_grasas_totales_verd1 <- (n_grasas_alimento_dieta_verd1*n_porcion_verd1)/100
    return(print(paste("En verduras las kcal totales son ", kcal_totales_verd1, ",las proteinas totales en kcal son ", n_proteina_totales_verd1, ", los carbohidratos totales son ", n_carbohidratos_totales_verd1, " y las grasas totales son ", n_grasas_totales_verd1 )))
  }else if (cantidad_de_verd == 2){
    #Saca las kcal
    alimento_dieta_verd2.1 <- readline(prompt = "Ingresa la verdura 1: ")
    kcal_alimento_dieta_verd2.1 <- verduras[alimento_dieta_verd2.1, "kcal"]
    n_kcal_alimento_dieta_verd2.1 <- as.numeric(kcal_alimento_dieta_verd2.1)
    porcion_verd2.1 <- readline(prompt = "Ingresa el peso en gr de la verdura 1: ")
    n_porcion_verd2.1 <- as.numeric(porcion_verd2.1)
    kcal_verd2.1 <- (n_kcal_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    kcal_verd2.1
    alimento_dieta_verd2.2 <- readline(prompt = "Ingresa tu verdura 2: ")
    kcal_alimento_dieta_verd2.2 <- verduras[alimento_dieta_verd2.2, "kcal"]
    n_kcal_alimento_dieta_verd2.2 <- as.numeric(kcal_alimento_dieta_verd2.2)
    porcion_verd2.2<- readline(prompt = "Ingresa el peso en gr de la verdura 2: ")
    n_porcion_verd2.2<-as.numeric(porcion_verd2.2)
    kcal_verd2.2<- (n_kcal_alimento_dieta_verd2.2*n_porcion_verd2.2)/100
    kcal_verd2.2
    kcal_totales_verd2<- kcal_verd2.1+kcal_verd2.2
    kcal_totales_verd2
    #Saca la proteina
    proteina_alimento_dieta_verd2.1 <- verduras[alimento_dieta_verd2.1, "proteinas"]
    n_proteina_alimento_dieta_verd2.1<- as.numeric(proteina_alimento_dieta_verd2.1)
    n_proteina_totales_verd2.1<- (n_proteina_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    proteina_alimento_dieta_verd2.2<-verduras[alimento_dieta_verd2.2, "proteinas"]
    n_proteina_alimento_dieta_verd2.2<- as.numeric(proteina_alimento_dieta_verd2.2)
    n_proteina_totales_verd2.2<- (n_proteina_alimento_dieta_verd2.2*n_porcion_verd2.2)/100
    proteina_totales_verd2<- n_proteina_totales_verd2.1 + n_proteina_totales_verd2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd2.1<- verduras[alimento_dieta_verd2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd2.1<-as.numeric(carbohidratos_alimento_dieta_verd2.1)
    n_carbohidratos_totales_verd2.1<- (n_carbohidratos_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    carbohidratos_alimento_dieta_verd2.2<- verdura[alimento_dieta_verd2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd2.2<-as.numeric(carbohidratos_alimento_dieta_verd2.2)
    n_carbohidratos_totales_verd2.2<- (n_carbohidratos_alimento_dieta_verd2.2*n_porcion_verd2.2)/100
    carbohidrato_totales_verd2<- n_carbohidratos_totales_verd2.1 + n_carbohidratos_totales_verd2.2
    #Saca las grasas
    grasas_alimento_dieta_verd2.1<- verduras[alimento_dieta_verd2.1, "Grasas"]
    n_grasas_alimento_dieta_verd2.1<- as.numeric(grasas_alimento_dieta_verd2.1)
    n_grasas_totales_verd2.1<- (n_grasas_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    grasas_alimento_dieta_verd2.2<- verduras[alimento_dieta_verd2.2, "Grasas"]
    n_grasas_alimento_dieta_verd2.2<- as.numeric(grasas_alimento_dieta_verd2.2)
    n_grasas_totales_verd2.2<- (n_grasas_alimento_dieta_verd2.2*n_porcion_verd2.2)/100
    grasas_totales_verd2<- n_grasas_totales_verd2.1 + n_grasas_totales_verd2.2
    return(print(paste("En verduras las kcal son", kcal_totales_verd2, ", las proteinas totales son", proteina_totales_verd2, ", los carbohidratos totales son", carbohidrato_totales_verd2, ", las grasas totales son", grasas_totales_verd2)))
  } else if (cantidad_de_verd==3){
    #Saca las kcal
    alimento_dieta_verd3.1<-readline(prompt = "Ingresa la verdura 1: ")
    kcal_alimento_dieta_verd3.1<- verduras[alimento_dieta_verd3.1, "kcal"]
    n_kcal_alimento_dieta_verd3.1<-as.numeric(kcal_alimento_dieta_verd3.1)
    porcion_verd3.1<- readline(prompt = "Ingresa el peso en gr de la verdura 1: ")
    n_porcion_verd3.1<-as.numeric(porcion_verd3.1)
    kcal_verd3.1<- (n_kcal_alimento_dieta_verd3.1*n_porcion_verd3.1)/100
    kcal_verd3.1
    alimento_dieta_verd3.2<-readline(prompt = "Ingresa la verdura 2: ")
    kcal_alimento_dieta_verd3.2<- verduras[alimento_dieta_verd3.2, "kcal"]
    n_kcal_alimento_dieta_verd3.2<-as.numeric(kcal_alimento_dieta_verd3.2)
    porcion_verd3.2<- readline(prompt = "Ingresa el peso en gr de la verdura 2: ")
    n_porcion_verd3.2<-as.numeric(porcion_verd3.2)
    kcal_verd3.2<- (n_kcal_alimento_dieta_verd3.2*n_porcion_verd3.2)/100
    kcal_verd3.2
    alimento_dieta_verd3.3<-readline(prompt = "Ingresa la verdura 3: ")
    kcal_alimento_dieta_verd3.3<- verduras[alimento_dieta_verd3.3, "kcal"]
    n_kcal_alimento_dieta_verd3.3<-as.numeric(kcal_alimento_dieta_verd3.3)
    porcion_verd3.3<- readline(prompt = "Ingresa el peso en gr de la verdura 3: ")
    n_porcion_verd3.3<-as.numeric(porcion_verd3.3)
    kcal_verd3.3<- (n_kcal_alimento_dieta_verd3.2*n_porcion_verd3.3)/100
    kcal_verd3.3
    kcal_totales_verd3<- kcal_verd3.1+kcal_verd3.2+kcal_verd3.3
    kcal_totales_verd3
    #Saca las proteinas
    proteina_alimento_dieta_verd3.1<-verduras[alimento_dieta_verd3.1, "proteinas"]
    n_proteina_alimento_dieta_verd3.1<- as.numeric(proteina_alimento_dieta_verd3.1)
    n_proteina_totales_verd3.1<- (n_proteina_alimento_dieta_verd3.1*n_porcion_verd3.1)/100
    proteina_alimento_dieta_verd3.2<-verduras[alimento_dieta_verd3.2, "proteinas"]
    n_proteina_alimento_dieta_verd3.2<- as.numeric(proteina_alimento_dieta_verd3.2)
    n_proteina_totales_verd3.2<- (n_proteina_alimento_dieta_verd3.2*n_porcion_verd3.2)/100
    proteina_alimento_dieta_verd3.3<-verduras[alimento_dieta_verd3.3, "proteinas"]
    n_proteina_alimento_dieta_verd3.3<- as.numeric(proteina_alimento_dieta_verd3.3)
    n_proteina_totales_verd3.3<- (n_proteina_alimento_dieta_verd3.3*n_porcion_verd3.3)/100
    proteina_totales_verd3<- n_proteina_totales_verd3.1 + n_proteina_totales_verd3.2 + n_proteina_totales_verd3.3
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd3.1<- verduras[alimento_dieta_verd3.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd3.1<-as.numeric(carbohidratos_alimento_dieta_verd3.1)
    n_carbohidratos_totales_verd3.1<- (n_carbohidratos_alimento_dieta_verd3.1*n_porcion_verd3.1)/100
    carbohidratos_alimento_dieta_verd3.2<- verduras[alimento_dieta_verd3.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd3.2<-as.numeric(carbohidratos_alimento_dieta_verd3.2)
    n_carbohidratos_totales_verd3.2<- (n_carbohidratos_alimento_dieta_verd3.2*n_porcion_verd3.2)/100
    carbohidratos_alimento_dieta_verd3.3<- verduras[alimento_dieta_verd3.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd3.3<-as.numeric(carbohidratos_alimento_dieta_verd3.3)
    n_carbohidratos_totales_verd3.3<- (n_carbohidratos_alimento_dieta_verd3.3*n_porcion_verd3.3)/100
    carbohidrato_totales_verd3<- n_carbohidratos_totales_verd3.1 + n_carbohidratos_totales_verd3.2 + n_carbohidratos_totales_verd3.3
    #Saca las grasas
    grasas_alimento_dieta_verd3.1<- verduras[alimento_dieta_verd3.1, "Grasas"]
    n_grasas_alimento_dieta_verd3.1<- as.numeric(grasas_alimento_dieta_verd3.1)
    n_grasas_totales_verd3.1<- (n_grasas_alimento_dieta_verd3.1*n_porcion_verd3.1)/100
    grasas_alimento_dieta_verd3.2<- verduras[alimento_dieta_verd3.2, "Grasas"]
    n_grasas_alimento_dieta_verd3.2<- as.numeric(grasas_alimento_dieta_verd3.2)
    n_grasas_totales_verd3.2<- (n_grasas_alimento_dieta_verd3.2*n_porcion_verd3.2)/100
    grasas_alimento_dieta_verd3.3<- verduras[alimento_dieta_verd3.3, "Grasas"]
    n_grasas_alimento_dieta_verd3.3<- as.numeric(grasas_alimento_dieta_verd3.3)
    n_grasas_totales_verd3.3<- (n_grasas_alimento_dieta_verd3.3*n_porcion_verd3.3)/100
    grasas_totales_verd3<- n_grasas_totales_verd3.1 + n_grasas_totales_verd3.2 + n_grasas_totales_verd3.3
    return(print(paste("En las verduras las kcal son ", kcal_totales_verd3, ", las proteinas totales son", proteina_totales_verd3, ", los carbohidratos totales son", carbohidrato_totales_verd3, "las grasas totales son", grasas_totales_verd3)))
    
  } else if (cantidad_de_verd==4){
    alimento_dieta_verd4.1<-readline(prompt = "Ingresa la verdura 1: ")
    kcal_alimento_dieta_verd4.1<- verduras[alimento_dieta_verd4.1, "kcal"]
    n_kcal_alimento_dieta_verd4.1<-as.numeric(kcal_alimento_dieta_verd4.1)
    porcion_verd4.1<- readline(prompt = "Ingresa el peso en gr de la verdura 1: ")
    n_porcion_verd4.1<-as.numeric(porcion_verd4.1)
    kcal_verd4.1<- (n_kcal_alimento_dieta_verd4.1*n_porcion_verd4.1)/100
    kcal_verd4.1
    alimento_dieta_verd4.2<-readline(prompt = "Ingresa la verdura 2: ")
    kcal_alimento_dieta_verd4.2<- verduras[alimento_dieta_verd4.2, "kcal"]
    n_kcal_alimento_dieta_verd4.2<-as.numeric(kcal_alimento_dieta_verd4.2)
    porcion_verd4.2<- readline(prompt = "Ingresa el peso en gr de la verdura 2: ")
    n_porcion_verd4.2<-as.numeric(porcion_verd4.2)
    kcal_verd4.2<- (n_kcal_alimento_dieta_verd4.2*n_porcion_verd4.2)/100
    kcal_verd4.2
    alimento_dieta_verd4.3<-readline(prompt = "Ingresa la verdura 3: ")
    kcal_alimento_dieta_verd4.3<- verduras[alimento_dieta_verd4.3, "kcal"]
    n_kcal_alimento_dieta_verd4.3<-as.numeric(kcal_alimento_dieta_verd4.3)
    porcion_verd4.3<- readline(prompt = "Ingresa el peso en gr de la verduras 3: ")
    n_porcion_verd4.3<-as.numeric(porcion_verd4.3)
    kcal_verd4.3<- (n_kcal_alimento_dieta_verd4.3*n_porcion_verd4.3)/100
    kcal_verd4.3
    alimento_dieta_verd4.4<-readline(prompt = "Ingresa la verdura 4: ")
    kcal_alimento_dieta_verd4.4<- verduras[alimento_dieta_verd4.4, "kcal"]
    n_kcal_alimento_dieta_verd4.4<-as.numeric(kcal_alimento_dieta_verd4.4)
    porcion_verd4.4<- readline(prompt = "Ingresa el peso en gr de la verdura 4: ")
    n_porcion_verd4.4<-as.numeric(porcion_verd4.4)
    kcal_verd4.4<- (n_kcal_alimento_dieta_verd4.4*n_porcion_verd4.4)/100
    kcal_verd4.4
    kcal_totales_verd4<- kcal_verd4.1+kcal_verd4.2+kcal_verd4.3+ kcal_verd4.4
    kcal_totales_verd4
    #Saca las proteinas
    proteina_alimento_dieta_verd4.1<-verduras[alimento_dieta_verd4.1, "proteinas"]
    n_proteina_alimento_dieta_verd4.1<- as.numeric(proteina_alimento_dieta_verd4.1)
    n_proteina_totales_verd4.1<- (n_proteina_alimento_dieta_verd4.1*n_porcion_verd4.1)/100
    proteina_alimento_dieta_verd4.2<-verduras[alimento_dieta_verd4.2, "proteinas"]
    n_proteina_alimento_dieta_verd4.2<- as.numeric(proteina_alimento_dieta_verd4.2)
    n_proteina_totales_verd4.2<- (n_proteina_alimento_dieta_verd4.2*n_porcion_verd4.2)/100
    proteina_alimento_dieta_verd4.3<-verduras[alimento_dieta_verd4.3, "proteinas"]
    n_proteina_alimento_dieta_verd4.3<- as.numeric(proteina_alimento_dieta_verd4.3)
    n_proteina_totales_verd4.3<- (n_proteina_alimento_dieta_verd4.3*n_porcion_verd4.3)/100
    proteina_alimento_dieta_verd4.4<-verduras[alimento_dieta_verd4.4, "proteinas"]
    n_proteina_alimento_dieta_verd4.4<- as.numeric(proteina_alimento_dieta_verd4.4)
    n_proteina_totales_verd4.4<- (n_proteina_alimento_dieta_verd4.4*n_porcion_verd4.4)/100
    proteina_totales_verd4<- n_proteina_totales_verd4.1 + n_proteina_totales_verd4.2 + n_proteina_totales_verd4.3 + n_proteina_totales_verd4.4
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd4.1<- verduras[alimento_dieta_verd4.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd4.1<-as.numeric(carbohidratos_alimento_dieta_verd4.1)
    n_carbohidratos_totales_verd4.1<- (n_carbohidratos_alimento_dieta_verd4.1*n_porcion_verd4.1)/100
    carbohidratos_alimento_dieta_verd4.2<- verduras[alimento_dieta_verd4.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd4.2<-as.numeric(carbohidratos_alimento_dieta_verd4.2)
    n_carbohidratos_totales_verd4.2<- (n_carbohidratos_alimento_dieta_verd4.2*n_porcion_verd4.2)/100
    carbohidratos_alimento_dieta_verd4.3<- verduras[alimento_dieta_verd4.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd4.3<-as.numeric(carbohidratos_alimento_dieta_verd4.3)
    n_carbohidratos_totales_verd4.3<- (n_carbohidratos_alimento_dieta_verd4.3*n_porcion_verd4.3)/100
    carbohidratos_alimento_dieta_verd4.4<- verduras[alimento_dieta_verd4.4, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd4.4<-as.numeric(carbohidratos_alimento_dieta_verd4.4)
    n_carbohidratos_totales_verd4.4<- (n_carbohidratos_alimento_dieta_verd4.4*n_porcion_verd4.4)/100
    carbohidrato_totales_verd4<- n_carbohidratos_totales_verd4.1 + n_carbohidratos_totales_verd4.2 + n_carbohidratos_totales_verd4.3 + n_carbohidratos_totales_verd4.4
    #Saca las grasas
    grasas_alimento_dieta_verd4.1<- verduras[alimento_dieta_verd4.1, "Grasas"]
    n_grasas_alimento_dieta_verd4.1<- as.numeric(grasas_alimento_dieta_verd4.1)
    n_grasas_totales_verd4.1<- (n_grasas_alimento_dieta_verd4.1*n_porcion_verd4.1)/100
    grasas_alimento_dieta_verd4.2<- verduras[alimento_dieta_verd4.2, "Grasas"]
    n_grasas_alimento_dieta_verd4.2<- as.numeric(grasas_alimento_dieta_verd4.2)
    n_grasas_totales_verd4.2<- (n_grasas_alimento_dieta_verd4.2*n_porcion_verd4.2)/100
    grasas_alimento_dieta_verd4.3<- verduras[alimento_dieta_verd4.3, "Grasas"]
    n_grasas_alimento_dieta_verd4.3<- as.numeric(grasas_alimento_dieta_verd4.3)
    n_grasas_totales_verd4.3<- (n_grasas_alimento_dieta_verd4.3*n_porcion_verd4.3)/100
    grasas_alimento_dieta_verd4.4<- verduras[alimento_dieta_verd4.4, "Grasas"]
    n_grasas_alimento_dieta_verd4.4<- as.numeric(grasas_alimento_dieta_verd4.4)
    n_grasas_totales_verd4.4<- (n_grasas_alimento_dieta_verd4.4*n_porcion_verd4.4)/100
    grasas_totales_verd4<- n_grasas_totales_verd4.1 + n_grasas_totales_verd4.2 + n_grasas_totales_verd4.3 + n_grasas_totales_verd4.4
    return(print(paste("En las verduras las kcal son", kcal_totales_verd4, ", las proteinas totales son", proteina_totales_verd4, ", los carbohidratos totales son", carbohidrato_totales_verd4, "las grasas totales son", grasas_totales_verd4)))
  } else if (cantidad_de_verd==5){
    alimento_dieta_verd5.1<-readline(prompt = "Ingresa la verdura 1: ")
    kcal_alimento_dieta_verd5.1<- verduras[alimento_dieta_verd5.1, "kcal"]
    n_kcal_alimento_dieta_verd5.1<-as.numeric(kcal_alimento_dieta_verd5.1)
    porcion_verd5.1<- readline(prompt = "Ingresa el peso en gr de la verdura 1: ")
    n_porcion_verd5.1<-as.numeric(porcion_verd5.1)
    kcal_verd5.1<- (n_kcal_alimento_dieta_verd5.1*n_porcion_verd5.1)/100
    kcal_verd5.1
    alimento_dieta_verd5.2<-readline(prompt = "Ingresa la verdura 2: ")
    kcal_alimento_dieta_verd5.2<- verduras[alimento_dieta_verd5.2, "kcal"]
    n_kcal_alimento_dieta_verd5.2<-as.numeric(kcal_alimento_dieta_verd5.2)
    porcion_verd5.2<- readline(prompt = "Ingresa el peso en gr de la verdura 2: ")
    n_porcion_verd5.2<-as.numeric(porcion_verd5.2)
    kcal_verd5.2<- (n_kcal_alimento_dieta_verd5.2*n_porcion_verd5.2)/100
    kcal_verd5.2
    alimento_dieta_verd5.3<-readline(prompt = "Ingresa la verdura 3: ")
    kcal_alimento_dieta_verd5.3<- verduras[alimento_dieta_verd5.3, "kcal"]
    n_kcal_alimento_dieta_verd5.3<-as.numeric(kcal_alimento_dieta_verd5.3)
    porcion_verd5.3<- readline(prompt = "Ingresa el peso en gr de la verdura 3: ")
    n_porcion_verd5.3<-as.numeric(porcion_verd5.3)
    kcal_verd5.3<- (n_kcal_alimento_dieta_verd5.3*n_porcion_verd5.3)/100
    kcal_verd5.3
    alimento_dieta_verd5.4<-readline(prompt = "Ingresa la verdura 4: ")
    kcal_alimento_dieta_verd5.4<- verduras[alimento_dieta_verd5.4, "kcal"]
    n_kcal_alimento_dieta_verd5.4<-as.numeric(kcal_alimento_dieta_verd5.4)
    porcion_verd5.4<- readline(prompt = "Ingresa el peso en gr de la verdura 4: ")
    n_porcion_verd5.4<-as.numeric(porcion_verd5.4)
    kcal_verd5.4<- (n_kcal_alimento_dieta_verd5.4*n_porcion_verd5.4)/100
    kcal_verd5.4
    alimento_dieta_verd5.5<-readline(prompt = "Ingresa la verdura 5: ")
    kcal_alimento_dieta_verd5.5<- verduras[alimento_dieta_verd5.5, "kcal"]
    n_kcal_alimento_dieta_verd5.5<-as.numeric(kcal_alimento_dieta_verd5.5)
    porcion_verd5.5<- readline(prompt = "Ingresa el peso en gr de la verdura 5: ")
    n_porcion_verd5.5<-as.numeric(porcion_verd5.5)
    kcal_verd5.5<- (n_kcal_alimento_dieta_verd5.5*n_porcion_verd5.5)/100
    kcal_verd5.5
    kcal_totales_verd5<- kcal_verd5.1+kcal_verd5.2+kcal_verd5.3+ kcal_verd5.4 + kcal_verd5.5
    kcal_totales_verd5
    #Saca las proteinas
    proteina_alimento_dieta_verd5.1<-verduras[alimento_dieta_verd5.1, "proteinas"]
    n_proteina_alimento_dieta_verd5.1<- as.numeric(proteina_alimento_dieta_verd5.1)
    n_proteina_totales_verd5.1<- (n_proteina_alimento_dieta_verd5.1*n_porcion_verd5.1)/100
    proteina_alimento_dieta_verd5.2<-verduras[alimento_dieta_verd5.2, "proteinas"]
    n_proteina_alimento_dieta_verd5.2<- as.numeric(proteina_alimento_dieta_verd5.2)
    n_proteina_totales_verd5.2<- (n_proteina_alimento_dieta_verd5.2*n_porcion_verd5.2)/100
    proteina_alimento_dieta_verd5.3<-verduras[alimento_dieta_verd5.3, "proteinas"]
    n_proteina_alimento_dieta_verd5.3<- as.numeric(proteina_alimento_dieta_verd5.3)
    n_proteina_totales_verd5.3<- (n_proteina_alimento_dieta_verd5.3*n_porcion_verd5.3)/100
    proteina_alimento_dieta_verd5.4<-verduras[alimento_dieta_verd5.4, "proteinas"]
    n_proteina_alimento_dieta_verd5.4<- as.numeric(proteina_alimento_dieta_verd5.4)
    n_proteina_totales_verd5.4<- (n_proteina_alimento_dieta_verd5.4*n_porcion_verd5.4)/100
    proteina_alimento_dieta_verd5.5<-verduras[alimento_dieta_verd5.5, "proteinas"]
    n_proteina_alimento_dieta_verd5.5<- as.numeric(proteina_alimento_dieta_verd5.5)
    n_proteina_totales_verd5.5<- (n_proteina_alimento_dieta_verd5.5*n_porcion_verd5.5)/100
    proteina_totales_verd5<- n_proteina_totales_verd5.1 + n_proteina_totales_verd5.2 + n_proteina_totales_verd5.3 + n_proteina_totales_verd5.4 + n_proteina_totales_verd5.5
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd5.1<- verduras[alimento_dieta_verd5.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd5.1<-as.numeric(carbohidratos_alimento_dieta_verd5.1)
    n_carbohidratos_totales_verd5.1<- (n_carbohidratos_alimento_dieta_verd5.1*n_porcion_verd5.1)/100
    carbohidratos_alimento_dieta_verd5.2<- verduras[alimento_dieta_verd5.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd5.2<-as.numeric(carbohidratos_alimento_dieta_verd5.2)
    n_carbohidratos_totales_verd5.2<- (n_carbohidratos_alimento_dieta_verd5.2*n_porcion_verd5.2)/100
    carbohidratos_alimento_dieta_verd5.3<- verduras[alimento_dieta_verd5.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd5.3<-as.numeric(carbohidratos_alimento_dieta_verd5.3)
    n_carbohidratos_totales_verd5.3<- (n_carbohidratos_alimento_dieta_verd5.3*n_porcion_verd5.3)/100
    carbohidratos_alimento_dieta_verd5.4<- verduras[alimento_dieta_verd5.4, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd5.4<-as.numeric(carbohidratos_alimento_dieta_verd5.4)
    n_carbohidratos_totales_verd5.4<- (n_carbohidratos_alimento_dieta_verd5.4*n_porcion_verd5.4)/100
    carbohidratos_alimento_dieta_verd5.5<- verduras[alimento_dieta_verd5.5, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd5.5<-as.numeric(carbohidratos_alimento_dieta_verd5.5)
    n_carbohidratos_totales_verd5.5<- (n_carbohidratos_alimento_dieta_verd5.5*n_porcion_verd5.5)/100
    carbohidrato_totales_verd5<- n_carbohidratos_totales_verd5.1 + n_carbohidratos_totales_verd5.2 + n_carbohidratos_totales_verd5.3 + n_carbohidratos_totales_verd5.4 + n_carbohidratos_totales_verd5.5
    #Saca las grasas
    grasas_alimento_dieta_verd5.1<- verduras[alimento_dieta_verd5.1, "Grasas"]
    n_grasas_alimento_dieta_verd5.1<- as.numeric(grasas_alimento_dieta_verd5.1)
    n_grasas_totales_verd5.1<- (n_grasas_alimento_dieta_verd5.1*n_porcion_verd5.1)/100
    grasas_alimento_dieta_verd5.2<- verduras[alimento_dieta_verd5.2, "Grasas"]
    n_grasas_alimento_dieta_verd5.2<- as.numeric(grasas_alimento_dieta_verd5.2)
    n_grasas_totales_verd5.2<- (n_grasas_alimento_dieta_verd5.2*n_porcion_verd5.2)/100
    grasas_alimento_dieta_verd5.3<- verduras[alimento_dieta_verd5.3, "Grasas"]
    n_grasas_alimento_dieta_verd5.3<- as.numeric(grasas_alimento_dieta_verd5.3)
    n_grasas_totales_verd5.3<- (n_grasas_alimento_dieta_verd5.3*n_porcion_verd5.3)/100
    grasas_alimento_dieta_verd5.4<- verduras[alimento_dieta_verd5.4, "Grasas"]
    n_grasas_alimento_dieta_verd5.4<- as.numeric(grasas_alimento_dieta_verd5.4)
    n_grasas_totales_verd5.4<- (n_grasas_alimento_dieta_verd5.4*n_porcion_verd5.4)/100
    grasas_alimento_dieta_verd5.5<- verduras[alimento_dieta_verd5.5, "Grasas"]
    n_grasas_alimento_dieta_verd5.5<- as.numeric(grasas_alimento_dieta_verd5.5)
    n_grasas_totales_verd5.5<- (n_grasas_alimento_dieta_verd5.5*n_porcion_verd5.5)/100
    grasas_totales_verd5<- n_grasas_totales_verd5.1 + n_grasas_totales_verd5.2 + n_grasas_totales_verd5.3 + n_grasas_totales_verd5.4 + n_grasas_totales_verd5.5
    return(print(paste("En las verduras las kcal son", kcal_totales_verd5, ", las proteinas totales son", proteina_totales_verd5, ", los carbohidratos totales son", carbohidrato_totales_verd5, "las grasas totales son", grasas_totales_verd5)))
  }
}
dieta_verduras()



######## LEGUMINOSAS #######
leguminosas

dieta_leguminosas<- function(){
  cantidad_de_leguminosass<- readline(prompt = "Ingresa el numero de leguminosas: ")
  if(cantidad_de_leguminosas==1){
    #Saca las kcal
    alimento_dieta_leguminosas1<-readline(prompt = "Ingresa leguminosas 1: ")
    kcal_alimento_dieta_leguminosas1<- leguminosas[alimento_dieta_leguminosas1, "kcal"]
    n_kcal_alimento_dieta_leguminosas1<-as.numeric(kcal_alimento_dieta_leguminosas1)
    porcion_leguminosas1<- readline(prompt = "Ingresa el peso en gr de leguminosas: ")
    n_porcion_leguminosas1<-as.numeric(porcion_leguminosas1)
    kcal_totales_leguminosas1<- (n_kcal_alimento_dieta_leguminosas1*n_porcion_leguminosas1)/100
    kcal_totales_leguminosas1
    #Saca las proteinas 
    proteina_alimento_dieta_leguminosas1<-leguminosas[alimento_dieta_leguminosas1, "proteinas"]
    n_proteina_alimento_dieta_leguminosas1<- as.numeric(proteina_alimento_dieta_leguminosas1)
    proteina_totales_leguminosas1<- (n_proteina_alimento_dieta_leguminosas1*n_porcion_leguminosas1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_leguminosas1<- leguminosas[alimento_dieta_leguminosas1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas1<-as.numeric(carbohidratos_alimento_dieta_leguminosas1)
    carbohidratos_totales_leguminosas1<- (n_carbohidratos_alimento_dieta_leguminosas1*n_porcion_leguminosas1)/100
    #Saca las grasas
    grasas_alimento_dieta_leguminosas1<- leguminosas[alimento_dieta_leguminosas1, "Grasas"]
    n_grasas_alimento_dieta_leguminosas1<- as.numeric(grasas_alimento_dieta_leguminosas1)
    grasas_totales_leguminosas1<- (n_grasas_alimento_dieta_leguminosas1*n_porcion_leguminosas1)/100
    return(print(paste("En leguminosas las kcal totales son", kcal_totales_leguminosas1, ",las proteinas totales en kcal son", proteina_totales_leguminosas1, ", los carbohidratos totales son", carbohidratos_totales_leguminosas1, " y las grasas totales son", grasas_totales_leguminosas1 )))
  }else if (cantidad_de_leguminosas==2){
    #Saca las kcal
    alimento_dieta_leguminosas2.1<-readline(prompt = "Ingresa leguminosas 1: ")
    kcal_alimento_dieta_leguminosas2.1<- leguminosas[alimento_dieta_leguminosas2.1, "kcal"]
    n_kcal_alimento_dieta_leguminosas2.1<-as.numeric(kcal_alimento_dieta_leguminosas2.1)
    porcion_leguminosas2.1<- readline(prompt = "Ingresa el peso en gr de leguminosas 1")
    n_porcion_leguminosas2.1<-as.numeric(porcion_leguminosas2.1)
    kcal_leguminosas2.1<- (n_kcal_alimento_dieta_leguminosas2.1*n_porcion_leguminosas2.1)/100
    kcal_leguminosas2.1
    alimento_dieta_leguminosas2.2<-readline(prompt = "Ingresa leguminosas 2: ")
    kcal_alimento_dieta_leguminosas2.2<- leguminosas[alimento_dieta_leguminosas2.2, "kcal"]
    n_kcal_alimento_dieta_leguminosas2.2<-as.numeric(kcal_alimento_dieta_leguminosas2.2)
    porcion_leguminosas2.2<- readline(prompt = "Ingresa el peso en gr de leguminosas 2: ")
    n_porcion_leguminosas2.2<-as.numeric(porcion_leguminosas2.2)
    kcal_leguminosas2.2<- (n_kcal_alimento_dieta_leguminosas2.2*n_porcion_leguminosas2.2)/100
    kcal_leguminosas2.2
    kcal_totales_leguminosas2<- kcal_leguminosas2.1 + kcal_leguminosas2.2
    #Saca las proteinas 
    proteina_alimento_dieta_leguminosas2.1<-leguminosas[alimento_dieta_leguminosas2.1, "proteinas"]
    n_proteina_alimento_dieta_leguminosas2.1<- as.numeric(proteina_alimento_dieta_leguminosas2.1)
    n_proteina_leguminosas2.1<- (n_proteina_alimento_dieta_leguminosas2.1*n_porcion_leguminosas2.1)/100
    proteina_alimento_dieta_leguminosas2.2<-leguminosas[alimento_dieta_leguminosas2.2, "proteinas"]
    n_proteina_alimento_dieta_leguminosas2.2<- as.numeric(proteina_alimento_dieta_leguminosas2.2)
    n_proteina_leguminosas2.2<- (n_proteina_alimento_dieta_leguminosas2.2*n_porcion_leguminosas2.2)/100
    proteina_totales_leguminosas2<- n_proteina_leguminosas2.1 + n_proteina_leguminosas2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_leguminosas2.1<- leguminosas[alimento_dieta_leguminosas2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas2.1<-as.numeric(carbohidratos_alimento_dieta_leguminosas2.1)
    n_carbohidratos_leguminosas2.1<- (n_carbohidratos_alimento_dieta_leguminosas2.1*n_porcion_leguminosas2.1)/100
    carbohidratos_alimento_dieta_leguminosas2.2<- leguminosas[alimento_dieta_leguminosas2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas2.2<-as.numeric(carbohidratos_alimento_dieta_leguminosas2.2)
    n_carbohidratos_leguminosas2.2<- (n_carbohidratos_alimento_dieta_leguminosas2.2*n_porcion_leguminosas2.2)/100
    carbohidratos_totales_leguminosas2<- n_carbohidratos_leguminosas2.1 + n_carbohidratos_leguminosas2.2
    #Saca las grasas
    grasas_alimento_dieta_leguminosas2.1<- leguminosas[alimento_dieta_leguminosas2.1, "Grasas"]
    n_grasas_alimento_dieta_leguminosas2.1<- as.numeric(grasas_alimento_dieta_leguminosas2.1)
    n_grasas_leguminosas2.1<- (n_grasas_alimento_dieta_leguminosas2.1*n_porcion_leguminosas2.1)/100
    grasas_alimento_dieta_leguminosas2.2<- leguminosas[alimento_dieta_leguminosas2.2, "Grasas"]
    n_grasas_alimento_dieta_leguminosas2.2<- as.numeric(grasas_alimento_dieta_leguminosas2.2)
    n_grasas_leguminosas2.2<- (n_grasas_alimento_dieta_leguminosas2.2*n_porcion_leguminosas2.2)/100
    grasas_totales_leguminosas2<- n_grasas_leguminosas2.1 + n_grasas_leguminosas2.2
    return(print(paste("En leguminosas las kcal totales son", kcal_totales_leguminosas2, ",las proteinas totales en kcal son", proteina_totales_leguminosas2, ", los carbohidratos totales son", carbohidratos_totales_leguminosas2, " y las grasas totales son", grasas_totales_leguminosas2 )))
  }else if (cantidad_de_leguminosas==3){
    #Saca las kcal
    alimento_dieta_leguminosas3.1<-readline(prompt = "Ingresa leguminosas 3: ")
    kcal_alimento_dieta_leguminosas3.1<- leguminosas[alimento_dieta_leguminosas3.1, "kcal"]
    n_kcal_alimento_dieta_leguminosas3.1<-as.numeric(kcal_alimento_dieta_leguminosas3.1)
    porcion_leguminosas3.1<- readline(prompt = "Ingresa el peso en gr de leguminosas 1")
    n_porcion_leguminosas3.1<-as.numeric(porcion_leguminosas3.1)
    kcal_leguminosas3.1<- (n_kcal_alimento_dieta_leguminosas3.1*n_porcion_leguminosas3.1)/100
    kcal_leguminosas3.1
    alimento_dieta_leguminosas3.2<-readline(prompt = "Ingresa leguminosas 2: ")
    kcal_alimento_dieta_leguminosas3.2<- leguminosas[alimento_dieta_leguminosas3.2, "kcal"]
    n_kcal_alimento_dieta_leguminosas3.2<-as.numeric(kcal_alimento_dieta_leguminosas3.2)
    porcion_leguminosas3.2<- readline(prompt = "Ingresa el peso en gr de leguminosas 2: ")
    n_porcion_leguminosas3.2<-as.numeric(porcion_leguminosas3.2)
    kcal_leguminosas3.2<- (n_kcal_alimento_dieta_leguminosas3.2*n_porcion_leguminosas3.2)/100
    kcal_leguminosas3.2
    alimento_dieta_leguminosas3.3<-readline(prompt = "Ingresa leguminosas 3: ")
    kcal_alimento_dieta_leguminosas3.3<- leguminosas[alimento_dieta_leguminosas3.3, "kcal"]
    n_kcal_alimento_dieta_leguminosas3.3<-as.numeric(kcal_alimento_dieta_leguminosas3.3)
    porcion_leguminosas3.3<- readline(prompt = "Ingresa el peso en gr de leguminosas 3: ")
    n_porcion_leguminosas3.3<-as.numeric(porcion_leguminosas3.3)
    kcal_leguminosas3.3<- (n_kcal_alimento_dieta_leguminosas3.3*n_porcion_leguminosas3.3)/100
    kcal_leguminosas3.3
    kcal_totales_leguminosas3<- kcal_leguminosas3.1 + kcal_leguminosas3.2 + kcal_leguminosas3.3
    #Saca las proteinas 
    proteina_alimento_dieta_leguminosas3.1<-leguminosas[alimento_dieta_leguminosas3.1, "proteinas"]
    n_proteina_alimento_dieta_leguminosas3.1<- as.numeric(proteina_alimento_dieta_leguminosas3.1)
    n_proteina_leguminosas3.1<- (n_proteina_alimento_dieta_leguminosas3.1*n_porcion_leguminosas3.1)/100
    proteina_alimento_dieta_leguminosas3.2<-leguminosas[alimento_dieta_leguminosas3.2, "proteinas"]
    n_proteina_alimento_dieta_leguminosas3.2<- as.numeric(proteina_alimento_dieta_leguminosas3.2)
    n_proteina_leguminosas3.2<- (n_proteina_alimento_dieta_leguminosas3.2*n_porcion_leguminosas3.2)/100
    proteina_alimento_dieta_leguminosas3.3<-leguminosas[alimento_dieta_leguminosas3.3, "proteinas"]
    n_proteina_alimento_dieta_leguminosas3.3<- as.numeric(proteina_alimento_dieta_leguminosas3.3)
    n_proteina_leguminosas3.3<- (n_proteina_alimento_dieta_leguminosas3.3*n_porcion_leguminosas3.3)/100
    proteina_totales_leguminosas3<- n_proteina_leguminosas3.1 + n_proteina_leguminosas3.2 + n_proteina_leguminosas3.3
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_leguminosas3.1<- leguminosas[alimento_dieta_leguminosas3.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas3.1<-as.numeric(carbohidratos_alimento_dieta_leguminosas3.1)
    n_carbohidratos_leguminosas3.1<- (n_carbohidratos_alimento_dieta_leguminosas3.1*n_porcion_leguminosas3.1)/100
    carbohidratos_alimento_dieta_leguminosas3.2<- leguminosas[alimento_dieta_leguminosas3.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas3.2<-as.numeric(carbohidratos_alimento_dieta_leguminosas3.2)
    n_carbohidratos_leguminosas3.2<- (n_carbohidratos_alimento_dieta_leguminosas3.2*n_porcion_leguminosas3.2)/100
    carbohidratos_alimento_dieta_leguminosas3.3<- leguminosas[alimento_dieta_leguminosas3.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_leguminosas3.3<-as.numeric(carbohidratos_alimento_dieta_leguminosas3.3)
    n_carbohidratos_leguminosas3.3<- (n_carbohidratos_alimento_dieta_leguminosas3.3*n_porcion_leguminosas3.3)/100
    carbohidratos_totales_leguminosas3<- n_carbohidratos_leguminosas3.1 + n_carbohidratos_leguminosas3.2 + n_carbohidratos_leguminosas3.3
    #Saca las grasas
    grasas_alimento_dieta_leguminosas3.1<- leguminosas[alimento_dieta_leguminosas3.1, "Grasas"]
    n_grasas_alimento_dieta_leguminosas3.1<- as.numeric(grasas_alimento_dieta_leguminosas3.1)
    n_grasas_leguminosas3.1<- (n_grasas_alimento_dieta_leguminosas3.1*n_porcion_leguminosas3.1)/100
    grasas_alimento_dieta_leguminosas3.2<- leguminosas[alimento_dieta_leguminosas3.2, "Grasas"]
    n_grasas_alimento_dieta_leguminosas3.2<- as.numeric(grasas_alimento_dieta_leguminosas3.2)
    n_grasas_leguminosas3.2<- (n_grasas_alimento_dieta_leguminosas3.2*n_porcion_leguminosas3.2)/100
    grasas_alimento_dieta_leguminosas3.3<- leguminosas[alimento_dieta_leguminosas3.3, "Grasas"]
    n_grasas_alimento_dieta_leguminosas3.3<- as.numeric(grasas_alimento_dieta_leguminosas3.3)
    n_grasas_leguminosas3.3<- (n_grasas_alimento_dieta_leguminosas3.3*n_porcion_leguminosas3.3)/100
    grasas_totales_leguminosas3<- n_grasas_leguminosas3.1 + n_grasas_leguminosas3.2 + n_grasas_leguminosas3.3
    return(print(paste("En leguminosas las kcal totales son", kcal_totales_leguminosas3, ",las proteinas totales en kcal son", proteina_totales_leguminosas3, ", los carbohidratos totales son", carbohidratos_totales_leguminosas3, " y las grasas totales son", grasas_totales_leguminosas3 )))
  }
}
dieta_leguminosas()


######## GRASAS CON PROTEINA ######
grasas_con_proteinas

dieta_grasas_con_proteina<- function(){
  cantidad_de_grasas_proteina<- readline(prompt = "Ingresa el numero de alimentos de grasas con proteinas: ")
  cantidad_grasas_proteina<- as.numeric(cantidad_de_grasas_proteina)
  if(cantidad_grasas_proteina==1){
    #Saca las kcal
    alimento_dieta_grasas_proteina1<-readline(prompt = "Ingresa grasas con proteinas 1: ")
    kcal_alimento_dieta_grasas_proteina1<- grasas_con_proteinas[alimento_dieta_grasas_proteina1, "kcal"]
    n_kcal_alimento_dieta_grasas_proteina1<-as.numeric(kcal_alimento_dieta_grasas_proteina1)
    porcion_grasas_proteina1<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas: ")
    n_porcion_grasas_proteina1<-as.numeric(porcion_grasas_proteina1)
    kcal_totales_grasas_proteina1<- (n_kcal_alimento_dieta_grasas_proteina1*n_porcion_grasas_proteina1)/100
    kcal_totales_grasas_proteina1
    #Saca las proteinas 
    proteina_alimento_dieta_grasas_proteina1<-grasas_con_proteinas[alimento_dieta_grasas_proteina1, "proteinas"]
    n_proteina_alimento_dieta_grasas_proteina1<- as.numeric(proteina_alimento_dieta_grasas_proteina1)
    proteina_totales_grasas_proteina1<- (n_proteina_alimento_dieta_grasas_proteina1*n_porcion_grasas_proteina1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_grasas_proteina1<- grasas_con_proteinas[alimento_dieta_grasas_proteina1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas_proteina1<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina1)
    carbohidratos_totales_grasas_proteina1<- (n_carbohidratos_alimento_dieta_grasas_proteina1*n_porcion_grasas_proteina1)/100
    #Saca las grasas
    grasas_alimento_dieta_grasas_proteina1<- grasas_con_proteinas[alimento_dieta_grasas_proteina1, "Grasas"]
    n_grasas_alimento_dieta_grasas_proteina1<- as.numeric(grasas_alimento_dieta_grasas_proteina1)
    grasas_totales_grasas_proteina1<- (n_grasas_alimento_dieta_grasas_proteina1*n_porcion_grasas_proteina1)/100
    grasas_proteina<- c(kcal_totales_grasas_proteina1, proteina_totales_grasas_proteina1, carbohidratos_totales_grasas_proteina1, grasas_totales_grasas_proteina1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(grasas_proteina)<- nombres
    return(print(grasas_proteina))
  }else if (cantidad_grasas_proteina==2){
    #Saca las kcal
    alimento_dieta_grasas_proteina2.1<-readline(prompt = "Ingresa grasas con proteinas 1: ")
    kcal_alimento_dieta_grasas_proteina2.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.1, "kcal"]
    n_kcal_alimento_dieta_grasas_proteina2.1<-as.numeric(kcal_alimento_dieta_grasas_proteina2.1)
    porcion_grasas_proteina2.1<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 1")
    n_porcion_grasas_proteina2.1<-as.numeric(porcion_grasas_proteina2.1)
    kcal_grasas_proteina2.1<- (n_kcal_alimento_dieta_grasas_proteina2.1*n_porcion_grasas_proteina2.1)/100
    kcal_grasas_proteina2.1
    alimento_dieta_grasas_proteina2.2<-readline(prompt = "Ingresa grasas con proteinas 2: ")
    kcal_alimento_dieta_grasas_proteina2.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.2, "kcal"]
    n_kcal_alimento_dieta_grasas_proteina2.2<-as.numeric(kcal_alimento_dieta_grasas_proteina2.2)
    porcion_grasas_proteina2.2<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 2: ")
    n_porcion_grasas_proteina2.2<-as.numeric(porcion_grasas_proteina2.2)
    kcal_grasas_proteina2.2<- (n_kcal_alimento_dieta_grasas_proteina2.2*n_porcion_grasas_proteina2.2)/100
    kcal_grasas_proteina2.2
    kcal_totales_grasas_proteina2<- kcal_grasas_proteina2.1 + kcal_grasas_proteina2.2
    #Saca las proteinas 
    proteina_alimento_dieta_grasas_proteina2.1<-grasas_con_proteinas[alimento_dieta_grasas_proteina2.1, "proteinas"]
    n_proteina_alimento_dieta_grasas_proteina2.1<- as.numeric(proteina_alimento_dieta_grasas_proteina2.1)
    n_proteina_grasas_proteina2.1<- (n_proteina_alimento_dieta_grasas_proteina2.1*n_porcion_grasas_proteina2.1)/100
    proteina_alimento_dieta_grasas_proteina2.2<-grasas_con_proteinas[alimento_dieta_grasas_proteina2.2, "proteinas"]
    n_proteina_alimento_dieta_grasas_proteina2.2<- as.numeric(proteina_alimento_dieta_grasas_proteina2.2)
    n_proteina_grasas_proteina2.2<- (n_proteina_alimento_dieta_grasas_proteina2.2*n_porcion_grasas_proteina2.2)/100
    proteina_totales_grasas_proteina2<- n_proteina_grasas_proteina2.1 + n_proteina_grasas_proteina2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_grasas_proteina2.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas_proteina2.1<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina2.1)
    n_carbohidratos_grasas_proteina2.1<- (n_carbohidratos_alimento_dieta_grasas_proteina2.1*n_porcion_grasas_proteina2.1)/100
    carbohidratos_alimento_dieta_grasas_proteina2.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas_proteina2.2<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina2.2)
    n_carbohidratos_grasas_proteina2.2<- (n_carbohidratos_alimento_dieta_grasas_proteina2.2*n_porcion_grasas_proteina2.2)/100
    carbohidratos_totales_grasas_proteina2<- n_carbohidratos_grasas_proteina2.1 + n_carbohidratos_grasas_proteina2.2
    #Saca las grasas
    grasas_alimento_dieta_grasas_proteina2.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.1, "Grasas"]
    n_grasas_alimento_dieta_grasas_proteina2.1<- as.numeric(grasas_alimento_dieta_grasas_proteina2.1)
    n_grasas_grasas_proteina2.1<- (n_grasas_alimento_dieta_grasas_proteina2.1*n_porcion_grasas_proteina2.1)/100
    grasas_alimento_dieta_grasas_proteina2.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina2.2, "Grasas"]
    n_grasas_alimento_dieta_grasas_proteina2.2<- as.numeric(grasas_alimento_dieta_grasas_proteina2.2)
    n_grasas_grasas_proteina2.2<- (n_grasas_alimento_dieta_grasas_proteina2.2*n_porcion_grasas_proteina2.2)/100
    grasas_totales_grasas_proteina2<- n_grasas_grasas_proteina2.1 + n_grasas_grasas_proteina2.2
    grasas_proteina<- c(kcal_totales_grasas_proteina2, proteina_totales_grasas_proteina2, carbohidratos_totales_grasas_proteina2, grasas_totales_grasas_proteina2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(grasas_proteina)<- nombres
    return(print(grasas_proteina))
    }else if (cantidad_grasas_proteina==3){
      #Saca las kcal
      alimento_dieta_grasas_proteina3.1<-readline(prompt = "Ingresa grasas con proteinas 3: ")
      kcal_alimento_dieta_grasas_proteina3.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "kcal"]
      n_kcal_alimento_dieta_grasas_proteina3.1<-as.numeric(kcal_alimento_dieta_grasas_proteina3.1)
      porcion_grasas_proteina3.1<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 1")
      n_porcion_grasas_proteina3.1<-as.numeric(porcion_grasas_proteina3.1)
      kcal_grasas_proteina3.1<- (n_kcal_alimento_dieta_grasas_proteina3.1*n_porcion_grasas_proteina3.1)/100
      kcal_grasas_proteina3.1
      alimento_dieta_grasas_proteina3.2<-readline(prompt = "Ingresa grasas con proteinas 2: ")
      kcal_alimento_dieta_grasas_proteina3.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.2, "kcal"]
      n_kcal_alimento_dieta_grasas_proteina3.2<-as.numeric(kcal_alimento_dieta_grasas_proteina3.2)
      porcion_grasas_proteina3.2<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 2: ")
      n_porcion_grasas_proteina3.2<-as.numeric(porcion_grasas_proteina3.2)
      kcal_grasas_proteina3.2<- (n_kcal_alimento_dieta_grasas_proteina3.2*n_porcion_grasas_proteina3.2)/100
      kcal_grasas_proteina3.2
      alimento_dieta_grasas_proteina3.3<-readline(prompt = "Ingresa grasas con proteinas 3: ")
      kcal_alimento_dieta_grasas_proteina3.3<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.3, "kcal"]
      n_kcal_alimento_dieta_grasas_proteina3.3<-as.numeric(kcal_alimento_dieta_grasas_proteina3.3)
      porcion_grasas_proteina3.3<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 3: ")
      n_porcion_grasas_proteina3.3<-as.numeric(porcion_grasas_proteina3.3)
      kcal_grasas_proteina3.3<- (n_kcal_alimento_dieta_grasas_proteina3.3*n_porcion_grasas_proteina3.3)/100
      kcal_grasas_proteina3.3
      kcal_totales_grasas_proteina3<- kcal_grasas_proteina3.1 + kcal_grasas_proteina3.2 + kcal_grasas_proteina3.3
      #Saca las proteinas 
      proteina_alimento_dieta_grasas_proteina3.1<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "proteinas"]
      n_proteina_alimento_dieta_grasas_proteina3.1<- as.numeric(proteina_alimento_dieta_grasas_proteina3.1)
      n_proteina_grasas_proteina3.1<- (n_proteina_alimento_dieta_grasas_proteina3.1*n_porcion_grasas_proteina3.1)/100
      proteina_alimento_dieta_grasas_proteina3.2<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.2, "proteinas"]
      n_proteina_alimento_dieta_grasas_proteina3.2<- as.numeric(proteina_alimento_dieta_grasas_proteina3.2)
      n_proteina_grasas_proteina3.2<- (n_proteina_alimento_dieta_grasas_proteina3.2*n_porcion_grasas_proteina3.2)/100
      proteina_alimento_dieta_grasas_proteina3.3<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.3, "proteinas"]
      n_proteina_alimento_dieta_grasas_proteina3.3<- as.numeric(proteina_alimento_dieta_grasas_proteina3.3)
      n_proteina_grasas_proteina3.3<- (n_proteina_alimento_dieta_grasas_proteina3.3*n_porcion_grasas_proteina3.3)/100
      proteina_totales_grasas_proteina3<- n_proteina_grasas_proteina3.1 + n_proteina_grasas_proteina3.2 + n_proteina_grasas_proteina3.3
      #Saca los carbohidratos
      carbohidratos_alimento_dieta_grasas_proteina3.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "Carbohidratos"]
      n_carbohidratos_alimento_dieta_grasas_proteina3.1<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina3.1)
      n_carbohidratos_grasas_proteina3.1<- (n_carbohidratos_alimento_dieta_grasas_proteina3.1*n_porcion_grasas_proteina3.1)/100
      carbohidratos_alimento_dieta_grasas_proteina3.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.2, "Carbohidratos"]
      n_carbohidratos_alimento_dieta_grasas_proteina3.2<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina3.2)
      n_carbohidratos_grasas_proteina3.2<- (n_carbohidratos_alimento_dieta_grasas_proteina3.2*n_porcion_grasas_proteina3.2)/100
      carbohidratos_alimento_dieta_grasas_proteina3.3<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.3, "Carbohidratos"]
      n_carbohidratos_alimento_dieta_grasas_proteina3.3<-as.numeric(carbohidratos_alimento_dieta_grasas_proteina3.3)
      n_carbohidratos_grasas_proteina3.3<- (n_carbohidratos_alimento_dieta_grasas_proteina3.3*n_porcion_grasas_proteina3.3)/100
      carbohidratos_totales_grasas_proteina3<- n_carbohidratos_grasas_proteina3.1 + n_carbohidratos_grasas_proteina3.2 + n_carbohidratos_grasas_proteina3.3
      #Saca las grasas
      grasas_alimento_dieta_grasas_proteina3.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "Grasas"]
      n_grasas_alimento_dieta_grasas_proteina3.1<- as.numeric(grasas_alimento_dieta_grasas_proteina3.1)
      n_grasas_grasas_proteina3.1<- (n_grasas_alimento_dieta_grasas_proteina3.1*n_porcion_grasas_proteina3.1)/100
      grasas_alimento_dieta_grasas_proteina3.2<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.2, "Grasas"]
      n_grasas_alimento_dieta_grasas_proteina3.2<- as.numeric(grasas_alimento_dieta_grasas_proteina3.2)
      n_grasas_grasas_proteina3.2<- (n_grasas_alimento_dieta_grasas_proteina3.2*n_porcion_grasas_proteina3.2)/100
      grasas_alimento_dieta_grasas_proteina3.3<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.3, "Grasas"]
      n_grasas_alimento_dieta_grasas_proteina3.3<- as.numeric(grasas_alimento_dieta_grasas_proteina3.3)
      n_grasas_grasas_proteina3.3<- (n_grasas_alimento_dieta_grasas_proteina3.3*n_porcion_grasas_proteina3.3)/100
      grasas_totales_grasas_proteina3<- n_grasas_grasas_proteina3.1 + n_grasas_grasas_proteina3.2 + n_grasas_grasas_proteina3.3
      grasas_proteina<- c(kcal_totales_grasas_proteina3, proteina_totales_grasas_proteina3, carbohidratos_totales_grasas_proteina3, grasas_totales_grasas_proteina3)
      nombres<- c("kcal","proteina","carbohidratos","grasas")
      names(grasas_proteina)<- nombres
      return(print(grasas_proteina))
    }
  }
dieta_grasas_con_proteina()




####### GRASAS #######
grasas

dieta_grasas<- function(){
  cantidad_de_grasass<- readline(prompt = "Ingresa el numero de grasas: ")
  if(cantidad_de_grasas==1){
    #Saca las kcal
    alimento_dieta_grasas1<-readline(prompt = "Ingresa grasas 1: ")
    kcal_alimento_dieta_grasas1<- grasas[alimento_dieta_grasas1, "kcal"]
    n_kcal_alimento_dieta_grasas1<-as.numeric(kcal_alimento_dieta_grasas1)
    porcion_grasas1<- readline(prompt = "Ingresa el peso en gr de grasas: ")
    n_porcion_grasas1<-as.numeric(porcion_grasas1)
    kcal_totales_grasas1<- (n_kcal_alimento_dieta_grasas1*n_porcion_grasas1)/100
    kcal_totales_grasas1
    #Saca las proteinas 
    proteina_alimento_dieta_grasas1<-grasas[alimento_dieta_grasas1, "proteinas"]
    n_proteina_alimento_dieta_grasas1<- as.numeric(proteina_alimento_dieta_grasas1)
    proteina_totales_grasas1<- (n_proteina_alimento_dieta_grasas1*n_porcion_grasas1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_grasas1<- grasas[alimento_dieta_grasas1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas1<-as.numeric(carbohidratos_alimento_dieta_grasas1)
    carbohidratos_totales_grasas1<- (n_carbohidratos_alimento_dieta_grasas1*n_porcion_grasas1)/100
    #Saca las grasas
    grasas_alimento_dieta_grasas1<- grasas[alimento_dieta_grasas1, "Grasas"]
    n_grasas_alimento_dieta_grasas1<- as.numeric(grasas_alimento_dieta_grasas1)
    grasas_totales_grasas1<- (n_grasas_alimento_dieta_grasas1*n_porcion_grasas1)/100
    return(print(paste("En grasas las kcal totales son", kcal_totales_grasas1, ",las proteinas totales en kcal son", proteina_totales_grasas1, ", los carbohidratos totales son", carbohidratos_totales_grasas1, " y las grasas totales son", grasas_totales_grasas1 )))
  }else if (cantidad_de_grasas==2){
    #Saca las kcal
    alimento_dieta_grasas2.1<-readline(prompt = "Ingresa grasas 1: ")
    kcal_alimento_dieta_grasas2.1<- grasas[alimento_dieta_grasas2.1, "kcal"]
    n_kcal_alimento_dieta_grasas2.1<-as.numeric(kcal_alimento_dieta_grasas2.1)
    porcion_grasas2.1<- readline(prompt = "Ingresa el peso en gr de grasas 1")
    n_porcion_grasas2.1<-as.numeric(porcion_grasas2.1)
    kcal_grasas2.1<- (n_kcal_alimento_dieta_grasas2.1*n_porcion_grasas2.1)/100
    kcal_grasas2.1
    alimento_dieta_grasas2.2<-readline(prompt = "Ingresa grasas 2: ")
    kcal_alimento_dieta_grasas2.2<- grasas[alimento_dieta_grasas2.2, "kcal"]
    n_kcal_alimento_dieta_grasas2.2<-as.numeric(kcal_alimento_dieta_grasas2.2)
    porcion_grasas2.2<- readline(prompt = "Ingresa el peso en gr de grasas 2: ")
    n_porcion_grasas2.2<-as.numeric(porcion_grasas2.2)
    kcal_grasas2.2<- (n_kcal_alimento_dieta_grasas2.2*n_porcion_grasas2.2)/100
    kcal_grasas2.2
    kcal_totales_grasas2<- kcal_grasas2.1 + kcal_grasas2.2
    #Saca las proteinas 
    proteina_alimento_dieta_grasas2.1<-grasas[alimento_dieta_grasas2.1, "proteinas"]
    n_proteina_alimento_dieta_grasas2.1<- as.numeric(proteina_alimento_dieta_grasas2.1)
    n_proteina_grasas2.1<- (n_proteina_alimento_dieta_grasas2.1*n_porcion_grasas2.1)/100
    proteina_alimento_dieta_grasas2.2<-grasas[alimento_dieta_grasas2.2, "proteinas"]
    n_proteina_alimento_dieta_grasas2.2<- as.numeric(proteina_alimento_dieta_grasas2.2)
    n_proteina_grasas2.2<- (n_proteina_alimento_dieta_grasas2.2*n_porcion_grasas2.2)/100
    proteina_totales_grasas2<- n_proteina_grasas2.1 + n_proteina_grasas2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_grasas2.1<- grasas[alimento_dieta_grasas2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas2.1<-as.numeric(carbohidratos_alimento_dieta_grasas2.1)
    n_carbohidratos_grasas2.1<- (n_carbohidratos_alimento_dieta_grasas2.1*n_porcion_grasas2.1)/100
    carbohidratos_alimento_dieta_grasas2.2<- grasas[alimento_dieta_grasas2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas2.2<-as.numeric(carbohidratos_alimento_dieta_grasas2.2)
    n_carbohidratos_grasas2.2<- (n_carbohidratos_alimento_dieta_grasas2.2*n_porcion_grasas2.2)/100
    carbohidratos_totales_grasas2<- n_carbohidratos_grasas2.1 + n_carbohidratos_grasas2.2
    #Saca las grasas
    grasas_alimento_dieta_grasas2.1<- grasas[alimento_dieta_grasas2.1, "Grasas"]
    n_grasas_alimento_dieta_grasas2.1<- as.numeric(grasas_alimento_dieta_grasas2.1)
    n_grasas_grasas2.1<- (n_grasas_alimento_dieta_grasas2.1*n_porcion_grasas2.1)/100
    grasas_alimento_dieta_grasas2.2<- grasas[alimento_dieta_grasas2.2, "Grasas"]
    n_grasas_alimento_dieta_grasas2.2<- as.numeric(grasas_alimento_dieta_grasas2.2)
    n_grasas_grasas2.2<- (n_grasas_alimento_dieta_grasas2.2*n_porcion_grasas2.2)/100
    grasas_totales_grasas2<- n_grasas_grasas2.1 + n_grasas_grasas2.2
    return(print(paste("En grasas las kcal totales son", kcal_totales_grasas2, ",las proteinas totales en kcal son", proteina_totales_grasas2, ", los carbohidratos totales son", carbohidratos_totales_grasas2, " y las grasas totales son", grasas_totales_grasas2 )))
  }else if (cantidad_de_grasas==3){
    #Saca las kcal
    alimento_dieta_grasas3.1<-readline(prompt = "Ingresa grasas 3: ")
    kcal_alimento_dieta_grasas3.1<- grasas[alimento_dieta_grasas3.1, "kcal"]
    n_kcal_alimento_dieta_grasas3.1<-as.numeric(kcal_alimento_dieta_grasas3.1)
    porcion_grasas3.1<- readline(prompt = "Ingresa el peso en gr de grasas 1")
    n_porcion_grasas3.1<-as.numeric(porcion_grasas3.1)
    kcal_grasas3.1<- (n_kcal_alimento_dieta_grasas3.1*n_porcion_grasas3.1)/100
    kcal_grasas3.1
    alimento_dieta_grasas3.2<-readline(prompt = "Ingresa grasas 2: ")
    kcal_alimento_dieta_grasas3.2<- grasas[alimento_dieta_grasas3.2, "kcal"]
    n_kcal_alimento_dieta_grasas3.2<-as.numeric(kcal_alimento_dieta_grasas3.2)
    porcion_grasas3.2<- readline(prompt = "Ingresa el peso en gr de grasas 2: ")
    n_porcion_grasas3.2<-as.numeric(porcion_grasas3.2)
    kcal_grasas3.2<- (n_kcal_alimento_dieta_grasas3.2*n_porcion_grasas3.2)/100
    kcal_grasas3.2
    alimento_dieta_grasas3.3<-readline(prompt = "Ingresa grasas 3: ")
    kcal_alimento_dieta_grasas3.3<- grasas[alimento_dieta_grasas3.3, "kcal"]
    n_kcal_alimento_dieta_grasas3.3<-as.numeric(kcal_alimento_dieta_grasas3.3)
    porcion_grasas3.3<- readline(prompt = "Ingresa el peso en gr de grasas 3: ")
    n_porcion_grasas3.3<-as.numeric(porcion_grasas3.3)
    kcal_grasas3.3<- (n_kcal_alimento_dieta_grasas3.3*n_porcion_grasas3.3)/100
    kcal_grasas3.3
    kcal_totales_grasas3<- kcal_grasas3.1 + kcal_grasas3.2 + kcal_grasas3.3
    #Saca las proteinas 
    proteina_alimento_dieta_grasas3.1<-grasas[alimento_dieta_grasas3.1, "proteinas"]
    n_proteina_alimento_dieta_grasas3.1<- as.numeric(proteina_alimento_dieta_grasas3.1)
    n_proteina_grasas3.1<- (n_proteina_alimento_dieta_grasas3.1*n_porcion_grasas3.1)/100
    proteina_alimento_dieta_grasas3.2<-grasas[alimento_dieta_grasas3.2, "proteinas"]
    n_proteina_alimento_dieta_grasas3.2<- as.numeric(proteina_alimento_dieta_grasas3.2)
    n_proteina_grasas3.2<- (n_proteina_alimento_dieta_grasas3.2*n_porcion_grasas3.2)/100
    proteina_alimento_dieta_grasas3.3<-grasas[alimento_dieta_grasas3.3, "proteinas"]
    n_proteina_alimento_dieta_grasas3.3<- as.numeric(proteina_alimento_dieta_grasas3.3)
    n_proteina_grasas3.3<- (n_proteina_alimento_dieta_grasas3.3*n_porcion_grasas3.3)/100
    proteina_totales_grasas3<- n_proteina_grasas3.1 + n_proteina_grasas3.2 + n_proteina_grasas3.3
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_grasas3.1<- grasas[alimento_dieta_grasas3.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas3.1<-as.numeric(carbohidratos_alimento_dieta_grasas3.1)
    n_carbohidratos_grasas3.1<- (n_carbohidratos_alimento_dieta_grasas3.1*n_porcion_grasas3.1)/100
    carbohidratos_alimento_dieta_grasas3.2<- grasas[alimento_dieta_grasas3.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas3.2<-as.numeric(carbohidratos_alimento_dieta_grasas3.2)
    n_carbohidratos_grasas3.2<- (n_carbohidratos_alimento_dieta_grasas3.2*n_porcion_grasas3.2)/100
    carbohidratos_alimento_dieta_grasas3.3<- grasas[alimento_dieta_grasas3.3, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_grasas3.3<-as.numeric(carbohidratos_alimento_dieta_grasas3.3)
    n_carbohidratos_grasas3.3<- (n_carbohidratos_alimento_dieta_grasas3.3*n_porcion_grasas3.3)/100
    carbohidratos_totales_grasas3<- n_carbohidratos_grasas3.1 + n_carbohidratos_grasas3.2 + n_carbohidratos_grasas3.3
    #Saca las grasas
    grasas_alimento_dieta_grasas3.1<- grasas[alimento_dieta_grasas3.1, "Grasas"]
    n_grasas_alimento_dieta_grasas3.1<- as.numeric(grasas_alimento_dieta_grasas3.1)
    n_grasas_grasas3.1<- (n_grasas_alimento_dieta_grasas3.1*n_porcion_grasas3.1)/100
    grasas_alimento_dieta_grasas3.2<- grasas[alimento_dieta_grasas3.2, "Grasas"]
    n_grasas_alimento_dieta_grasas3.2<- as.numeric(grasas_alimento_dieta_grasas3.2)
    n_grasas_grasas3.2<- (n_grasas_alimento_dieta_grasas3.2*n_porcion_grasas3.2)/100
    grasas_alimento_dieta_grasas3.3<- grasas[alimento_dieta_grasas3.3, "Grasas"]
    n_grasas_alimento_dieta_grasas3.3<- as.numeric(grasas_alimento_dieta_grasas3.3)
    n_grasas_grasas3.3<- (n_grasas_alimento_dieta_grasas3.3*n_porcion_grasas3.3)/100
    grasas_totales_grasas3<- n_grasas_grasas3.1 + n_grasas_grasas3.2 + n_grasas_grasas3.3
    return(print(paste("En grasas las kcal totales son", kcal_totales_grasas3, ",las proteinas totales en kcal son", proteina_totales_grasas3, ", los carbohidratos totales son", carbohidratos_totales_grasas3, " y las grasas totales son", grasas_totales_grasas3 )))
  }
}
dieta_grasas()


####### AZUCAR #######
azucar

dieta_azucar<- function(){
  cantidad_de_azucar<- readline(prompt = "Ingresa el numero de azucar: ")
  cantidad_azucar<- as.numeric(cantidad_de_azucar)
  for (azucar_1 in 1){
  if(cantidad_azucar==1){
    #Saca las kcal
    alimento_dieta_azucar1<-readline(prompt = "Ingresa azucar 1: ")
    kcal_alimento_dieta_azucar1<- azucar[alimento_dieta_azucar1, "kcal"]
    n_kcal_alimento_dieta_azucar1<-as.numeric(kcal_alimento_dieta_azucar1)
    porcion_azucar1<- readline(prompt = "Ingresa el peso en gr de azucar: ")
    n_porcion_azucar1<-as.numeric(porcion_azucar1)
    kcal_totales_azucar1<- (n_kcal_alimento_dieta_azucar1*n_porcion_azucar1)/100
    kcal_totales_azucar1
    #Saca las proteinas 
    proteina_alimento_dieta_azucar1<-azucar[alimento_dieta_azucar1, "Proteínas"]
    n_proteina_alimento_dieta_azucar1<- as.numeric(proteina_alimento_dieta_azucar1)
    proteina_totales_azucar1<- (n_proteina_alimento_dieta_azucar1*n_porcion_azucar1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_azucar1<- azucar[alimento_dieta_azucar1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_azucar1<-as.numeric(carbohidratos_alimento_dieta_azucar1)
    carbohidratos_totales_azucar1<- (n_carbohidratos_alimento_dieta_azucar1*n_porcion_azucar1)/100
    
    
    
    
    ######## Se debería sacar la grasa ######
    #Saca las azucar
    azucar_alimento_dieta_azucar1<- azucar[alimento_dieta_azucar1, "azucar"]
    n_azucar_alimento_dieta_azucar1<- as.numeric(azucar_alimento_dieta_azucar1)
    azucar_totales_azucar1<- (n_azucar_alimento_dieta_azucar1*n_porcion_azucar1)/100
    azucar_1<- c(kcal_totales_azucar1, proteina_totales_azucar1, carbohidratos_totales_azucar1, )
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(azucar_1)<- nombres
    return(print(azucar_1))
  }else if (cantidad_de_azucar==2){
    #Saca las kcal
    alimento_dieta_azucar2.1<-readline(prompt = "Ingresa azucar 1: ")
    kcal_alimento_dieta_azucar2.1<- azucar[alimento_dieta_azucar2.1, "kcal"]
    n_kcal_alimento_dieta_azucar2.1<-as.numeric(kcal_alimento_dieta_azucar2.1)
    porcion_azucar2.1<- readline(prompt = "Ingresa el peso en gr de azucar 1")
    n_porcion_azucar2.1<-as.numeric(porcion_azucar2.1)
    kcal_azucar2.1<- (n_kcal_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    kcal_azucar2.1
    alimento_dieta_azucar2.2<-readline(prompt = "Ingresa azucar 2: ")
    kcal_alimento_dieta_azucar2.2<- azucar[alimento_dieta_azucar2.2, "kcal"]
    n_kcal_alimento_dieta_azucar2.2<-as.numeric(kcal_alimento_dieta_azucar2.2)
    porcion_azucar2.2<- readline(prompt = "Ingresa el peso en gr de azucar 2: ")
    n_porcion_azucar2.2<-as.numeric(porcion_azucar2.2)
    kcal_azucar2.2<- (n_kcal_alimento_dieta_azucar2.2*n_porcion_azucar2.2)/100
    kcal_azucar2.2
    kcal_totales_azucar2<- kcal_azucar2.1 + kcal_azucar2.2
    #Saca las proteinas 
    proteina_alimento_dieta_azucar2.1<-azucar[alimento_dieta_azucar2.1, "proteinas"]
    n_proteina_alimento_dieta_azucar2.1<- as.numeric(proteina_alimento_dieta_azucar2.1)
    n_proteina_azucar2.1<- (n_proteina_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    proteina_alimento_dieta_azucar2.2<-azucar[alimento_dieta_azucar2.2, "proteinas"]
    n_proteina_alimento_dieta_azucar2.2<- as.numeric(proteina_alimento_dieta_azucar2.2)
    n_proteina_azucar2.2<- (n_proteina_alimento_dieta_azucar2.2*n_porcion_azucar2.2)/100
    proteina_totales_azucar2<- n_proteina_azucar2.1 + n_proteina_azucar2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_azucar2.1<- azucar[alimento_dieta_azucar2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_azucar2.1<-as.numeric(carbohidratos_alimento_dieta_azucar2.1)
    n_carbohidratos_azucar2.1<- (n_carbohidratos_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    carbohidratos_alimento_dieta_azucar2.2<- azucar[alimento_dieta_azucar2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_azucar2.2<-as.numeric(carbohidratos_alimento_dieta_azucar2.2)
    n_carbohidratos_azucar2.2<- (n_carbohidratos_alimento_dieta_azucar2.2*n_porcion_azucar2.2)/100
    carbohidratos_totales_azucar2<- n_carbohidratos_azucar2.1 + n_carbohidratos_azucar2.2
    
    
    ######Aquí también :( ######
    #Saca las azucar
    azucar_alimento_dieta_azucar2.1<- azucar[alimento_dieta_azucar2.1, "azucar"]
    n_azucar_alimento_dieta_azucar2.1<- as.numeric(azucar_alimento_dieta_azucar2.1)
    n_azucar_azucar2.1<- (n_azucar_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    azucar_alimento_dieta_azucar2.2<- azucar[alimento_dieta_azucar2.2, "azucar"]
    n_azucar_alimento_dieta_azucar2.2<- as.numeric(azucar_alimento_dieta_azucar2.2)
    n_azucar_azucar2.2<- (n_azucar_alimento_dieta_azucar2.2*n_porcion_azucar2.2)/100
    azucar_totales_azucar2<- n_azucar_azucar2.1 + n_azucar_azucar2.2
    return(print(paste("En azucar las kcal totales son", kcal_totales_azucar2, ",las proteinas totales en kcal son", proteina_totales_azucar2, ", los carbohidratos totales son", carbohidratos_totales_azucar2, " y las azucar totales son", azucar_totales_azucar2 )))
  }
  }
}
dieta_azucar()




#Esto me pone las kcal segun la comida :)
#Ahorita solo esta lo de origen animal pero el chiste es poner todos los grupos 
comidas<- c("Desayuno", "Colación 1", "Comida", "Colación 2", "Cena")
comida<-NULL
for(i in comidas){
  comida[i]<-dieta_origen_animal()
              dieta_fruta()
              dieta_verduras()
              dieta_leguminosas()
              dieta_grasas_con_proteina()
              dieta_grasas()
              dieta_azucar()
}
comida 
