# ----- Obtención de datos -----
# Los datos necesarios para el cálculo de calorías recomendadas por día
# son: sexo, peso (en kg), estatura (en cm). edad y factor de actividad.
# Para obtener dichos datos se usará readline
metabolismo_basal <- function (peso, estatura, edad, respuesta){
  readline (prompt = "Para conocer la ingesta calórica correcta para ti, ingresa lo siguiente:")
  # Sexo ----
  sexo <- readline (prompt = "Ingresa tu sexo: ") #pide que especifiques tu sexo ("hombre" o "mujer") en la consola y asigna tu respuesta a un objeto llamado "sexo"
  # Peso ----
  peso_1 <- readline (prompt = "Ingresa tu peso en kilogramos: ") #pide que especifiques tu peso (en kg) en la consola y asigna tu respuesta a un objeto llamado "peso_1"
  peso <- as.numeric(peso_1) # especifico que lea lo que está en "peso_1" como un caracter numérico
  # Estatura ----
  estatura_1 <- readline (prompt = "Ingresa tu estatura en centimetros: ") #pide que especifiques tu estatura (en cm) en la consola y asigna tu respuesta a un objeto llamado "estatura_1"
  estatura <- as.numeric(estatura_1) # especifico que lea lo que está en "estatura_1" como un caracter numérico
  # Edad
  edad_1 <- readline (prompt = "Ingresa tu edad: ") #pide que especifiques tu edad en la consola y asigna tu respuesta a un objeto llamado "edad_1"
  edad <- as.numeric(edad_1) # especifico que lea lo que está en "edad_1" como un caracter numérico
  # Factor de actividad ----
  # Los niveles de actividad física pueden ser:
  #   - sedentario
  #   - poco (si realizas ejercicio de 1 a 3 veces por semana)
  #   - moderado (si realizas ejercicio de 3 a 5 veces por semana)
  #   - intenso (si realizas ejercicio de 6 a 7 veces por semana)
  #   - profesional (si realizas entrenamientos de más de 4 horas diarias)
  # Y la cifra correspondiente al factor de actividad varía dependiendo del nivel de actividad física.
  # Para asignarlo dependiendo del caso, se usará el condicional "if":
  respuesta_1 <- readline (prompt = "Ingresa el nivel de actividad física que realizas: ")
  if (respuesta_1 == "sedentario"){
    respuesta <- 1.2
  } else if (respuesta_1 == "poco"){
    respuesta <- 1.375
  } else if (respuesta_1 == "moderado"){
    respuesta <- 1.55
  } else if (respuesta_1 == "intenso"){
    respuesta <- 1.725
  } else if (respuesta_1 == "profesional"){
    respuesta <- 1.9
  }
  # cálculo del metabolismo basal 
  #####Mi duda aqui es si si es 665 y el del hombre 66????
  if (sexo == "mujer") { 
    cantidad_calorias <- ((655 + (9.6 * peso)) + ((1.8 * estatura)*(4.7 * edad)) * respuesta)
  } else if (sexo == "hombre") {
    cantidad_calorias <- ((66 + (13.7 * peso)) + ((5 * estatura)*(6.8 * edad)) * respuesta)
  }
  return(cantidad_calorias)
}
######Corregí esto para que el valor de la función basal se ponga en un objeto y así lo podamos usar para otras cosas
calorias_diarias<- metabolismo_basal (peso, estatura, edad, respuesta)
texto_calorias<- print(paste("La cantidad de calorías requeridas diariamente para su metabolismo basal es de: ", calorias_diarias))

#
# para fraccionar las calorías en cada grupo de alimentos de manera general:
division_calorias <- function(calorias_diarias){
  print("A lo largo del día, entre comidas y colaciones, se recomienda que consumas...")
  # frutas y verduras
  frutas_y_verduras <- calorias_diarias/2 # se recomienda que 1/2 de los alimentos en una comida sea de frutas y verduras.
  print (paste (frutas_y_verduras, "calorías de frutas y verduras,"))
  return(frutas_y_verduras)
  # proteínas y carbohidratos
  proteinas_y_carbs <- calorias_diarias/4 # se recomienda que 1/4 de los alimentos en una comida sea de proteinas y otro 1/4 de carbohidratos. 
  print (paste (proteinas_y_carbs, "calorías de alimentos fuente de proteínas y"))
  print (paste (proteinas_y_carbs, "calorías de carbohidratos."))
  return(proteinas_y_carbs)
}
division_calorias(calorias_diarias)
cantidad_calorias
#### Ocupamos que nos den los valores de frutas y verduras y proteinas y carbs. Si nos da el texto no nos sirve para hacer las tablas y graficas
#### Como en la parte de arriba que corregí
