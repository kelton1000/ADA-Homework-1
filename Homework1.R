#Challenge 1
library(tidyverse)

string <- c("There is grandeur in this view of life, with its several powers, having been originally breathed by the Creator into a few forms or into one; and that, whilst this planet has gone circling on according to the fixed law of gravity, from so simple a beginning endless forms most beautiful and most wonderful have been, and are being evolved.")
string <- gsub(pattern= "[[:punct:]]", replacement= "", x= string)
split_quote <- str_split(string, " ")
split_quote <- unlist(split_quote)
every_fourth <- split_quote[seq_along(split_quote) %% 4 == 0]
every_fourth <- sort(x = every_fourth, decreasing = TRUE)
every_fourth

#Challenge 2
m1 <- matrix(
  data = seq (from = 1, to = 159, by = 2),
  nrow = 8,
  ncol = 10
)
m1 [5, 2]
m1 [5:7, ]
m2 = m1[3:6, 4:9]
class(m2)
#What is the mode of this variable? 
#They are all modes


#Challenge 3
a= array(data = 400:1, dim = c(5, 5, 4, 4))
a [1, 1, 1, 2]
a [2, 3, 2,]
a [1:5, 1:5, 3, 3]

#Challenge 4
Hominoidea <- c("Hominidae", "Hylobatidae")
Cercopithecoidea <- c("Cercopithecidae")
Catarrhini <- list("Superfamily Hominoidea" = Hominoidea, "Superfamily Cercopithecoidea" = Cercopithecoidea)
Ceboidea <- c("Cebidae", "Atelidae", "Pitheciidae")
Platyrrhini <- list("Superfamily Ceboidea" = Ceboidea)
Simiiformes <- list("Parvorder Platyrrhini" = Platyrrhini, "Parvorder Catarrhini" = Catarrhini)
Tarsioidea <- c("Tarsiidae")
Tarsiiformes <- list("Superfamily Tarsioidea" = Tarsioidea)
Haplorhini <- list("Infraorder: Tarsiiformes" = Tarsiiformes, "Infraoder: Simiiformes" = Simiiformes)
Lemuroidea <- c("Cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae", "Daubentoniidae")
Lemuriformes <- list("Superfamily Lemuroidea" = Lemuroidea)
Lorisoidea <- c("Lorisidae", "Galagidae")
Lorisformes <- list("Superfamily Lorisoidea" = Lorisoidea)
Strepsirhini <- list("Infraorder: Lorisformes" = Lorisformes, "Infraorder: Lemuriformes" = Lemuriformes)
Primates <- list("Suborder: Strepsirhini" = Strepsirhini, "Suborder: Haplorhini" = Haplorhini)

nwm <- c(Platyrrhini)
Primates[[Platyrrhini]]




