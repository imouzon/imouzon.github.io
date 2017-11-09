#--------------------------------------**--------------------------------------#
#  File Name: read_brfss_by_state.R
#  Purpose:
#  Creation Date:
#  Created By:
#--------------------------------------**--------------------------------------#
read_brfss_by_state <- function(path_to_brfss_file, states_to_read=NULL){

   path_to_brfss_fwf_layout = "http://imouzon.github.io/stat430/hw/hw4/brfss_column_layout.tsv"

   fwf_layout <- read.delim(
      path_to_brfss_fwf_layout,
      stringsAsFactors = FALSE
   )

   d <- lapply(1:486303, function(i){


      d <- read.fwf(
         skip = i-1,
         n=1,
         path_to_brfss_file,
         widths= c(fwf_layout[-1,1] - fwf_layout[-nrow(fwf_layout),1],1),
         col.names=fwf_layout$varname
      )

      if(d[,1] %in% states_to_read){

         return(d)

      }else{

         return(NULL)

      }

   })

   d <- do.call("rbind", d)

   return(d)

}
