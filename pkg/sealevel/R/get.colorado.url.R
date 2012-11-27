get.colorado.url <- function(location='Global') {
  
  datasets <- data.frame(
                         waterbody=c("Global", "Pacific Ocean", "Atlantic Ocean", "Indian Ocean", "Adriatic Sea", "Andaman Sea", "Arabian Sea", "Bay of Bengal", "Bering Sea", "Carribean Sea", "Gulf of Alaska", "Gulf of Mexico", "Indonesian Throughflow", "Mediterranean Sea", "Sea of Japan/East Sea", "South China Sea", "Yellow Sea", "Maldives"),
                         files=c("sl_ib_global", "sl_ib_Pacific_Ocean", "sl_ib_Atlantic_Ocean", "sl_ib_Indian_Ocean", "sl_ib_Adriatic_Sea", "sl_ib_Andaman_Sea", "sl_ib_Arabian_Sea", "sl_ib_Bay_of_Bengal", "sl_ib_Bering_Sea", "sl_ib_Carribean_Sea", "sl_ib_Gulf_of_Alaska", "sl_ib_Gulf_of_Mexico", "sl_ib_Indonesian_Throughflow", "sl_ib_Mediterranean_Sea", "sl_ib_Japan-East_Sea", "sl_ib_South_China_Sea", "sl_ib_Yellow_Sea", "sl_ib_Maldives")
                         )

  urlformat <- 'http://sealevel.colorado.edu/files/current/%s.txt'
  datasets$urls <- sprintf(urlformat, datasets$files)
  url <- subset(datasets, waterbody==location)$urls
  return(url)
}
