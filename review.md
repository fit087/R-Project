## List
It is a vector of severous atomic classes (numeric, 
character, integer, complex, logical)
```r
x <- list(1, "a", TRUE, 1 + 4i)
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(1:6, nrow = 2, ncol = 3)
```
Matrices are constructed column-wise, so entries can be
thought of starting in the "upper left" corner and
running down the columns

## Matrix transformation

## Binding columns or rows

## Factor
Vector for categorical data
Male or female
`lm()` and `glm()`
`x <- factor(c("yes","no","yes","no","yes","no","yes","no","yes","no"))`

## Data Frame
is like a list
Tabular Data
every columns has the same lenght
every colum has a class
`read.table` and `read.csv`

# Dates and Times

## [Dates][2]
Date class, number of days from 01/Jan/1970

## [Time Classes][2]
POSIXct     a large integer (number of seconds from 01/Jan/1970
POSIXlt     a list with (day, month, year, hour, minutes and seconds)


## [Reading data by specifying column classes][1]
```r
> setClass("myDateTime")
> setAs("character","myDateTime", function(from) 
+ as.POSIXct(from, format="%Y-%m-%d %H:%M:%S") )
> customClasses = classes = c("myDateTime", rep("numeric", times = 24))
> april2014 = read.csv("april2014.csv", colClasses = customClasses)
> str(april2014)
'data.frame': 2880 obs. of 25 variables:
$ dateTime : POSIXct, format: "2014-04-01 00:00:00" "2014-04-01 00:15:00" "2014-04-01 00:30:00" ...
```

[1]:https://programming-pages.com/2014/08/30/reading-an-r-data-frame-from-a-file-customized-coercion-for-date-times/ "Reading an R data frame from a file; Customized coercion for date-times"
[2]:https://www.coursera.org/learn/r-programming/lecture/yl7BO/dates-and-times "Dates and Times Coursera"
