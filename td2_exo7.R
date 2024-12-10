
#On initialise les variable
a <- c(2,1,2,3,1,3,0,2,4,2,2,1,3,4,0)
b <- c(0,0,0,0,1,0,0,0,0,0,0,0,0,0,0)
c <- c(2,1,2,3,1,3,4,2,4,2,20,10,5,2,3)

#On calcul la moyenne
mean(a);mean(b);mean(c)



#on calcul le mode

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmode(a);getmode(b);getmode(c)



#on calcul la mediane
median(a);median(b);median(c)


#on calcul l'écart-type
sd(a);sd(b);sd(c)


#on cherche l'écart absolu à la moyenne

ecart <- function(x){
  s = 0
  n = length(x)
  for (i in 1:n) {
    s = s + abs(x[i]-mean(x))
  }
  return(s/n)
}

ecart(a);ecart(b);ecart(c)


