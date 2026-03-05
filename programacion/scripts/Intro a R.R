# Siguiendo este video https://www.youtube.com/watch?v=WCcHcWsMN1o

# ==============================================================================
# 1. INTRODUCCIÓN Y CONCEPTOS BÁSICOS
# ==============================================================================

# Definir variables
hipotenusa <- sqrt(3**2 + 6**2)

# Ejecutar linea con Ctrl+Enter
hipotenusa

# Ejecutar todo el codigo con Ctrl+Shift+Enter

# --- Ejercicio 1 ---
celsius <- 30
fahrenheit <- celsius * (9/5) + 32
fahrenheit


# ==============================================================================
# 2. TIPOS DE DATOS (DATA TYPES)
# ==============================================================================

# 2.1 Numerics -----------------------------------------------------------------
# Acepta numeros positivos, negativos, decimales

# --- Ejercicio 2: Truncar a dos digitos ---
some_num <- 2.71828
truncated <- trunc(some_num*100) / 100
truncated

# 2.2 Strings (Cadenas de texto) -----------------------------------------------
some_string <- "Soy una string"
len = nchar(some_string)
len

some_string_soy = substr(some_string, 1,3) # index arranca en 1
some_string_soy

# --- Ejercicio 3: Concatenar y reemplazar ---
base_str <- "Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper"
pasted <- paste("En la serie Madmen:", base_str, sep=' ')
pasted 

replaced <- sub('Don Draper', 'Richard Whitman', pasted)
replaced

# 2.3 Logical (Booleanos) ------------------------------------------------------
calificacion <- 8.5
es_diez <- calificacion == 10
es_diez

# Operadores: OR (|), AND (&), NOT (!)
email <- "test@gmail.com"
es_email <- grepl('@gmail.com', email)
es_email

no_email <- !es_email
no_email

# --- Ejercicio 4 ---
usuario <- "RIOT Mictlan"
has_len_under_10 <- nchar(usuario) < 10
has_riot_flag <- grepl('RIOT', usuario)
is_user_in_list <- usuario == "ElVaipa" | usuario == "Ixtli"

valid_user <- has_len_under_10 & !has_riot_flag & is_user_in_list
valid_user


# ==============================================================================
# 3. VECTORES Y MANIPULACIÓN DE DATOS
# ==============================================================================

# 3.1 Creación y Operaciones Básicas ------------------------------------------
vector_vistas <- c(4324, 5345, 3423, 4343)
vector_nombres <- c('Video1', 'Video2', 'Video3', 'Video4')

length(vector_vistas)
max(vector_vistas)
mean(vector_vistas)
sum(vector_vistas)

vector_vistas_mod <- vector_vistas + 1000
vector_vistas_appended <- c(vector_vistas, 9933)

# Agregar nombres a las entradas
nombres <- c(vector_nombres, 'Video5')
names(vector_vistas_appended) <- nombres

# 3.2 Ordenamiento y Documentación --------------------------------------------
sort(vector_vistas)
# ?sort # Consultar documentación

sort(vector_vistas, decreasing=TRUE)

# 3.3 Condiciones Lógicas en Vectores -----------------------------------------
vector_vistas > 5000
any(vector_vistas > 5000)
all(vector_vistas > 0)
which(vector_vistas > 5000) # Índices

# 3.4 Slicing (Subconjuntos) --------------------------------------------------
vector_vistas[c(2,4)]   # por posición
vector_vistas[-4]       # exclusión
vector_vistas[vector_vistas > 5000] # por condición
vector_vistas['Video1'] # por nombre

# Editando valores
vector_vistas[1] = 10000

# 3.5 Operaciones de Sets (Conjuntos) -----------------------------------------
carrito_1 <- c('Manzanas', 'Peras', 'Pan', 'Huevos', 'Leche')
carrito_2 <- c('Limon', 'Banana', 'Carne', 'Pan', 'Leche')

union(carrito_1, carrito_2)
intersect(carrito_1, carrito_2)
setdiff(carrito_1, carrito_2) # Diferencia C1 vs C2
setdiff(carrito_2, carrito_1) # Diferencia C2 vs C1

# Pertenencia
"Carne" %in% carrito_2
c("Leche", "Limon") %in% carrito_2


# ==============================================================================
# 4. GENERACIÓN DE DATOS Y ALEATORIEDAD
# ==============================================================================

# 4.1 Sucesiones --------------------------------------------------------------
1:50 
20:1
-5:5
seq(from=0, to=50, by=0.5)

# 4.2 De String a Vector ------------------------------------------------------
juego <- "Mortal Kombat"
split <- strsplit(juego, " ")
split[[1]] 

# 4.3 Muestreo y Distribuciones -----------------------------------------------
dados <- c(1,2,3,4,5,6)
tirada <- sample(dados, size=2)
sample(dados, size=10, replace=TRUE)

# Probabilidades modificadas
tirada_modificada <- sample(dados, size=2, replace=TRUE, prob=c(0,0,0,0,0,1))

runif(n=20, min=0, max=2)  # Uniforme
rnorm(n=20, mean=15, sd=2) # Normal
rbinom(n=20, size=1, p=0.5)# Bernoulli

# Reproducebilidad
set.seed(123)
runif(n=1)


# ==============================================================================
# 5. EJERCICIOS DE APLICACIÓN
# ==============================================================================

# --- Ejercicio 5: Divisibilidad ---
range <- 1:1000000
matching <- (range %% 8 == 0) & (range %% 6 == 0)
sum(matching) # 41666

# --- Ejercicio 6: Análisis de Compras ---
set.seed(123)
compras <- rnorm(n=10000, mean=5000, sd=1000)

compras[c(435,678)]                         # Montos específicos
sum(compras > 8000)                         # Compras > 8000
max(compras); min(compras)                  # Max y Min
sum(compras >= 4000 & compras <= 6000) / length(compras) # % entre rango

# --- Ejercicio 7: Validación de Usuarios ---
usuario = "NoobSlayer9"
any(strsplit(usuario,'')[[1]] %in% 0:9)     # ¿Contiene al menos un número?
all(strsplit(usuario,'')[[1]] %in% 0:9)     # ¿Contiene SOLO números?


# ==============================================================================
# 6. CASTEADO DE VARIABLES (TYPE CONVERSION)
# ==============================================================================

as.character(5.6)
as.logical(10) # TRUE
as.logical(0)  # FALSE
as.numeric('244')


# ==============================================================================
# 7. ESTRUCTURAS DE CONTROL (FUNCIONES Y CONDICIONALES)
# ==============================================================================

# 7.1 Condicionales (If / Else) -----------------------------------------------
num <- 30
if(num > 100) {
  print('Es mayor a 100')
} else if(num < 100) {
  print('menor a 50')
} else {
  'Entre 50 y 100'
}

# 7.2 Creación de Funciones ----------------------------------------------------
cuadrado <- function(num){
  return(num**2)
}

# Con valores por defecto
exponente <- function(num, power=2){
  return(num**power)
}

# Conversión de temperatura
celsius_a_fahrenheit <- function(celsius) {
  fahrenheit <- celsius*(9/5) + 32
  return(fahrenheit)
}

# --- Ejercicio 8: Funciones Personalizadas ---

# Simulación de tirada
mueve_punto <- function(inicial) {
  dado1 <- sample(1:6, 1) * 2
  dado2 <- sample(1:6, 1)
  return(inicial + dado1 - dado2)
}

# Cálculo de Siglo
siglo <- function(year) {
  return(ceiling(year/100))
}


# ==============================================================================
# 8. CICLOS (LOOPS)
# ==============================================================================

# Ciclo for
for(i in 1:10){
  print(paste('iteracion: ', i))
}

# Ciclo while
numero <- 5
while(numero <= 10){
  print('Aqui seguimos')
  numero <- numero + 1
}