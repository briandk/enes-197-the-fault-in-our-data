# I believe bslib and downlit are necessary for `bookdown::bs4_book()` output format
install.packages(c("curl", "remotes"))
remotes::install_github("rstudio/bookdown@main")

install.packages(c(
                   "bslib",
                   "downlit",
                   "dplyr",
                   "magrittr",
                   "reticulate",
                   "tidyverse",
                   "xml2"))

