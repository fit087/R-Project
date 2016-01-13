#setwd("/home/adolfo/Documentos/R_projects/Coursera")
#getwd()

cat("\014")     # Ctrl+L Clean Screen
rm(list=ls())   # Clear All of Matlab



myfirstfunction <- function(){
  x <- rnorm(100)
  mean(x)
}

second <- function(x){
  x + rnorm(length(x))
}

print(myfirstfunction)
print(myfirstfunction())
print(second)
print(second(5))
print(second(4:10))
#source("firstfunction.R")