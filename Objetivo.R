#Para calcular las kcal, proteínas, carbohidratos y grasas que se consumen diario se le pide que llene lo que se le pide. 
#Se recomienda imprimir la base de datos de origen animal para saber cuales alimentos se encuentran en esta y como se deben de escribir.
alimento_origen_animal

####FORMA CON IF ELSE####
cantidad_de_oa<- readline(prompt = "Ingresa el numero de alimentos de origen animal que consumes en el desayuno: ")
2
dieta_origen_animal<- function(){
  if(cantidad_de_oa==1){
    alimento_dieta_oa1<-readline(prompt = "Ingresa alimento de origen animal: ")
    kcal_alimento_dieta_oa<- alimento_origen_animal[alimento_dieta_oa1, "kcal"]
    as.numeric(kcal_alimento_dieta_oa1)
    return(print(paste("Las kcal son", kcal_alimento_dieta_oa1)))
  }else if (cantidad_de_oa==2){
    alimento_dieta_oa2.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "kcal"]
    as.numeric(kcal_alimento_dieta_oa2.1)
    alimento_dieta_oa2.2<-readline(prompt = "Ingresa alimento de origen animal 2: ")
    kcal_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "kcal"]
    as.numeric(kcal_alimento_dieta_oa2.2)
    suma_kcal_alimento_oa<- kcal_alimento_dieta_oa2.1 + kcal_alimento_dieta_oa2.2
    return(print(paste("Las kcal son: ", suma_kcal_alimento_oa)))  
  } else if (cantidad_de_oa==3){
    alimento_dieta_oa3.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "kcal"]
    as.numeric(kcal_alimento_dieta_oa3.1)
    alimento_dieta_oa3.2<-readline(prompt = "Ingresa alimento de origen animal 2: ")
    kcal_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "kcal"]
    as.numeric(kcal_alimento_dieta_oa3.2)
    alimento_dieta_oa3.3<-readline(prompt = "Ingresa alimento de origen animal 3: ")
    kcal_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "kcal"]
    as.numeric(kcal_alimento_dieta_oa3.3)
    suma_kcal_alimento_oa<- kcal_alimento_dieta_oa3.1 + kcal_alimento_dieta_oa3.2 + kcal_alimento_dieta_oa3.3
    return(print(paste("Las kcal son: ", suma_kcal_alimento_oa)))  
  }
}
dieta_origen_animal()
Pescado
Pulpo
Salchicha

######FORMA CON FOR#####
dieta_origen_animal<- function(){
  for(alimento_dieta_oa in cantidad_de_oa)
    alimento_dieta_oa<-readline(prompt = "Ingresa alimento de origen animal: ")
  kcal_alimento_dieta_oa<- alimento_origen_animal[alimento_dieta_oa, "kcal"]
  as.numeric(kcal_alimento_dieta_oa)
  return(print(paste("Las kcal son: ", kcal_alimento_dieta_oa)))
}
dieta_origen_animal()
Pulpo, Pescado
