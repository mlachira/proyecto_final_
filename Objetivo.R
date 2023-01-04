#Para calcular las kcal, proteínas, carbohidratos y grasas que se consumen diario se le pide que llene lo que se le pide. 
#Se recomienda imprimir la base de datos de origen animal para saber cuales alimentos se encuentran en esta y como se deben de escribir.
alimento_origen_animal

cantidad_de_oa<- readline(prompt = "Ingresa el numero de alimentos de origen animal que consumes en el desayuno: ")
2

dieta_origen_animal<- function(){
  if(cantidad_de_oa==1){
    alimento_dieta_oa1<-readline(prompt = "Ingresa alimento de origen animal 1")
    kcal_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "kcal"]
    n_kcal_alimento_dieta_oa1<-as.numeric(kcal_alimento_dieta_oa1)
    class(n_kcal_alimento_dieta_oa1)
    porcion_alimento1<- readline(prompt = "Ingresa el peso en gr")
    n_porcion_alimento1<-as.numeric(porcion_alimento1)
    class(n_porcion_alimento1)
    kcal_totales_oa1<- (n_kcal_alimento_dieta_oa1*n_porcion_alimento1)/100
    kcal_totales_oa1
    return(print(paste("Las kcal totales son", kcal_totales_oa)))
  }else if (cantidad_de_oa==2){
    alimento_dieta_oa2.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "kcal"]
    n_kcal_alimento_dieta_oa2.1<-as.numeric(kcal_alimento_dieta_oa2.1)
    class(n_kcal_alimento_dieta_oa2.1)
    porcion_alimento2.1<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 1")
    n_porcion_alimento2.1<-as.numeric(porcion_alimento2.1)
    class(n_porcion_alimento2.1)
    kcal_oa2.1<- (n_kcal_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100
    kcal_oa2.1
    alimento_dieta_oa2.2<-readline(prompt = "Ingresa alimento de origen animal 2")
    kcal_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "kcal"]
    n_kcal_alimento_dieta_oa2.2<-as.numeric(kcal_alimento_dieta_oa2.2)
    class(n_kcal_alimento_dieta_oa2.2)
    porcion_alimento2.2<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 2")
    n_porcion_alimento2.2<-as.numeric(porcion_alimento2.2)
    class(n_porcion_alimento2.2)
    kcal_oa2.2<- (n_kcal_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100
    kcal_oa2.2
    kcal_totales_oa2<- kcal_oa2.1+kcal_oa2.2
    kcal_totales_oa2
    return(print(paste("Las kcal son", kcal_totales_oa2)))
  } else if (cantidad_de_oa==3){
    alimento_dieta_oa3.1<-readline(prompt = "Ingresa alimento de origen animal 1: ")
    kcal_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "kcal"]
    n_kcal_alimento_dieta_oa3.1<-as.numeric(kcal_alimento_dieta_oa3.1)
    class(n_kcal_alimento_dieta_oa3.1)
    porcion_alimento3.1<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 1")
    n_porcion_alimento3.1<-as.numeric(porcion_alimento3.1)
    class(n_porcion_alimento3.1)
    kcal_oa3.1<- (n_kcal_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100
    kcal_oa3.1
    alimento_dieta_oa3.2<-readline(prompt = "Ingresa alimento de origen animal 2")
    kcal_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "kcal"]
    n_kcal_alimento_dieta_oa3.2<-as.numeric(kcal_alimento_dieta_oa3.2)
    class(n_kcal_alimento_dieta_oa3.2)
    porcion_alimento3.2<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 2")
    n_porcion_alimento3.2<-as.numeric(porcion_alimento3.2)
    class(n_porcion_alimento3.2)
    kcal_oa3.2<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100
    kcal_oa3.2
    alimento_dieta_oa3.3<-readline(prompt = "Ingresa alimento de origen animal 3")
    kcal_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "kcal"]
    n_kcal_alimento_dieta_oa3.3<-as.numeric(kcal_alimento_dieta_oa3.3)
    class(n_kcal_alimento_dieta_oa3.3)
    porcion_alimento3.3<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 3")
    n_porcion_alimento3.3<-as.numeric(porcion_alimento3.3)
    class(n_porcion_alimento3.3)
    kcal_oa3.3<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.3)/100
    kcal_oa3.2
    kcal_totales_oa3<- kcal_oa3.1+kcal_oa3.2+kcal_oa3.3
    kcal_totales_oa3
    return(print(paste("Las kcal son", kcal_totales_oa3)))
  }
}
dieta_origen_animal()


