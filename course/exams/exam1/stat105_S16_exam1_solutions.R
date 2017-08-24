#--------------------------------------**--------------------------------------#
#  File Name: stat105_S16_exam1_solutions.R
#  Purpose:
#
#  Creation Date: 24-02-2016
#  Last Modified: Thu Feb 25 02:02:56 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

p1 <- c(12.1, 12.8, 13.3, 13.4, 14.0, 14.2)

sum(p1)/6

m <- mean(p1)

p1
sum((p1 - m)^2)

(1/5)*sum((p1 - m)^2)

sqrt(3/5)


i <- floor(6*.3 + 0.5)

p1[i] + (6*.3 + 0.5 - i)*(p1[i+1] - p1[i])

cumsum(round(c(3, 7, 12, 2, 2)/26,3))

319/26

(11227 - 26*30*12.26923)/(29250 - 26*30*30)

12.26923 - 0.283248*30 

n <- 26
sum_x <- 780
sum_y <- 319
sum_xsq <- 29250
sum_ysq <- 4455
sum_xy <- 11227

b1 <- (sum_xy - n*(sum_x/n)*(sum_y/n))/(sum_xsq - n*(sum_x/n)*(sum_x/n))

b0 <- (sum_y/n) - (sum_xy - n*(sum_x/n)*(sum_y/n))/(sum_xsq - n*(sum_x/n)*(sum_x/n))*(sum_x/n)

r <- (sum_xy - n*(sum_x/n)*(sum_y/n))/sqrt((sum_xsq - n*(sum_x/n)*(sum_x/n))*(sum_ysq - n*(sum_y/n)*(sum_y/n)))

Rsq <- (sum_xy - n*(sum_x/n)*(sum_y/n))^2/((sum_xsq - n*(sum_x/n)*(sum_x/n))*(sum_ysq - n*(sum_y/n)*(sum_y/n)))


b0 + b1 * 41
18.41 - (b0 + b1 * 41)

SSTO <- 10785.781
SSE <- 114.696

(SSTO - SSE)/(SSTO)

3.9781742 - 0.401014*41 + 0.0284085*41*41
