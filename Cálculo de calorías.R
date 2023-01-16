# ----- Obtencion de datos -----
# Los datos necesarios para el calculo de calorias recomendadas por dia
# son: sexo, peso (en kg), estatura (en cm). edad y factor de actividad.
# Para obtener dichos datos se usara "readline"
# Sexo ----
readline (prompt = "Ingresa tu sexo: ") # pide que especifiques tu sexo (hombre o mujer) en la consola 
sexo <- readline (prompt = "Ingresa tu sexo: ") #asigna tu respuesta a un objeto llamado "sexo"
sexo
# Peso ----
readline (prompt = "Ingresa tu peso en kilogramos: ") # pide que especifiques tu peso (en kg) en la consola 
  # Creo que podemos borrar la linea de arriba porque ya se pone en la de abajo y por eso me pregunta dos veces lo mismo
peso_1 <- readline (prompt = "Ingresa tu peso en kilogramos: ") #asigna tu respuesta a un objeto llamado "peso_1"
peso <- as.numeric(peso_1) # especifico que lea lo que esta en "peso_1" como un caracter numerico
peso
# Estatura ----
readline (prompt = "Ingresa tu estatura en centimetros: ") # pide que especifiques tu estatura (en cm) en la consola 
  # Creo que podemos borrar la linea de arriba porque ya se pone en la de abajo y por eso me pregunta dos veces lo mismo
estatura_1 <- readline (prompt = "Ingresa tu estatura en centimetros: ") #asigna tu respuesta a un objeto llamado "estatura_1"
estatura <- as.numeric(estatura_1) # especifico que lea lo que esta en "estatura_1" como un caracter numerico
estatura
# Edad
readline (prompt = "Ingresa tu edad: ") # pide que especifiques tu edad en la consola 
  # Creo que podemos borrar la linea de arriba porque ya se pone en la de abajo y por eso me pregunta dos veces lo mismo
edad_1 <- readline (prompt = "Ingresa tu edad: ") #asigna tu respuesta a un objeto llamado "edad_1"
edad <- as.numeric(edad_1) # especifico que lea lo que esta en "edad_1" como un caracter numerico
edad
# Factor de actividad ----
# los niveles de actividad fisica pueden ser:
# sedentario (nada o poco ejercicio)
# poco (si realizas ejercicio de 1 a 3 veces por semana)
# moderado (si realizas ejercicio de 3 a 5 veces por semana)
# intenso (si realizas ejercicio de 6 a 7 veces por semana)
# profesional (si realizas entrenamientos de mas de 4 horas diarias)
factor_actividad <- function () {
  respuesta_1 <- readline (prompt = "Ingresa el nivel de actividad fisica que realizas: ")
  if (respuesta_1 == "sedentario"){
    respuesta <- 1.2
  } else if (respuesta_1 == "poco"){
    respuesta <- 1.375
  } else if (repuesta_1 == "moderado"){
    respuesta <- 1.55
  } else if (respuesta_1 == "intenso"){
    respuesta <- 1.725
  } else if (respuesta_1 == "profesional") {
    respuesta <- 1.9
  }
}
factor_actividad()
#arriba me marca que hay un "{" que no se ha cerrado y que creo que iria en la linea 43 porque asi se desaparece el error.
#pero luego si contesto el nivel de act fisica que tengo, me dice que ese "}" sobra
#?les aparece asi?
#No corre cuando pones sedentario, moderado y profesional 
#Falta poner nombre de objeto porque arriba solo estas haceindo la función


# ---- Formula de calculo de calorias ----

