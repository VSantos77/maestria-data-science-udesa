#----------------------------------------#
#Vectores--------------------------------#
#----------------------------------------#


## 7)

### a

x <- c(1,4)
x

### b

y <- c(6,9,12,412)

### c

z <- 1:1223
z

### d

w <- seq(0.1,422.7,0.1)
w

### e

length(w)

### f

w[154]

### g

w[154] <- 2.4
w[154]

### h

w[124:162]

### i

s <- c(x,w)
s[1:50]


### j

t <- w[-124]
t[120:130]

### k

s <- y[c(1,4,3,2)]
s

## 8

y <- scan() # Input manual

## 9

### a

x <- 1:10
y <- 101:110
x+y
x/y[1:9] # -> Error

plot(x,y)

x+y[1:2] # -> Extiende y si el length of y es multiple de length x

### b

x <- 1:10
x**2
x*x # -> igual a x**2

w <- seq(0.1, 422.7,0.1)
q <- c(1:4227)
w*10


## 10

x <- c(1,2,3); names(x) <- letters[1:3]
x

## 11

### a

v <- c('mesa','silla','mantel')
v

### b

letters
LETTERS

### c

length(letters)

### d

help.search('paste')
paste(letters[1], letters[2], sep=" ")

#----------------------------------------#
#Numeros/vectores aleatorios-------------#
#----------------------------------------#

## 12

### a

sample(c(1:5),3,replace=T)
sample(c(1:5),6,replace=F) # -> Error

### b

sample(c(1:100),6, T)


### c
sample(letters,2,T)

### d



