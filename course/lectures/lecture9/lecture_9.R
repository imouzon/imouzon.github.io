#--------------------------------------**--------------------------------------#
#  File Name: make_JMP_data.R
#  Purpose:
#
#  Creation Date: 09-02-2016
#  Last Modified: Wed Feb 10 13:49:31 2016
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
qplot(x, y) + theme_bw()
dev.off()

# save the x and y values as a data frame
write.csv(data.frame("x" = x, "y" = y), "~/proj/imouzon.github.io/stat105/lectures/lecture9/quadratic.csv", quote=FALSE, row.names=FALSE)

library(dplyr)
library(tidyr)
library(ggplot2)

line_fit <- data.frame("x" = runif(25,-3,3)) %>% mutate(`Good linear fit` = 3*x - 1 + .25*rnorm(25), `OK linear fit` = -3*x + 2 + 4*rnorm(25), `Poor linear fit` = x^2 + .5*rnorm(25)) %>% gather("fit","y",-x)

png("~/proj/imouzon.github.io/stat105/lectures/lecture9/line_fits.png", height = 250, width = 500)
ggplot(data = line_fit, aes(x = x, y = y, facets = fit)) + geom_point() + facet_grid(.~fit,scales="free_y") + geom_smooth(method = "lm", se = FALSE, color = "blue") + theme_bw()
dev.off()

line_fit %>% group_by(fit) %>% summarize(corr = cor(x,y))

