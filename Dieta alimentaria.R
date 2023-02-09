#Para calcular las kcal, proteinas, carbohidratos y grasas que se consumen diario se le pide al usuario que ingrese los siguientes datos:
  #Numero de alimentos de cada grupo que consumio.
  #Nombre del alimento.
  #Peso en gramos de cada alimento.


### NOTA: se ejecutaron las mismas funciones para todos los tipos de alimentos, como el primero que se describe a continuación (alimentos de origen animal). De este modo, es el unico comentado ya que los comentarios son los mismos para todas las otras bases, donde lo unico que cambia son los nombres###

###### ALIMENTO ORIGEN ANIMAL ######

#Se recomienda imprimir la base de datos de origen animal para saber cuales alimentos se encuentran en esta y como se deben de escribir.
#Para imprimirla:
alimento_origen_animal

#El maximo de alimentos que se pueden introducir en este grupo, es de 3
#Se uso "function" asignado a un objeto para encapsular las funciones que usamos.
#Cabe aclarar que la base de datos considera el numero de kcal, proteinas, carbohidratos y grasas para 100 gramos, con el ajuste que se realiza para los gramos que el usuario intruduce, explicado dentro de la funcion

prueba_alimentos<- function(){
  cantidad_de_oa<- readline(prompt = "Ingresa el numero de alimentos de origen animal: ") #se arroja este texto en la consola para que el usuario conteste.
  cantidad_oa<- as.numeric(cantidad_de_oa) #para que considere como variable numerica el numero de alimentos introducido
  #Si ingresa solo un alimento:
  if(cantidad_oa==1){
    #Saca las kcal
    alimento_dieta_oa1<-readline(prompt = "Ingresa el alimento de origen animal 1: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto.
    n_kcal_alimento_dieta_oa1<-as.numeric(kcal_alimento_dieta_oa1) #para que considere como variable numerica el objeto de arriba (las kcal).
    porcion_alimento1<- readline(prompt = "Ingresa su peso en gramos: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento1<-as.numeric(porcion_alimento1) #para que considere como variable numerica el objeto de arriba (los gramos).
    kcal_totales_oa1 <- (n_kcal_alimento_dieta_oa1*n_porcion_alimento1)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_totales_oa1 #lo imprime
    #Saca las proteinas 
    proteina_alimento_dieta_oa1<-alimento_origen_animal[alimento_dieta_oa1, "Proteinas"] #pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto.
    n_proteina_alimento_dieta_oa1<- as.numeric(proteina_alimento_dieta_oa1) #para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa1<- (n_proteina_alimento_dieta_oa1*n_porcion_alimento1)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa1<-as.numeric(carbohidratos_alimento_dieta_oa1) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa1<- (n_carbohidratos_alimento_dieta_oa1*n_porcion_alimento1)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
    #Saca las grasas
    grasas_alimento_dieta_oa1<- alimento_origen_animal[alimento_dieta_oa1, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa1<- as.numeric(grasas_alimento_dieta_oa1)#para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa1<- (n_grasas_alimento_dieta_oa1*n_porcion_alimento1)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    alimento<-c(kcal_totales_oa1, n_proteina_totales_oa1, n_carbohidratos_totales_oa1, n_grasas_totales_oa1 ) #concatena las kcal, proteinas, carbohidratos y grasas obtenidas arriba.
    nombres<- c("kcal","proteina","carbohidratos","grasas") #se crea un objeto con los nombres de kcal, proteina, carbohidratos y grasas.
    names(alimento)<-nombres #el objeto "nombres" es asignado al de "alimento"
    return(print(alimento)) #que imprima "alimento", lo cual arroja los numeros obtenidos y sus respectivos nombres (kcal, proteinas, carbohidratos y grasas).
  }else if (cantidad_oa==2){   #esto se ejecuta si se ingresan dos alimentos
    #Saca las kcal
      #Del alimento 1
    alimento_dieta_oa2.1<-readline(prompt = "Ingresa alimento de origen animal 1: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto para el alimento 1.
    n_kcal_alimento_dieta_oa2.1<-as.numeric(kcal_alimento_dieta_oa2.1)  #para que considere como variable numerica el objeto de arriba (las kcal).
    porcion_alimento2.1<- readline(prompt = "Ingresa el peso en gramos del alimento de origen animal 1: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento2.1<-as.numeric(porcion_alimento2.1) #para que considere como variable numerica el objeto de arriba (los gramos).
    kcal_oa2.1<- (n_kcal_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_oa2.1 #lo imprime
      #Del alimento 2
    alimento_dieta_oa2.2<-readline(prompt = "Ingresa alimento de origen animal 2: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto para el alimento 2.
    n_kcal_alimento_dieta_oa2.2<-as.numeric(kcal_alimento_dieta_oa2.2)  #para que considere como variable numerica el objeto de arriba (las kcal).
    porcion_alimento2.2<- readline(prompt = "Ingresa el peso en gramos del alimento de origen animal 2: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento2.2<-as.numeric(porcion_alimento2.2) #para que considere como variable numerica el objeto de arriba (los gramos).
    kcal_oa2.2<- (n_kcal_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_oa2.2 #lo imprime
    kcal_totales_oa2<- kcal_oa2.1+kcal_oa2.2 #suma las kcal del alimento 1 y del alimento 2.
    kcal_totales_oa2 #lo imprime
    #Saca la proteina
      #Del alimento 1
    proteina_alimento_dieta_oa2.1<-alimento_origen_animal[alimento_dieta_oa2.1, "Proteinas"] #pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto para el alimento 1.
    n_proteina_alimento_dieta_oa2.1<- as.numeric(proteina_alimento_dieta_oa2.1) #para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa2.1<- (n_proteina_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    proteina_alimento_dieta_oa2.2<-alimento_origen_animal[alimento_dieta_oa2.2, "Proteinas"]#pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto para el alimento 2.
    n_proteina_alimento_dieta_oa2.2<- as.numeric(proteina_alimento_dieta_oa2.2)#para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa2.2<- (n_proteina_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    proteina_totales_oa2<- n_proteina_totales_oa2.1 + n_proteina_totales_oa2.2 #suma las proteinas de ambos alimentos.
    #Saca los carbohidratos
      #Del alimento 1
    carbohidratos_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa2.1<-as.numeric(carbohidratos_alimento_dieta_oa2.1) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa2.1<- (n_carbohidratos_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    carbohidratos_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa2.2<-as.numeric(carbohidratos_alimento_dieta_oa2.2) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa2.2<- (n_carbohidratos_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
    carbohidrato_totales_oa2<- n_carbohidratos_totales_oa2.1 + n_carbohidratos_totales_oa2.2 #suma los carbohidratos de ambos alimentos
    #Saca las grasas
      #Del alimento 1
    grasas_alimento_dieta_oa2.1<- alimento_origen_animal[alimento_dieta_oa2.1, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa2.1<- as.numeric(grasas_alimento_dieta_oa2.1) #para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa2.1<- (n_grasas_alimento_dieta_oa2.1*n_porcion_alimento2.1)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    grasas_alimento_dieta_oa2.2<- alimento_origen_animal[alimento_dieta_oa2.2, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa2.2<- as.numeric(grasas_alimento_dieta_oa2.2) #para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa2.2<- (n_grasas_alimento_dieta_oa2.2*n_porcion_alimento2.2)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    grasas_totales_oa2<- n_grasas_totales_oa2.1 + n_grasas_totales_oa2.2 #suma las grasas de ambos alimentos
    alimento<- c(kcal_totales_oa2, proteina_totales_oa2, carbohidrato_totales_oa2, grasas_totales_oa2) #concatena las kcal, proteinas, carbohidratos y grasas obtenidas
    nombres<- c("kcal","proteina","carbohidratos","grasas") #se crea un objeto con los nombres de kcal, proteina, carbohidratos y grasas.
    names(alimento)<-nombres #el objeto "nombres" es asignado al de "alimento"
    return(print(alimento)) #que imprima "alimento", lo cual arroja los numeros obtenidos y sus respectivos nombres (kcal, proteinas, carbohidratos y grasas).
  } else if (cantidad_oa==3){ #esto se ejecuta si se ingresan 3 alimentos
    #Saca las kcal
      #Del alimento 1
    alimento_dieta_oa3.1<-readline(prompt = "Ingresa alimento de origen animal 1: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto.
    n_kcal_alimento_dieta_oa3.1<-as.numeric(kcal_alimento_dieta_oa3.1) #para que considere como variable numerica el objeto de arriba (las kcal).
    class(n_kcal_alimento_dieta_oa3.1)
    porcion_alimento3.1<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 1: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento3.1<-as.numeric(porcion_alimento3.1) #para que considere como variable numerica el objeto de arriba (los gramos).
    class(n_porcion_alimento3.1)
    kcal_oa3.1<- (n_kcal_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_oa3.1 #lo imprime
      #Del alimento 2
    alimento_dieta_oa3.2<-readline(prompt = "Ingresa alimento de origen animal 2: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto.
    n_kcal_alimento_dieta_oa3.2<-as.numeric(kcal_alimento_dieta_oa3.2) #para que considere como variable numerica el objeto de arriba (las kcal).
    class(n_kcal_alimento_dieta_oa3.2)
    porcion_alimento3.2<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 2: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento3.2<-as.numeric(porcion_alimento3.2) #para que considere como variable numerica el objeto de arriba (los gramos).
    class(n_porcion_alimento3.2)
    kcal_oa3.2<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_oa3.2 #lo imprime
      #Del alimento 3
    alimento_dieta_oa3.3<-readline(prompt = "Ingresa alimento de origen animal 3: ") #se arroja este texto en la consola para que el usuario conteste.
    kcal_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "kcal"] #pide que de la base de datos, seleccione las kcal del alimento que se introdujo arriba y eso lo asigna a un objeto.
    n_kcal_alimento_dieta_oa3.3<-as.numeric(kcal_alimento_dieta_oa3.3) #para que considere como variable numerica el objeto de arriba (las kcal).
    class(n_kcal_alimento_dieta_oa3.3)
    porcion_alimento3.3<- readline(prompt = "Ingresa el peso en gr del alimento de origen animal 3: ") #se arroja este texto en la consola para que el usuario conteste.
    n_porcion_alimento3.3<-as.numeric(porcion_alimento3.3) #para que considere como variable numerica el objeto de arriba (los gramos).
    class(n_porcion_alimento3.3)
    kcal_oa3.3<- (n_kcal_alimento_dieta_oa3.2*n_porcion_alimento3.3)/100 #multiplica las kcal del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de kcal de la base es para 100g, haciendose una regla de 3 para el ajuste.
    kcal_oa3.3 #lo imprime
    kcal_totales_oa3<- kcal_oa3.1+kcal_oa3.2+kcal_oa3.3 #Suma todas las kcal de los 3 alimentos
    kcal_totales_oa3 #lo imprime
    #Saca las proteinas
      #Del alimento 1
    proteina_alimento_dieta_oa3.1<-alimento_origen_animal[alimento_dieta_oa3.1, "Proteinas"] #pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto para el alimento 1
    n_proteina_alimento_dieta_oa3.1<- as.numeric(proteina_alimento_dieta_oa3.1) #para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa3.1<- (n_proteina_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    proteina_alimento_dieta_oa3.2<-alimento_origen_animal[alimento_dieta_oa3.2, "Proteinas"] #pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto para el alimento 2
    n_proteina_alimento_dieta_oa3.2<- as.numeric(proteina_alimento_dieta_oa3.2) #para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa3.2<- (n_proteina_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 3
    proteina_alimento_dieta_oa3.3<-alimento_origen_animal[alimento_dieta_oa3.3, "Proteinas"] #pide que de la base de datos, seleccione las proteinas del alimento que se introdujo y eso lo asigna a un objeto para el alimento 3.
    n_proteina_alimento_dieta_oa3.3<- as.numeric(proteina_alimento_dieta_oa3.3) #para que considere como variable numerica el objeto de arriba (las proteinas).
    n_proteina_totales_oa3.3<- (n_proteina_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100 #multiplica las proteinas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de proteinas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    proteina_totales_oa3<- n_proteina_totales_oa3.1 + n_proteina_totales_oa3.2 + n_proteina_totales_oa3.3 #suma todas las proteinas de los 3 alimentos
    #Saca los carbohidratos
      #Del alimento 1
    carbohidratos_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa3.1<-as.numeric(carbohidratos_alimento_dieta_oa3.1) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa3.1<- (n_carbohidratos_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    carbohidratos_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa3.2<-as.numeric(carbohidratos_alimento_dieta_oa3.2) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa3.2<- (n_carbohidratos_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 3
    carbohidratos_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "Carbohidratos"] #pide que de la base de datos, seleccione los carbohidratos del alimento que se introdujo y eso lo asigna a un objeto.
    n_carbohidratos_alimento_dieta_oa3.3<-as.numeric(carbohidratos_alimento_dieta_oa3.3) #para que considere como variable numerica el objeto de arriba (los carbohidratos).
    n_carbohidratos_totales_oa3.3<- (n_carbohidratos_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100 #multiplica los carbohidratos del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de carbohidratos de la base es para 100g, haciendose una regla de 3 para el ajuste.
    carbohidrato_totales_oa3<- n_carbohidratos_totales_oa3.1 + n_carbohidratos_totales_oa3.2 + n_carbohidratos_totales_oa3.3
    #Saca las grasas
      #Del alimento 1
    grasas_alimento_dieta_oa3.1<- alimento_origen_animal[alimento_dieta_oa3.1, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa3.1<- as.numeric(grasas_alimento_dieta_oa3.1) #para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa3.1<- (n_grasas_alimento_dieta_oa3.1*n_porcion_alimento3.1)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 2
    grasas_alimento_dieta_oa3.2<- alimento_origen_animal[alimento_dieta_oa3.2, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa3.2<- as.numeric(grasas_alimento_dieta_oa3.2) #para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa3.2<- (n_grasas_alimento_dieta_oa3.2*n_porcion_alimento3.2)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
      #Del alimento 3
    grasas_alimento_dieta_oa3.3<- alimento_origen_animal[alimento_dieta_oa3.3, "Grasas"] #pide que de la base de datos, seleccione las grasas del alimento que se introdujo y eso lo asigna a un objeto.
    n_grasas_alimento_dieta_oa3.3<- as.numeric(grasas_alimento_dieta_oa3.3) #para que considere como variable numerica el objeto de arriba (las grasas).
    n_grasas_totales_oa3.3<- (n_grasas_alimento_dieta_oa3.3*n_porcion_alimento3.3)/100 #multiplica las grasas del alimento por su peso y lo divide entre 100, puesto que se considera que el numero de grasas de la base es para 100g, haciendose una regla de 3 para el ajuste.
    grasas_totales_oa3<- n_grasas_totales_oa3.1 + n_grasas_totales_oa3.2 + n_grasas_totales_oa3.3 #suma las grasas de los 3 alimentos
    alimento<- c(kcal_totales_oa3, proteina_totales_oa3, carbohidrato_totales_oa3, grasas_totales_oa3) #concatena las kcal, proteinas, carbohidratos y grasas obtenidas
    nombres<- c("kcal","proteina","carbohidratos","grasas") #se crea un objeto con los nombres de kcal, proteina, carbohidratos y grasas.
    names(alimento)<-nombres #el objeto "nombres" es asignado al de "alimento"
    return(print(alimento)) #que imprima "alimento", lo cual arroja los numeros obtenidos y sus respectivos nombres (kcal, proteinas, carbohidratos y grasas).
  }
}


#######Fruta ###########
prueba_fruta<-function(){
  cantidad_de_fruta<- readline(prompt = "Ingresa el numero de frutas: ")
  cantidad_fruta<- as.numeric(cantidad_de_fruta)
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
    proteina_alimento_dieta_fruta1<-frutas[alimento_dieta_fruta1, "Proteinas"]
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
    proteina_alimento_dieta_fruta2.1<-frutas[alimento_dieta_fruta2.1, "Proteinas"]
    n_proteina_alimento_dieta_fruta2.1<- as.numeric(proteina_alimento_dieta_fruta2.1)
    n_proteina_totales_fruta2.1<- (n_proteina_alimento_dieta_fruta2.1*n_porcion_fruta2.1)/100
    proteina_alimento_dieta_fruta2.2<-frutas[alimento_dieta_fruta2.2, "Proteinas"]
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
    proteina_alimento_dieta_fruta3.1<-frutas[alimento_dieta_fruta3.1, "Proteinas"]
    n_proteina_alimento_dieta_fruta3.1<- as.numeric(proteina_alimento_dieta_fruta3.1)
    n_proteina_totales_fruta3.1<- (n_proteina_alimento_dieta_fruta3.1*n_porcion_fruta3.1)/100
    proteina_alimento_dieta_fruta3.2<-frutas[alimento_dieta_fruta3.2, "Proteinas"]
    n_proteina_alimento_dieta_fruta3.2<- as.numeric(proteina_alimento_dieta_fruta3.2)
    n_proteina_totales_fruta3.2<- (n_proteina_alimento_dieta_fruta3.2*n_porcion_fruta3.2)/100
    proteina_alimento_dieta_fruta3.3<-frutas[alimento_dieta_fruta3.3, "Proteinas"]
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
    proteina_alimento_dieta_fruta4.1<-frutas[alimento_dieta_fruta4.1, "Proteinas"]
    n_proteina_alimento_dieta_fruta4.1<- as.numeric(proteina_alimento_dieta_fruta4.1)
    n_proteina_totales_fruta4.1<- (n_proteina_alimento_dieta_fruta4.1*n_porcion_fruta4.1)/100
    proteina_alimento_dieta_fruta4.2<-frutas[alimento_dieta_fruta4.2, "Proteinas"]
    n_proteina_alimento_dieta_fruta4.2<- as.numeric(proteina_alimento_dieta_fruta4.2)
    n_proteina_totales_fruta4.2<- (n_proteina_alimento_dieta_fruta4.2*n_porcion_fruta4.2)/100
    proteina_alimento_dieta_fruta4.3<-frutas[alimento_dieta_fruta4.3, "Proteinas"]
    n_proteina_alimento_dieta_fruta4.3<- as.numeric(proteina_alimento_dieta_fruta4.3)
    n_proteina_totales_fruta4.3<- (n_proteina_alimento_dieta_fruta4.3*n_porcion_fruta4.3)/100
    proteina_alimento_dieta_fruta4.4<-frutas[alimento_dieta_fruta4.4, "Proteinas"]
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
    proteina_alimento_dieta_fruta5.1<-frutas[alimento_dieta_fruta5.1, "Proteinas"]
    n_proteina_alimento_dieta_fruta5.1<- as.numeric(proteina_alimento_dieta_fruta5.1)
    n_proteina_totales_fruta5.1<- (n_proteina_alimento_dieta_fruta5.1*n_porcion_fruta5.1)/100
    proteina_alimento_dieta_fruta5.2<-frutas[alimento_dieta_fruta5.2, "Proteinas"]
    n_proteina_alimento_dieta_fruta5.2<- as.numeric(proteina_alimento_dieta_fruta5.2)
    n_proteina_totales_fruta5.2<- (n_proteina_alimento_dieta_fruta5.2*n_porcion_fruta5.2)/100
    proteina_alimento_dieta_fruta5.3<-frutas[alimento_dieta_fruta5.3, "Proteinas"]
    n_proteina_alimento_dieta_fruta5.3<- as.numeric(proteina_alimento_dieta_fruta5.3)
    n_proteina_totales_fruta5.3<- (n_proteina_alimento_dieta_fruta5.3*n_porcion_fruta5.3)/100
    proteina_alimento_dieta_fruta5.4<-frutas[alimento_dieta_fruta5.4, "Proteinas"]
    n_proteina_alimento_dieta_fruta5.4<- as.numeric(proteina_alimento_dieta_fruta5.4)
    n_proteina_totales_fruta5.4<- (n_proteina_alimento_dieta_fruta5.4*n_porcion_fruta5.4)/100
    proteina_alimento_dieta_fruta5.5<-frutas[alimento_dieta_fruta5.5, "Proteinas"]
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
    return(print(fruta))}
}



######### VERDURAS #######
verduras
prueba_verdura<-function(){
  cantidad_de_verd <- readline(prompt = "Ingresa el numero de verduras: ")
  cantidad_verduras<- as.numeric(cantidad_de_verd)
  if(cantidad_verduras == 1){
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
    verdura<- c(kcal_totales_verd1, n_proteina_totales_verd1, n_carbohidratos_totales_verd1, n_grasas_totales_verd1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(verdura)<- nombres
    return(print(verdura))
  }else if (cantidad_verduras == 2){
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
    proteina_alimento_dieta_verd2.1 <- verduras[alimento_dieta_verd2.1, "Proteinas"]
    n_proteina_alimento_dieta_verd2.1<- as.numeric(proteina_alimento_dieta_verd2.1)
    n_proteina_totales_verd2.1<- (n_proteina_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    proteina_alimento_dieta_verd2.2<-verduras[alimento_dieta_verd2.2, "Proteinas"]
    n_proteina_alimento_dieta_verd2.2<- as.numeric(proteina_alimento_dieta_verd2.2)
    n_proteina_totales_verd2.2<- (n_proteina_alimento_dieta_verd2.2*n_porcion_verd2.2)/100
    proteina_totales_verd2<- n_proteina_totales_verd2.1 + n_proteina_totales_verd2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_verd2.1<- verduras[alimento_dieta_verd2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_verd2.1<-as.numeric(carbohidratos_alimento_dieta_verd2.1)
    n_carbohidratos_totales_verd2.1<- (n_carbohidratos_alimento_dieta_verd2.1*n_porcion_verd2.1)/100
    carbohidratos_alimento_dieta_verd2.2<- verduras[alimento_dieta_verd2.2, "Carbohidratos"]
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
    verdura<- c(kcal_totales_verd2, proteina_totales_verd2, carbohidrato_totales_verd2, grasas_totales_verd2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(verdura)<- nombres
    return(print(verdura))
  } else if (cantidad_verduras==3){
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
    proteina_alimento_dieta_verd3.1<-verduras[alimento_dieta_verd3.1, "Proteinas"]
    n_proteina_alimento_dieta_verd3.1<- as.numeric(proteina_alimento_dieta_verd3.1)
    n_proteina_totales_verd3.1<- (n_proteina_alimento_dieta_verd3.1*n_porcion_verd3.1)/100
    proteina_alimento_dieta_verd3.2<-verduras[alimento_dieta_verd3.2, "Proteinas"]
    n_proteina_alimento_dieta_verd3.2<- as.numeric(proteina_alimento_dieta_verd3.2)
    n_proteina_totales_verd3.2<- (n_proteina_alimento_dieta_verd3.2*n_porcion_verd3.2)/100
    proteina_alimento_dieta_verd3.3<-verduras[alimento_dieta_verd3.3, "Proteinas"]
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
    verdura<- c(kcal_totales_verd3, proteina_totales_verd3, carbohidrato_totales_verd3, grasas_totales_verd3)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(verdura)<- nombres
    return(print(verdura))
    } else if (cantidad_verduras==4){
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
    proteina_alimento_dieta_verd4.1<-verduras[alimento_dieta_verd4.1, "Proteinas"]
    n_proteina_alimento_dieta_verd4.1<- as.numeric(proteina_alimento_dieta_verd4.1)
    n_proteina_totales_verd4.1<- (n_proteina_alimento_dieta_verd4.1*n_porcion_verd4.1)/100
    proteina_alimento_dieta_verd4.2<-verduras[alimento_dieta_verd4.2, "Proteinas"]
    n_proteina_alimento_dieta_verd4.2<- as.numeric(proteina_alimento_dieta_verd4.2)
    n_proteina_totales_verd4.2<- (n_proteina_alimento_dieta_verd4.2*n_porcion_verd4.2)/100
    proteina_alimento_dieta_verd4.3<-verduras[alimento_dieta_verd4.3, "Proteinas"]
    n_proteina_alimento_dieta_verd4.3<- as.numeric(proteina_alimento_dieta_verd4.3)
    n_proteina_totales_verd4.3<- (n_proteina_alimento_dieta_verd4.3*n_porcion_verd4.3)/100
    proteina_alimento_dieta_verd4.4<-verduras[alimento_dieta_verd4.4, "Proteinas"]
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
    verdura<- c(kcal_totales_verd4, proteina_totales_verd4, carbohidrato_totales_verd4 ,grasas_totales_verd4)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(verdura)<- nombres
   return(print(verdura))
    } else if (cantidad_verduras==5){
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
    proteina_alimento_dieta_verd5.1<-verduras[alimento_dieta_verd5.1, "Proteinas"]
    n_proteina_alimento_dieta_verd5.1<- as.numeric(proteina_alimento_dieta_verd5.1)
    n_proteina_totales_verd5.1<- (n_proteina_alimento_dieta_verd5.1*n_porcion_verd5.1)/100
    proteina_alimento_dieta_verd5.2<-verduras[alimento_dieta_verd5.2, "Proteinas"]
    n_proteina_alimento_dieta_verd5.2<- as.numeric(proteina_alimento_dieta_verd5.2)
    n_proteina_totales_verd5.2<- (n_proteina_alimento_dieta_verd5.2*n_porcion_verd5.2)/100
    proteina_alimento_dieta_verd5.3<-verduras[alimento_dieta_verd5.3, "Proteinas"]
    n_proteina_alimento_dieta_verd5.3<- as.numeric(proteina_alimento_dieta_verd5.3)
    n_proteina_totales_verd5.3<- (n_proteina_alimento_dieta_verd5.3*n_porcion_verd5.3)/100
    proteina_alimento_dieta_verd5.4<-verduras[alimento_dieta_verd5.4, "Proteinas"]
    n_proteina_alimento_dieta_verd5.4<- as.numeric(proteina_alimento_dieta_verd5.4)
    n_proteina_totales_verd5.4<- (n_proteina_alimento_dieta_verd5.4*n_porcion_verd5.4)/100
    proteina_alimento_dieta_verd5.5<-verduras[alimento_dieta_verd5.5, "Proteinas"]
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
    verdura<- c(kcal_totales_verd5, proteina_totales_verd5, carbohidrato_totales_verd5, grasas_totales_verd5)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(verdura)<- nombres
    return(print(verdura))
    }
}



######## LEGUMINOSAS #######
leguminosas
prueba_leguminosa<- function(){
  cantidad_de_leguminosas<- readline(prompt = "Ingresa el numero de leguminosas: ")
  cantidad_leguminosas<- as.numeric(cantidad_de_leguminosas)
  if(cantidad_leguminosas==1){
    #Saca las kcal
    alimento_dieta_leguminosas1<-readline(prompt = "Ingresa leguminosas 1: ")
    kcal_alimento_dieta_leguminosas1<- leguminosas[alimento_dieta_leguminosas1, "kcal"]
    n_kcal_alimento_dieta_leguminosas1<-as.numeric(kcal_alimento_dieta_leguminosas1)
    porcion_leguminosas1<- readline(prompt = "Ingresa el peso en gr de leguminosas: ")
    n_porcion_leguminosas1<-as.numeric(porcion_leguminosas1)
    kcal_totales_leguminosas1<- (n_kcal_alimento_dieta_leguminosas1*n_porcion_leguminosas1)/100
    kcal_totales_leguminosas1
    #Saca las proteinas 
    proteina_alimento_dieta_leguminosas1<-leguminosas[alimento_dieta_leguminosas1, "Proteinas"]
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
    leguminosa<- c(kcal_totales_leguminosas1, proteina_totales_leguminosas1, carbohidratos_totales_leguminosas1, grasas_totales_leguminosas1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(leguminosa)<- nombres
    return(print(leguminosa))
    }else if (cantidad_leguminosas==2){
    #Saca las kcal
    alimento_dieta_leguminosas2.1<-readline(prompt = "Ingresa leguminosas 1: ")
    kcal_alimento_dieta_leguminosas2.1<- leguminosas[alimento_dieta_leguminosas2.1, "kcal"]
    n_kcal_alimento_dieta_leguminosas2.1<-as.numeric(kcal_alimento_dieta_leguminosas2.1)
    porcion_leguminosas2.1<- readline(prompt = "Ingresa el peso en gr de leguminosas 1: ")
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
    proteina_alimento_dieta_leguminosas2.1<-leguminosas[alimento_dieta_leguminosas2.1, "Proteinas"]
    n_proteina_alimento_dieta_leguminosas2.1<- as.numeric(proteina_alimento_dieta_leguminosas2.1)
    n_proteina_leguminosas2.1<- (n_proteina_alimento_dieta_leguminosas2.1*n_porcion_leguminosas2.1)/100
    proteina_alimento_dieta_leguminosas2.2<-leguminosas[alimento_dieta_leguminosas2.2, "Proteinas"]
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
    leguminosa<- c(kcal_totales_leguminosas2, proteina_totales_leguminosas2, carbohidratos_totales_leguminosas2, grasas_totales_leguminosas2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(leguminosa)<- nombres
    return(print(leguminosa))
  }else if (cantidad_leguminosas==3){
    #Saca las kcal
    alimento_dieta_leguminosas3.1<-readline(prompt = "Ingresa leguminosas 1: ")
    kcal_alimento_dieta_leguminosas3.1<- leguminosas[alimento_dieta_leguminosas3.1, "kcal"]
    n_kcal_alimento_dieta_leguminosas3.1<-as.numeric(kcal_alimento_dieta_leguminosas3.1)
    porcion_leguminosas3.1<- readline(prompt = "Ingresa el peso en gr de leguminosas 1: ")
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
    proteina_alimento_dieta_leguminosas3.1<-leguminosas[alimento_dieta_leguminosas3.1, "Proteinas"]
    n_proteina_alimento_dieta_leguminosas3.1<- as.numeric(proteina_alimento_dieta_leguminosas3.1)
    n_proteina_leguminosas3.1<- (n_proteina_alimento_dieta_leguminosas3.1*n_porcion_leguminosas3.1)/100
    proteina_alimento_dieta_leguminosas3.2<-leguminosas[alimento_dieta_leguminosas3.2, "Proteinas"]
    n_proteina_alimento_dieta_leguminosas3.2<- as.numeric(proteina_alimento_dieta_leguminosas3.2)
    n_proteina_leguminosas3.2<- (n_proteina_alimento_dieta_leguminosas3.2*n_porcion_leguminosas3.2)/100
    proteina_alimento_dieta_leguminosas3.3<-leguminosas[alimento_dieta_leguminosas3.3, "Proteinas"]
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
    leguminosa<- c(kcal_totales_leguminosas3, proteina_totales_leguminosas3, carbohidratos_totales_leguminosas3, grasas_totales_leguminosas3)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(leguminosa)<- nombres
    return(print(leguminosa))
  }
}


######## GRASAS CON PROTEINA ######
grasas_con_proteinas
pruebas_grasas_proteina<- function(){
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
    proteina_alimento_dieta_grasas_proteina1<-grasas_con_proteinas[alimento_dieta_grasas_proteina1, "Proteinas"]
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
    porcion_grasas_proteina2.1<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 1: ")
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
    proteina_alimento_dieta_grasas_proteina2.1<-grasas_con_proteinas[alimento_dieta_grasas_proteina2.1, "Proteinas"]
    n_proteina_alimento_dieta_grasas_proteina2.1<- as.numeric(proteina_alimento_dieta_grasas_proteina2.1)
    n_proteina_grasas_proteina2.1<- (n_proteina_alimento_dieta_grasas_proteina2.1*n_porcion_grasas_proteina2.1)/100
    proteina_alimento_dieta_grasas_proteina2.2<-grasas_con_proteinas[alimento_dieta_grasas_proteina2.2, "Proteinas"]
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
      alimento_dieta_grasas_proteina3.1<-readline(prompt = "Ingresa grasas con proteinas 1: ")
      kcal_alimento_dieta_grasas_proteina3.1<- grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "kcal"]
      n_kcal_alimento_dieta_grasas_proteina3.1<-as.numeric(kcal_alimento_dieta_grasas_proteina3.1)
      porcion_grasas_proteina3.1<- readline(prompt = "Ingresa el peso en gr de grasas con proteinas 1: ")
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
      proteina_alimento_dieta_grasas_proteina3.1<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.1, "Proteinas"]
      n_proteina_alimento_dieta_grasas_proteina3.1<- as.numeric(proteina_alimento_dieta_grasas_proteina3.1)
      n_proteina_grasas_proteina3.1<- (n_proteina_alimento_dieta_grasas_proteina3.1*n_porcion_grasas_proteina3.1)/100
      proteina_alimento_dieta_grasas_proteina3.2<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.2, "Proteinas"]
      n_proteina_alimento_dieta_grasas_proteina3.2<- as.numeric(proteina_alimento_dieta_grasas_proteina3.2)
      n_proteina_grasas_proteina3.2<- (n_proteina_alimento_dieta_grasas_proteina3.2*n_porcion_grasas_proteina3.2)/100
      proteina_alimento_dieta_grasas_proteina3.3<-grasas_con_proteinas[alimento_dieta_grasas_proteina3.3, "Proteinas"]
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



####### GRASAS #######
grasas
prueba_grasas<- function (){
  cantidad_de_grasas<- readline(prompt = "Ingresa el numero de grasas: ")
  cantidad_grasas<- as.numeric(cantidad_de_grasas)
  if(cantidad_grasas==1){
    #Saca las kcal
    alimento_dieta_grasas1<-readline(prompt = "Ingresa grasas 1: ")
    kcal_alimento_dieta_grasas1<- grasas[alimento_dieta_grasas1, "kcal"]
    n_kcal_alimento_dieta_grasas1<-as.numeric(kcal_alimento_dieta_grasas1)
    porcion_grasas1<- readline(prompt = "Ingresa el peso en gr de grasas: ")
    n_porcion_grasas1<-as.numeric(porcion_grasas1)
    kcal_totales_grasas1<- (n_kcal_alimento_dieta_grasas1*n_porcion_grasas1)/100
    kcal_totales_grasas1
    #Saca las proteinas 
    proteina_alimento_dieta_grasas1<-grasas[alimento_dieta_grasas1, "Proteinas"]
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
    grasa<- c(kcal_totales_grasas1, proteina_totales_grasas1, carbohidratos_totales_grasas1, grasas_totales_grasas1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(grasa)<- nombres
    return(print(grasa))
  }else if (cantidad_grasas==2){
    #Saca las kcal
    alimento_dieta_grasas2.1<-readline(prompt = "Ingresa grasas 1: ")
    kcal_alimento_dieta_grasas2.1<- grasas[alimento_dieta_grasas2.1, "kcal"]
    n_kcal_alimento_dieta_grasas2.1<-as.numeric(kcal_alimento_dieta_grasas2.1)
    porcion_grasas2.1<- readline(prompt = "Ingresa el peso en gr de grasas 1: ")
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
    proteina_alimento_dieta_grasas2.1<-grasas[alimento_dieta_grasas2.1, "Proteinas"]
    n_proteina_alimento_dieta_grasas2.1<- as.numeric(proteina_alimento_dieta_grasas2.1)
    n_proteina_grasas2.1<- (n_proteina_alimento_dieta_grasas2.1*n_porcion_grasas2.1)/100
    proteina_alimento_dieta_grasas2.2<-grasas[alimento_dieta_grasas2.2, "Proteinas"]
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
    grasa<- c(kcal_totales_grasas2, proteina_totales_grasas2, carbohidratos_totales_grasas2, grasas_totales_grasas2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(grasa)<- nombres
    return(print(grasa))
  }else if (cantidad_grasas==3){
    #Saca las kcal
    alimento_dieta_grasas3.1<-readline(prompt = "Ingresa grasas 1: ")
    kcal_alimento_dieta_grasas3.1<- grasas[alimento_dieta_grasas3.1, "kcal"]
    n_kcal_alimento_dieta_grasas3.1<-as.numeric(kcal_alimento_dieta_grasas3.1)
    porcion_grasas3.1<- readline(prompt = "Ingresa el peso en gr de grasas 1: ")
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
    proteina_alimento_dieta_grasas3.1<-grasas[alimento_dieta_grasas3.1, "Proteinas"]
    n_proteina_alimento_dieta_grasas3.1<- as.numeric(proteina_alimento_dieta_grasas3.1)
    n_proteina_grasas3.1<- (n_proteina_alimento_dieta_grasas3.1*n_porcion_grasas3.1)/100
    proteina_alimento_dieta_grasas3.2<-grasas[alimento_dieta_grasas3.2, "Proteinas"]
    n_proteina_alimento_dieta_grasas3.2<- as.numeric(proteina_alimento_dieta_grasas3.2)
    n_proteina_grasas3.2<- (n_proteina_alimento_dieta_grasas3.2*n_porcion_grasas3.2)/100
    proteina_alimento_dieta_grasas3.3<-grasas[alimento_dieta_grasas3.3, "Proteinas"]
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
    grasa<- c(kcal_totales_grasas3, proteina_totales_grasas3, carbohidratos_totales_grasas3, grasas_totales_grasas3)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(grasa)<- nombres
    return(print(grasa))
  }
}


####### AZUCAR #######
azucar
prueba_azucar<-function(){
  cantidad_de_azucar<- readline(prompt = "Ingresa el numero de azucar: ")
  cantidad_azucar<- as.numeric(cantidad_de_azucar)
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
    proteina_alimento_dieta_azucar1<-azucar[alimento_dieta_azucar1, "Proteinas"]
    n_proteina_alimento_dieta_azucar1<- as.numeric(proteina_alimento_dieta_azucar1)
    proteina_totales_azucar1<- (n_proteina_alimento_dieta_azucar1*n_porcion_azucar1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_azucar1<- azucar[alimento_dieta_azucar1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_azucar1<-as.numeric(carbohidratos_alimento_dieta_azucar1)
    carbohidratos_totales_azucar1<- (n_carbohidratos_alimento_dieta_azucar1*n_porcion_azucar1)/100
    #Saca las grasas
    grasa_alimento_dieta_azucar1<- azucar[alimento_dieta_azucar1, "Grasas"]
    n_grasas_alimento_dieta_azucar1<- as.numeric(grasa_alimento_dieta_azucar1)
    grasas_totales_azucar1<- (n_grasas_alimento_dieta_azucar1*n_porcion_azucar1)/100
    azucar_1<- c(kcal_totales_azucar1, proteina_totales_azucar1, carbohidratos_totales_azucar1, grasas_totales_azucar1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(azucar_1)<- nombres
    return(print(azucar_1))
  }else if (cantidad_azucar==2){
    #Saca las kcal
    alimento_dieta_azucar2.1<-readline(prompt = "Ingresa azucar 1: ")
    kcal_alimento_dieta_azucar2.1<- azucar[alimento_dieta_azucar2.1, "kcal"]
    n_kcal_alimento_dieta_azucar2.1<-as.numeric(kcal_alimento_dieta_azucar2.1)
    porcion_azucar2.1<- readline(prompt = "Ingresa el peso en gr de azucar 1: ")
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
    proteina_alimento_dieta_azucar2.1<-azucar[alimento_dieta_azucar2.1, "Proteinas"]
    n_proteina_alimento_dieta_azucar2.1<- as.numeric(proteina_alimento_dieta_azucar2.1)
    n_proteina_azucar2.1<- (n_proteina_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    proteina_alimento_dieta_azucar2.2<-azucar[alimento_dieta_azucar2.2, "Proteinas"]
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
    #Saca la grasa
    grasa_alimento_dieta_azucar2.1<- azucar[alimento_dieta_azucar2.1, "Grasas"]
    n_grasa_alimento_dieta_azucar2.1<- as.numeric(grasa_alimento_dieta_azucar2.1)
    n_grasa_azucar2.1<- (n_grasa_alimento_dieta_azucar2.1*n_porcion_azucar2.1)/100
    grasa_alimento_dieta_azucar2.2<- azucar[alimento_dieta_azucar2.2, "Grasas"]
    n_grasa_alimento_dieta_azucar2.2<- as.numeric(grasa_alimento_dieta_azucar2.2)
    n_grasa_azucar2.2<- (n_grasa_alimento_dieta_azucar2.2*n_porcion_azucar2.2)/100
    grasa_totales_azucar2<- n_grasa_azucar2.1 + n_grasa_azucar2.2
    azucar_1<- c(kcal_totales_azucar2, proteina_totales_azucar2, carbohidratos_totales_azucar2, grasa_totales_azucar2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(azucar_1)<- nombres
    return(print(azucar_1))
  }
}

#### CEREALES ######
prueba_cereales<- function(){
  cantidad_de_cereales<- readline(prompt = "Ingresa el numero de cereales: ")
  cantidad_cereales<- as.numeric(cantidad_de_cereales)
  if(cantidad_cereales==1){
    #Saca las kcal
    alimento_dieta_cereales1<-readline(prompt = "Ingresa cereales 1: ")
    kcal_alimento_dieta_cereales1<- cereales[alimento_dieta_cereales1, "kcal"]
    n_kcal_alimento_dieta_cereales1<-as.numeric(kcal_alimento_dieta_cereales1)
    porcion_cereales1<- readline(prompt = "Ingresa el peso en gr de cereales: ")
    n_porcion_cereales1<-as.numeric(porcion_cereales1)
    kcal_totales_cereales1<- (n_kcal_alimento_dieta_cereales1*n_porcion_cereales1)/100
    kcal_totales_cereales1
    #Saca las proteinas 
    proteina_alimento_dieta_cereales1<-cereales[alimento_dieta_cereales1, "Proteinas"]
    n_proteina_alimento_dieta_cereales1<- as.numeric(proteina_alimento_dieta_cereales1)
    proteina_totales_cereales1<- (n_proteina_alimento_dieta_cereales1*n_porcion_cereales1)/100
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_cereales1<- cereales[alimento_dieta_cereales1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_cereales1<-as.numeric(carbohidratos_alimento_dieta_cereales1)
    carbohidratos_totales_cereales1<- (n_carbohidratos_alimento_dieta_cereales1*n_porcion_cereales1)/100
    #Saca las grasas
    grasa_alimento_dieta_cereales1<- cereales[alimento_dieta_cereales1, "Grasas"]
    n_grasas_alimento_dieta_cereales1<- as.numeric(grasa_alimento_dieta_cereales1)
    grasas_totales_cereales1<- (n_grasas_alimento_dieta_cereales1*n_porcion_cereales1)/100
    cereales_1<- c(kcal_totales_cereales1, proteina_totales_cereales1, carbohidratos_totales_cereales1, grasas_totales_cereales1)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(cereales_1)<- nombres
    return(print(cereales_1))
  }else if (cantidad_cereales==2){
    #Saca las kcal
    alimento_dieta_cereales2.1<-readline(prompt = "Ingresa cereales 1: ")
    kcal_alimento_dieta_cereales2.1<- azucar[alimento_dieta_cereales2.1, "kcal"]
    n_kcal_alimento_dieta_cereales2.1<-as.numeric(kcal_alimento_dieta_cereales2.1)
    porcion_cereales2.1<- readline(prompt = "Ingresa el peso en gr de cereales 1: ")
    n_porcion_cereales2.1<-as.numeric(porcion_cereales2.1)
    kcal_cereales2.1<- (n_kcal_alimento_dieta_cereales2.1*n_porcion_cereales2.1)/100
    kcal_cereales2.1
    alimento_dieta_cereales2.2<-readline(prompt = "Ingresa cereales 2: ")
    kcal_alimento_dieta_cereales2.2<- cereales[alimento_dieta_cereales2.2, "kcal"]
    n_kcal_alimento_dieta_cereales2.2<-as.numeric(kcal_alimento_dieta_cereales2.2)
    porcion_cereales2.2<- readline(prompt = "Ingresa el peso en gr de cereales 2: ")
    n_porcion_cereales2.2<-as.numeric(porcion_cereales2.2)
    kcal_cereales2.2<- (n_kcal_alimento_dieta_cereales2.2*n_porcion_cereales2.2)/100
    kcal_cereales2.2
    kcal_totales_cereales2<- kcal_cereales2.1 + kcal_cereales2.2
    #Saca las proteinas 
    proteina_alimento_dieta_cereales2.1<-cereales[alimento_dieta_cereales2.1, "Proteinas"]
    n_proteina_alimento_dieta_cereales2.1<- as.numeric(proteina_alimento_dieta_cereales2.1)
    n_proteina_cereales2.1<- (n_proteina_alimento_dieta_cereales2.1*n_porcion_cereales2.1)/100
    proteina_alimento_dieta_cereales2.2<-cereales[alimento_dieta_cereales2.2, "Proteinas"]
    n_proteina_alimento_dieta_cereales2.2<- as.numeric(proteina_alimento_dieta_cereales2.2)
    n_proteina_cereales2.2<- (n_proteina_alimento_dieta_cereales2.2*n_porcion_cereales2.2)/100
    proteina_totales_cereales2<- n_proteina_cereales2.1 + n_proteina_cereales2.2
    #Saca los carbohidratos
    carbohidratos_alimento_dieta_cereales2.1<- cereales[alimento_dieta_cereales2.1, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_cereales2.1<-as.numeric(carbohidratos_alimento_dieta_cereales2.1)
    n_carbohidratos_cereales2.1<- (n_carbohidratos_alimento_dieta_cereales2.1*n_porcion_cereales2.1)/100
    carbohidratos_alimento_dieta_cereales2.2<- cereales[alimento_dieta_cereales2.2, "Carbohidratos"]
    n_carbohidratos_alimento_dieta_cereales2.2<-as.numeric(carbohidratos_alimento_dieta_cereales2.2)
    n_carbohidratos_cereales2.2<- (n_carbohidratos_alimento_dieta_cereales2.2*n_porcion_cereales2.2)/100
    carbohidratos_totales_cereales2<- n_carbohidratos_cereales2.1 + n_carbohidratos_cereales2.2
    #Saca la grasa
    grasa_alimento_dieta_cereales2.1<- cereales[alimento_dieta_cereales2.1, "Grasas"]
    n_grasa_alimento_dieta_cereales2.1<- as.numeric(grasa_alimento_dieta_cereales2.1)
    n_grasa_cereales2.1<- (n_grasa_alimento_dieta_cereales2.1*n_porcion_cereales2.1)/100
    grasa_alimento_dieta_cereales2.2<- cereales[alimento_dieta_cereales2.2, "Grasas"]
    n_grasa_alimento_dieta_cereales2.2<- as.numeric(grasa_alimento_dieta_cereales2.2)
    n_grasa_cereales2.2<- (n_grasa_alimento_dieta_cereales2.2*n_porcion_cereales2.2)/100
    grasa_totales_cereales2<- n_grasa_cereales2.1 + n_grasa_cereales2.2
    cereales_1<- c(kcal_totales_cereales2, proteina_totales_cereales2, carbohidratos_totales_cereales2, grasa_totales_cereales2)
    nombres<- c("kcal","proteina","carbohidratos","grasas")
    names(cereales_1)<- nombres
    return(print(cereales_1))
  }
}

#Hago una tabla en blanco con data.frame.
#Una tabla equivale a un día en el que van a preguntar que comiste de los grupos alimenticios en el desayuno, Colacion 1, comida, colacion 2 y cena
dia_prueba<-function(){
comidas_prueba<- data.frame(comidas= character(),
                             kcal = numeric(),
                             proteinas = numeric(),
                             carbohidratos = numeric(),
                             grasa = numeric())
comidas_prueba
#Para llenarla lo voy a hacer por fila
alimento_animal<- prueba_alimentos()
alimento_animal
alimento_fruta<- prueba_fruta()
alimento_fruta
alimento_verdura<- prueba_verdura()
alimento_verdura
alimento_leguminosa<- prueba_leguminosa()
alimento_leguminosa
alimento_grasas_proteina<- pruebas_grasas_proteina()
alimento_grasas_proteina
alimento_grasas<- prueba_grasas()
alimento_grasas
alimento_azucar<- prueba_azucar()
alimento_azucar
alimento_cereales<- prueba_cereales()
alimento_cereales

Desayuno<-data.frame(comidas="Desayuno",
              kcal= alimento_animal["kcal"] + alimento_fruta["kcal"] + alimento_verdura ["kcal"] + alimento_leguminosa ["kcal"] + alimento_grasas_proteina["kcal"] + alimento_grasas["kcal"] + alimento_azucar ["kcal"],
              proteinas=alimento_animal["proteina"] + alimento_fruta["proteina"] + alimento_verdura ["proteina"] + alimento_leguminosa ["proteina"] + alimento_grasas_proteina["proteina"] + alimento_grasas["proteina"] + alimento_azucar ["proteina"],
              carbohidratos=alimento_animal["carbohidratos"] + alimento_fruta["carbohidratos"] + alimento_verdura ["carbohidratos"] + alimento_leguminosa ["carbohidratos"] + alimento_grasas_proteina["carbohidratos"] + alimento_grasas["carbohidratos"] + alimento_azucar ["carbohidratos"],
              grasa= alimento_animal["grasas"] + alimento_fruta["grasas"] + alimento_verdura["grasas"] + alimento_leguminosa["grasas"] + alimento_grasas_proteina["grasas"] + alimento_grasas["grasas"] + alimento_azucar["grasas"])

Desayuno

#Inserto la fila con la función rbind
comidas_prueba<- rbind(comidas_prueba, Desayuno)
comidas_prueba

alimento_animal<- prueba_alimentos()
alimento_animal
alimento_fruta<- prueba_fruta()
alimento_fruta
alimento_verdura<- prueba_verdura()
alimento_verdura
alimento_leguminosa<- prueba_leguminosa()
alimento_leguminosa
alimento_grasas_proteina<- pruebas_grasas_proteina()
alimento_grasas_proteina
alimento_grasas<- prueba_grasas()
alimento_grasas
alimento_azucar<- prueba_azucar()
alimento_azucar
alimento_cereales<- prueba_cereales()
alimento_cereales

Colacion_1<-data.frame(comidas="Colacion 1",
                       kcal= alimento_animal["kcal"] + alimento_fruta["kcal"] + alimento_verdura ["kcal"] + alimento_leguminosa ["kcal"] + alimento_grasas_proteina["kcal"] + alimento_grasas["kcal"] + alimento_azucar ["kcal"],
                       proteinas=alimento_animal["proteina"] + alimento_fruta["proteina"] + alimento_verdura ["proteina"] + alimento_leguminosa ["proteina"] + alimento_grasas_proteina["proteina"] + alimento_grasas["proteina"] + alimento_azucar ["proteina"],
                       carbohidratos=alimento_animal["carbohidratos"] + alimento_fruta["carbohidratos"] + alimento_verdura ["carbohidratos"] + alimento_leguminosa ["carbohidratos"] + alimento_grasas_proteina["carbohidratos"] + alimento_grasas["carbohidratos"] + alimento_azucar ["carbohidratos"],
                       grasa= alimento_animal["grasas"] + alimento_fruta["grasas"] + alimento_verdura["grasas"] + alimento_leguminosa["grasas"] + alimento_grasas_proteina["grasas"] + alimento_grasas["grasas"] + alimento_azucar["grasas"])

Colacion_1

comidas_prueba<- rbind(comidas_prueba, Colacion_1)
comidas_prueba

alimento_animal<- prueba_alimentos()
alimento_animal
alimento_fruta<- prueba_fruta()
alimento_fruta
alimento_verdura<- prueba_verdura()
alimento_verdura
alimento_leguminosa<- prueba_leguminosa()
alimento_leguminosa
alimento_grasas_proteina<- pruebas_grasas_proteina()
alimento_grasas_proteina
alimento_grasas<- prueba_grasas()
alimento_grasas
alimento_azucar<- prueba_azucar()
alimento_azucar
alimento_cereales<- prueba_cereales()
alimento_cereales

Comida<-data.frame(comidas="Comida",
                  kcal= alimento_animal["kcal"] + alimento_fruta["kcal"] + alimento_verdura ["kcal"] + alimento_leguminosa ["kcal"] + alimento_grasas_proteina["kcal"] + alimento_grasas["kcal"] + alimento_azucar ["kcal"],
                  proteinas=alimento_animal["proteina"] + alimento_fruta["proteina"] + alimento_verdura ["proteina"] + alimento_leguminosa ["proteina"] + alimento_grasas_proteina["proteina"] + alimento_grasas["proteina"] + alimento_azucar ["proteina"],
                  carbohidratos=alimento_animal["carbohidratos"] + alimento_fruta["carbohidratos"] + alimento_verdura ["carbohidratos"] + alimento_leguminosa ["carbohidratos"] + alimento_grasas_proteina["carbohidratos"] + alimento_grasas["carbohidratos"] + alimento_azucar ["carbohidratos"],
                  grasa= alimento_animal["grasas"] + alimento_fruta["grasas"] + alimento_verdura["grasas"] + alimento_leguminosa["grasas"] + alimento_grasas_proteina["grasas"] + alimento_grasas["grasas"] + alimento_azucar["grasas"])

Comida

comidas_prueba<- rbind(comidas_prueba, Comida)
comidas_prueba

alimento_animal<- prueba_alimentos()
alimento_animal
alimento_fruta<- prueba_fruta()
alimento_fruta
alimento_verdura<- prueba_verdura()
alimento_verdura
alimento_leguminosa<- prueba_leguminosa()
alimento_leguminosa
alimento_grasas_proteina<- pruebas_grasas_proteina()
alimento_grasas_proteina
alimento_grasas<- prueba_grasas()
alimento_grasas
alimento_azucar<- prueba_azucar()
alimento_azucar
alimento_cereales<- prueba_cereales()
alimento_cereales

Colacion_2<-data.frame(comidas="Colacion 2",
                       kcal= alimento_animal["kcal"] + alimento_fruta["kcal"] + alimento_verdura ["kcal"] + alimento_leguminosa ["kcal"] + alimento_grasas_proteina["kcal"] + alimento_grasas["kcal"] + alimento_azucar ["kcal"],
                       proteinas=alimento_animal["proteina"] + alimento_fruta["proteina"] + alimento_verdura ["proteina"] + alimento_leguminosa ["proteina"] + alimento_grasas_proteina["proteina"] + alimento_grasas["proteina"] + alimento_azucar ["proteina"],
                       carbohidratos=alimento_animal["carbohidratos"] + alimento_fruta["carbohidratos"] + alimento_verdura ["carbohidratos"] + alimento_leguminosa ["carbohidratos"] + alimento_grasas_proteina["carbohidratos"] + alimento_grasas["carbohidratos"] + alimento_azucar ["carbohidratos"],
                       grasa= alimento_animal["grasas"] + alimento_fruta["grasas"] + alimento_verdura["grasas"] + alimento_leguminosa["grasas"] + alimento_grasas_proteina["grasas"] + alimento_grasas["grasas"] + alimento_azucar["grasas"])

Colacion_2

comidas_prueba<- rbind(comidas_prueba, Colacion_2)
comidas_prueba

alimento_animal<- prueba_alimentos()
alimento_animal
alimento_fruta<- prueba_fruta()
alimento_fruta
alimento_verdura<- prueba_verdura()
alimento_verdura
alimento_leguminosa<- prueba_leguminosa()
alimento_leguminosa
alimento_grasas_proteina<- pruebas_grasas_proteina()
alimento_grasas_proteina
alimento_grasas<- prueba_grasas()
alimento_grasas
alimento_azucar<- prueba_azucar()
alimento_azucar
alimento_cereales<- prueba_cereales()
alimento_cereales

Cena<-data.frame(comidas="Cena",
                 kcal= alimento_animal["kcal"] + alimento_fruta["kcal"] + alimento_verdura ["kcal"] + alimento_leguminosa ["kcal"] + alimento_grasas_proteina["kcal"] + alimento_grasas["kcal"] + alimento_azucar ["kcal"],
                 proteinas=alimento_animal["proteina"] + alimento_fruta["proteina"] + alimento_verdura ["proteina"] + alimento_leguminosa ["proteina"] + alimento_grasas_proteina["proteina"] + alimento_grasas["proteina"] + alimento_azucar ["proteina"],
                 carbohidratos=alimento_animal["carbohidratos"] + alimento_fruta["carbohidratos"] + alimento_verdura ["carbohidratos"] + alimento_leguminosa ["carbohidratos"] + alimento_grasas_proteina["carbohidratos"] + alimento_grasas["carbohidratos"] + alimento_azucar ["carbohidratos"],
                 grasa= alimento_animal["grasas"] + alimento_fruta["grasas"] + alimento_verdura["grasas"] + alimento_leguminosa["grasas"] + alimento_grasas_proteina["grasas"] + alimento_grasas["grasas"] + alimento_azucar["grasas"])

Cena
comidas_prueba <- rbind(comidas_prueba, Cena)
return(print(comidas_prueba))}

dia_1 <- dia_prueba()
#para generar un plot con una tabla que incluya todos los datos del dia
#Desayuno
1
Huevo
212
1
Manzana
200
1
Nada
0
1
Frijol
100
1
Crema de cacahuate
50
1
Aceite
15
1
Nada
0
1
Tortilla de maiz
80
#Colación 1
1
Nada
0
2
Platano
100
Fresa
100
1
Nada
0
1
Nada
0
1
Crema de cacahuate
50
1
Nada
0
1
Nada
0
1
Amaranto
50
#Comida
1
Pollo
180
1
Manzana
200
1
Zanahoria
75
1
Nada
0
1
Almendras
100
1
Aceite
15
1
Nada
0
2
Papa
75
Tortilla de maiz
80
#Colación 2, no le dio tiempo de comer :(
1
Nada
0
1
Nada
0
1
Nada
0
1
Nada
0
1
Nada
0
1
Nada
0
1
Nada
0
1
Nada
0
#Cena
1
Pollo
180
1
Nada
0
1
Zanahoria
75
1
Nada
0
1
Almendras
100
1
Aceite
15
1
Nada
0
2
Papa
75
Tortilla de maiz
80

#instale estos paquetes para la tabla:
  # install.packages("gtExtras")
install.packages("gtExtras")
  # remotes::install_github("jthomasmock/gtExtras")
install.packages("jthomasmock/gtExtras")
  # install.packages("tidyverse")
install.packages("tidyverse")
#Y cargue las librerias necesarias
library(gtExtras)
library(gt)
library(tidyverse)
library(glue)



  ### OPCION 1
head(dia_1) %>% 
  gt() %>% 
  gt_theme_nytimes() %>%
  tab_header(title = "Resumen dia 1")

  ### OPCION 2
head(dia_1) %>%
  gt() %>% 
  gt_theme_538()

  ### OPCION 3
head(dia_1) %>%
  gt() %>% 
  gt_theme_espn()
