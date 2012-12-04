get.hadslp2.url <-  function() { 
msg <- "Please register with the Hadley Centre to help the Hadley Centre prove that their datasets are widely used in order to continue to get funding to maintain and improve them. You can register at http://www.metoffice.gov.uk/hadobs/gmslp/register.html . The original dataset can be downloaded from http://www.metoffice.gov.uk/hadobs/hadslp2/data/download.html ."
message(msg)
msg <- "Using  Dataset:  HadSLP2 is subject to Crown copyright protection.
The material may be downloaded to file or printer for the purposes
of  private  study and scientific research. Any other proposed use
of  the  material is subject to a copyright license available from
the Met Office."
message(msg)
# The original data is located on [1], this is a processed version from NOAA.
url <- "ftp://ftp.cdc.noaa.gov/Datasets.other/hadslp2/slp.mnmean.real.nc"
# [1] http://www.metoffice.gov.uk/hadobs/hadslp2/data/download.html

return(url)
}
