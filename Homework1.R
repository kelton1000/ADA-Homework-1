library(tidyverse)

string <- c("There is grandeur in this view of life, with its several powers, having been originally breathed by the Creator into a few forms or into one; and that, whilst this planet has gone circling on according to the fixed law of gravity, from so simple a beginning endless forms most beautiful and most wonderful have been, and are being evolved.")
string <- gsub(pattern= "[[:punct:]]", replacement= "", x= string)
split_quote <- str_split(string, " ")
split_quote <- unlist(split_quote)
every_fourth <- split_quote[seq_along(split_quote) %% 4 == 0]
every_fourth <- sort(x = every_fourth, decreasing = TRUE)
every_fourth
