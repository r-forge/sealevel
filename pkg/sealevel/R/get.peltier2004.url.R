get.peltier2004.url <- function(type="sea") {
  # Predictions for ICE-5G (VM2 L90) model (version 1.3)
  # Details of the model in http://www.atmosp.physics.utoronto.ca/~peltier/datasets/visc_models/VM2_L90.txt
  # W.R. Peltier, 2004. Global Glacial Isostasy and the Surface of the Ice-Age Earth: The ICE-5G (VM2) Model and GRACE, Ann. Rev. Earth and Planet. Sci., 32, 111-149. 
  if (type=="sea"){
    url <- "http://www.atmosp.physics.utoronto.ca/~peltier/datasets/GRID/dsea250.1grid.ICE5Gv1.3_VM2_L90_2012.nc"
  }
  else if (type=="rad"){
    url <- "http://www.atmosp.physics.utoronto.ca/~peltier/datasets/GRID/drad250.1grid.ICE5Gv1.3_VM2_L90_2012.nc"
  }
  else if (type=="geoid"){
    url <- "http://www.atmosp.physics.utoronto.ca/~peltier/datasets/GRID/dGeoid250.1grid.ICE5Gv1.3_VM2_L90_2012.nc"
  }
  else if (type=="hor") {
    url <- "http://www.atmosp.physics.utoronto.ca/~peltier/datasets/GRID/hor_vel250.1grid.ICE5Gv1.3_VM2_L90_2012.nc"
  }
  return(url)
}
