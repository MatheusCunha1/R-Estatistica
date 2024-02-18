calcular_dosage <- function(lowdose, meddose, highdose, doselevel) {
  
  if ("High" %in% doselevel) {
    lowdose <- ifelse(lowdose >= 10, 10, lowdose / 2)
    meddose <- ifelse(meddose >= 26, 26, meddose)
    highdose <- ifelse(highdose < 60, 60, highdose * 1.5)
    
    dosage <- rep(lowdose, length(doselevel))
    dosage[doselevel == "Med"] <- meddose
    dosage[doselevel == "High"] <- highdose
  } else {
    doselevel <- ifelse(doselevel == "Low", "Small", ifelse(doselevel == "Med", "Large", doselevel))
    
    if (lowdose < 15 & meddose < 35) {
      lowdose <- lowdose * 2
      meddose <- meddose + highdose
    }
    
    dosage <- rep(lowdose, length(doselevel))
    dosage[doselevel == "Large"] <- meddose
  }
  
  return(dosage)
}


lowdose <- 8
meddose <- 30
highdose <- 70
doselevel <- c("Low", "Med", "High", "Low")

dosage <- calcular_dosage(lowdose, meddose, highdose, doselevel)
print(dosage)