get.hadslp2.url <-  function() { 
# The original data is located on.
msg <- "Please register with the Hadley Centre to help the Hadley Centre prove that their datasets are widely used in order to continue to get funding to maintain and improve them. You can register at http://www.metoffice.gov.uk/hadobs/gmslp/register.html . The original dataset can be downloaded from http://www.metoffice.gov.uk/hadobs/hadslp2/data/download.html ."
message(msg)
url <- "ftp://ftp.cdc.noaa.gov/Datasets.other/hadslp2/slp.mnmean.real.nc"
return(url)
}
