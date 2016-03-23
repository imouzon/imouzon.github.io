#--------------------------------------**--------------------------------------#
#  File Name: make_JMP_data.R
#  Purpose:
#
#  Creation Date: 09-02-2016
#  Last Modified: Tue Feb 16 09:26:37 2016
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#

library(ggplot2)

# generate 40 values between 0 and 10, store them in x
x <- runif(40,0,10)

# for each x value, find e^(.3*x + 4) and add a little noise (rnorm part)
y <- exp(.3*x + 4) + rnorm(40,0,6)

# plot x and y
png("~/proj/imouzon.github.io/stat105/lectures/lecture9/transform.png", height = 500, width = 800)
qplot(x, y) + theme_bw()
dev.off()

# save the x and y values as a data frame
write.csv(data.frame("x" = x, "y" = y), "~/proj/imouzon.github.io/stat105/lectures/lecture9/transform.csv", quote=FALSE, row.names=FALSE)

#signal
x <- runif(40,-3,4)
y <- 4 + 2*x - 2*x*x + rnorm(40)

# plot x and y
png("~/proj/imouzon.github.io/stat105/lectures/lecture9/quadratic.png", height = 500, width = 800)
png("~/Desktop/quadratic.png", height = 500, width = 800)
qplot(x, y) + theme_bw()
dev.off()

# save the x and y values as a data frame
write.csv(data.frame("x" = x, "y" = y), "~/proj/imouzon.github.io/stat105/lectures/lecture9/quadratic.csv", quote=FALSE, row.names=FALSE)

roughing_index <- c(280, 290, 285, 300, 310, 295, 270, 285, 290, 230, 234, 240, 260, 240, 235, 220, 225, 230)
roughing_method <- rep(rep(c("A", "B", "C"), each = 3), 2)
shape <- rep(c("bulb", "cube"), each = 9)

dfrm <- data.frame(
   `Shape` = shape,
   `Roughing Method` = roughing_method,
   `Roughing Index` = roughing_index)


write.csv(dfrm, "~/Desktop/glass_tubes.csv", quote=FALSE, row.names=FALSE)

