rm(list = ls())
b <- 1/Inf
hola  <- vector('logical',3)
print(hola)
ola  <- vector('numeric',5)
caracter  <- vector('character', 3)
#print("ho = ")
ho <- vector('integer',3)
print("ho = ", ho)
ho[1] <- 50L
print(ho)
print(class(ho))
ho[2] <- 50
print(ho)
print(class(ho))
you <- c(T,F,T)
class(ho)
lista_loca <- list(1, "a", T, 1 + 4i, 87L, Inf, 8.5, vector('logical',2))

m <- matrix(nrow = 2, ncol = 3)
print(m)
m <- matrix(1:6, nrow = 2, ncol = 3)
n  <- 1:10
dim(n) <- c(2,5)
x  <- 0:2
y  <- 10:12
vecol <- cbind(x,y)
horcol <- rbind(x,y)
attributes(vecol)
f <- factor(c("yes","no","yes","yes"))
table(f)
unclass(f)
f1 <- factor(c("si", "no","si","no"), levels = c("si","no"))

quadro_dados  <- data.frame(individuo = 1:3, Real = c(T,F,T))
op  <- 1:3
names(op)
names(op)  <- c("yo", "tu", "el")
lista1  <- list(A = 1, B = 2, C=3)
names(lista1)
mat <- matrix(1:4, nrow = 2, ncol = 2, dimnames = list(c("a", "b"), c("c","d")))

