#
# Matrices (generalizacion vectores)
#

x <- matrix(nrow=2,ncol=2)

x[1,1] <- 2
x

x <- matrix(nrow=2,ncol=2,data=c(1,2,3,4))
x

y <- matrix(nrow=10,ncol=10) 
y[,] <- rnorm(100)
y

dim(y)

# apply(y,[dim], [funcion]) -> Aplica la funcion en la dimension especificada
# dim = 1 -> filas, 2-> cols

z <- matrix(1:4, 2,2)
z

w <- matrix(5:8,2,2)
w

# producto matricial
producto = z%*%w
producto

#
# Arrays (generalizacion matrices a n dimensiones)
#

un_array <- array(dim=c(2,3,10))
un_array

#
# Listas
# 

# No se define con n_cols y n_rows, si no con elementos individuales
l <- list()
l[[1]] <- c('a','b')
l[[2]] <- 1:10
l

l[[2]]

x <- list(nombre=c('Juan','Maria'), casado=c(T,F),no.hijos=c(3,1), edad.hijos=list(c(4,7,9),2))
x

x$nombre

info <- function(element) {
  print(element)
}

lapply(x,info)

#
# Dataframes
#

# Similar a matrices, pero no es necesario que los tipos de datos
# sean todos iguales


x <- data.frame(edad=c(18,24,53), nombre=c('Juan', 'Maria', 'Jose'))
x

#
# Factors
#

# Usados para variables categoricas
# Son utiles porque contienen informacion sobre los valores
# que puede tomar la variable categorica, independientemente
# de si los valores son observados

f <- factor(c(1,1,2,1), levels=c(1,2), labels=c('M','F'))


# Ver tipo de objeto
class(f)

# Agregar filas y columnas a objetos existentes

# rbind(x, row)
# cbind(x, col)