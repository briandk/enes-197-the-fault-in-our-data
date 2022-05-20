# bslib is necessary for `bookdown::bs4_book()` output format
install.packages(c("remotes"))
remotes::install_github("rstudio/bookdown", "main")

install.packages(c(
                   "bslib",
                   "downlit",
                   "dplyr",
                   "magrittr",
                   "reticulate",
                   "tidyverse",
                   "xml2"))

