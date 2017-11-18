#----------------------------------------------------------------------#
# file: gibbs_sampler.R
# purpose: illustrate a simple gibbs sampling routine
#----------------------------------------------------------------------#

# 
# x | alpha, y ~ binom(4, alpha)
# 
# y | x, alpha ~ geometric(1/(1 + alpha))
#
# alpha |x, y ~ exp(x + y + 1)


gibbs_step <- function(x, y, alpha){
   # gibbs_step recieves initial values x, y, and alpha
   # generates new values x_new, y_new, alpha_new

   # step 1: sample x_new given initial alpha, and initial y
   x_new <- rbinom(1, 4, 1/(1 + alpha))

   # step 2: sample y_new given new x_new, and initial alpha
   y_new <- rgeom(1, 1/(1 + alpha))

   # step 3: sample alpha_new given new x_new, new y_new
   alpha_new <- rexp(1, x_new + y_new + 1)

   result <- c(x_new, y_new, alpha_new)

   return(result)

}


gibbs_sampler <- function(init_x, init_y, init_alpha, burnin, iter){

   tot_iter <- burnin + iter

   res_matrix <- matrix(nrow = tot_iter, ncol=3)

   for(i in 1:tot_iter){

      res_i <- gibbs_step(init_x, init_y, init_alpha)

      # store results
      res_matrix[i,1] <- res_i[1]
      res_matrix[i,2] <- res_i[2]
      res_matrix[i,3] <- res_i[3]

      # reset the inits to our recent sample
      init_x <- res_i[1]
      init_y <- res_i[2]
      init_alpha <- res_i[3]

   }

   result <- res_matrix[(burnin + 1):tot_iter,]

   return(result)

}

samp <- gibbs_sampler(2, 2, 10, 0, 2000)

library(ggplot2)

qplot(samp[,1])

