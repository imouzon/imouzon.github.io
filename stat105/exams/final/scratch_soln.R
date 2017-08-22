#--------------------------------------**--------------------------------------#
#  File Name: scratch_soln.R
#  Purpose:
# 
#  Creation Date: 11-05-2016
#  Last Modified: Wed May 11 12:07:58 2016
#  Created By:
#--------------------------------------**--------------------------------------#

# Problem 11

# b
dbinom(2,4,.5)       # 0.375

# c
dbinom(2, 4, .5)/6   # 0.0625

# d
dbinom(2, 3, .5)/6   # 0.0625

# e
sapply(2:6, function(n) dbinom(2, n, .5)/6)

sum(sapply(2:6, function(n) dbinom(2, n, .5)/6))

# f

dbinom(2, 4, .5)*(1/6)/sum(sapply(2:6, function(n) dbinom(2, n, .5)/6))


hep <- function (zval) {
   ub <- 0.992 + zval*sqrt(0.2*0.2/50)
   lb <- 0.992 - zval*sqrt(0.2*0.2/50)
   return(c(lb, ub))
}

hep(1.645)
hep(1.96)
hep(2.58)
0.992 + zval
