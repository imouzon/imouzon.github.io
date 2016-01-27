#--------------------------------------**--------------------------------------#
#  File Name: lecture6.R
#  Purpose:
#
#  Creation Date: 27-01-2016
#  Last Modified: Wed Jan 27 13:56:17 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

# quartiles
my_quantile <- function(p,x){
   x <- x[order(x)]
   
   n <- length(x)

   raw.i <- n*p + .5
   floor.i <- floor(raw.i)
   if(floor.i == raw.i){
      x[floor.i]
   }else{
      x[floor.i] + (n*p - floor.i + .5)*(x[floor.i+1] - x[floor.i])
   }
}

# group 1
grp1 <- c(74, 79, 77, 81, 68, 79, 81, 76, 81, 80, 80, 78, 88, 83, 79, 91, 79, 75, 74, 73)

grp2 <- c(65, 77, 78, 74, 76, 73, 71, 71, 86, 81, 76, 89, 79, 78, 77, 76, 72, 76, 75, 79)

my_quantile(.25,grp1)
my_quantile(.50,grp1)
my_quantile(.75,grp1)
my_quantile(c(.25,.5,.75),grp1)
my_quantile(c(.25,.5,.75),grp2)
