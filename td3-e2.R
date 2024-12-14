#Construction du jeu de données

A = c(63,59,63,65,79,63,76,64,62,74,74,77,78,69,64,74,71,63,74,64)
B = c(64,69,67,67,66,70,68,62,69,65,64,69,72,68,72,64,69,67,65,63)
C = c(65,58,65,76,68,75,77,64,75,78,58,68,73,76,76,59,65,75,77,81)


#Indicateur statistique

marque <- c("A","B","C")

moyenne <-c(mean(A),mean(B),mean(C))

#Calcul du mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode <- c(getmode(A),getmode(B),getmode(C))

ecartype <-c(sd(A),sd(B),sd(C))

etendu <- c(max(A)-min(A),max(B)-min(B),max(C)-min(C))

quantile1 <- c(quantile(A,na.rm = T,probs = c(0.25)),
              quantile(B,na.rm = T,probs = c(0.25)),
              quantile(C,na.rm = T,probs = c(0.25)))

quantile2 <- c(quantile(A,na.rm = T,probs = c(0.75)),
               quantile(B,na.rm = T,probs = c(0.75)),
               quantile(C,na.rm = T,probs = c(0.75)))

mediane <- c(median(A),median(B),median(C))

coefvar <-c(sd(A)/mean(A),sd(B)/mean(B),sd(C)/mean(C))

###Regroupement dans un tableau 


valeurs <- rbind(moyenne,mode,ecartype,quantile1,mediane,quantile2,etendu,coefvar)


#mettre les noms
colnames(valeurs) = c("A","B","C")
rownames(valeurs) = c("moyenne",
                      "mode",
                      "écart-type",
                      "Quantile_25%",
                      "médiane",
                      "quantile_75%",
                      "étendu",
                      "coef_variation")

valeurs




### Question 2 ###

#boite à moustache

boxplot(A,B,C,
        col=c("red","blue","yellow"),
        main="Boite à moustaches",
        names=c("Pile A","Pile B","Pile C")
        , ylim=c(55,85))

