#Para calcular las kcal, proteínas, carbohidratos y grasas que se consumen diario se le pide que llene lo que se le pide. 
alimento_origen_animal
dieta_origen_animal<- function(){
  alimento_dieta_oa<-readline(prompt = "Ingresa alimento de origen animal")
  kcal_alimento_dieta_oa<- alimento_origen_animal[alimento_dieta_oa, "kcal"]
  as.numeric(kcal_alimento_dieta_oa)
  return(print(paste("Las kcal son", kcal_alimento_dieta_oa)))
}
dieta_origen_animal()
Pescado
