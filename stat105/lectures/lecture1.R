#--------------------------------------**--------------------------------------#
#  File Name: lecture1.R
#  Purpose:
#
#  Creation Date: 25-08-2015
#  Last Modified: Tue Aug 25 04:52:04 2015
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

library(ggplot2)
laid <- c(5,8,8,9,9,9,9,10,10,10,11,11,11,11,11,11,11,12,12,12,12,13,13,13,13,14,14,14,15,15,15,15,16,17,17,18,19,27)
hung <- c(7,8,8,10,10,10,10,11,11,11,12,13,13,13,15,17,17,17,17,18,19,19,20,21,21,21,22,22,22,23,23,23,23,24,27,27,28,31,36)
d <- data.frame(type = c(rep("laid",length(laid)),rep("hung",length(hung))), runout = c(laid,hung))

png("./www/figs/runout.png", width=12, height=4, units="in", res=300)
dev.off() #only 129kb in size


ggplot(data = d, aes(x=runout,fill= type)) + geom_dotplot(method='histodot',bitwidth=1,dotsize=.5) + facet_grid(type~.)
