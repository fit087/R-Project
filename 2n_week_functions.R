make.power <- function(n)
{ 
  pow <- function(x)
  {
    x^n
  }
}

cube <- make.power(3)
square <- make.power(2)
print (paste("cube(3) = ", cube(3)))
print(paste("square(3) = ", square(3)))

print(ls(environment(cube)))
print(ls(environment(square)))

print(get("n", environment(cube)))

print(get("n", environment(square)))

y <- 10

f <- function(x) { 
  y <- 2
  y^2 + g(x)
}

g <- function(x) { 
  x*y
}

print(f(3))
