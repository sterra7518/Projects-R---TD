
jour <- c(1,2,3,5,6,7,8,9,10,12,13,15,16,17,19,20,21,22,23,24,26,27,28,29,30,31)
CA <- c(300,360,440,360,280,300,260,420,480,300,280,320,360,440,320,260,300,240,440,520,320,260,320,300,360,420)


dfCA <- data.frame(jour,CA)
dfCA

classeCA <- cut(CA,c(240,290,340,390,440,490,540),right = FALSE,include.lowest = TRUE)
classeCA
table(classeCA)

#moyenne 
mean(CA)
#médiane
median(CA)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(CA)
