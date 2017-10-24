#--------------------------------------**--------------------------------------#
#  File Name: read_brfss.R
#  Purpose:
#  Creation Date:
#  Created By:
#--------------------------------------**--------------------------------------#
read_brfss <- function(path_to_brfss_file){

   path_to_brfss_fwf_layout = "http://imouzon.github.io/stat430/hw/hw4/brfss_column_layout.tsv"

   fwf_layout <- read.delim(
      path_to_brfss_column_layout,
      stringsAsFactors = FALSE
   )

   d <- read.fwf(
      path_to_brfss_file,
      widths= c(fwf_layout[-1,1] - fwf_layout[-nrow(fwf_layout),1],1),
      col.names=fwf_layout$varname
   )

}
