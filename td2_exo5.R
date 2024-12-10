
#initialisation des variables
annee <- c(1999,2000,2001,2002,2003,2004)
nbr <- c(87949,88341,84144,87439,80885,78280)
prop_nbr <- prop.table(nbr)

#fonction pour calculer le cumule des effectifs
cumule <- function(v) {
  re = v
  for (i in 2:length(v)) {
    re[i] = re[i-1]+v[i]
  }
  return(re)
}

#On calcule les effectifs cumulés pour l'effectifs et la fréquence
cumule_nbr <-cumule(nbr)
cumul_prop <-cumule(prop.table(nbr))

#On regroupe ces variables dans un dataframe
df5 <- data.frame(annee,nbr,cumule_nbr,prop_nbr,cumul_prop)




barplot(df5[,4],df5[,1], xlab = "annee",names = annee)
box()



