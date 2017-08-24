#--------------------------------------**--------------------------------------#
#  File Name: new.R
#  Purpose:
#
#  Creation Date: 03-02-2016
#  Last Modified: Wed Feb  3 17:22:16 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

library(ggplot2)

stress <- c(2.5, 5.0, 10.0, 15.0, 17.5, 20.0, 25.0, 30.0, 35.0, 40.0)
lifetime <- c(63, 58, 55, 61, 62, 37, 38, 45, 46, 19)

png("./figure/stress_lifetime_plot.png", height = 300, width = 300)
ggplot(data = NULL, aes(x = stress, y = lifetime)) + geom_point() + theme_bw()
dev.off()

png("./figure/stress_lifetime_plot_line1.png", height = 300, width = 300)
ggplot(data = NULL, aes(x = stress, y = lifetime)) + geom_point() + geom_abline(slope = -1, intercept = 65, color = "red") + theme_bw()
dev.off()

png("./figure/stress_lifetime_plot_line2.png", height = 300, width = 300)
ggplot(data = NULL, aes(x = stress, y = lifetime)) + geom_point() + 
geom_abline(slope = -1, intercept = 65, color = "red") +
geom_abline(slope = -1.15, intercept = 67, color = "blue", shape = 2) +
geom_abline(slope = -0.95, intercept = 68, color = "yellow", shape = 2) + theme_bw()
dev.off()


