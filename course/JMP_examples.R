#--------------------------------------**--------------------------------------#
#  File Name: JMP_examples.R
#  Purpose:
#
#  Creation Date: 11-02-2016
#  Last Modified: Thu Feb 11 09:17:46 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

# Quadratic Relationship

x <- sort(runif(30, -4, 4))
y <- 4 + 3*x - 2*x^2 + rnorm(30, 0, 5)
write.csv(file = "quadratic.csv", data.frame("x" = x, "y" = y), quote=FALSE, row.names=FALSE)

# Exponential relationship

x <- sort(runif(30, -3, 3))
y <- 2*exp(x) + 2 + rnorm(30,0,2)
plot(exp(x), y)
write.csv(file = "exponential.csv", data.frame("x" = x, "y" = y), quote=FALSE, row.names=FALSE)

# logarithmic

x <- sort(runif(30, 0, 7))
y <- -2*log(x) - 1 + rnorm(30,0,2)
plot(x, y)
write.csv(file = "logarithmic.csv", data.frame("x" = x, "y" = y), quote=FALSE, row.names=FALSE)

# square root

x <- sort(runif(30, 0, 7))
y <- 0.2*sqrt(x) + 1.2 + rnorm(30,0,.1)
plot(x, y)

write.csv(file = "square_root.csv", data.frame("x" = x, "y" = y), quote=FALSE, row.names=FALSE)
