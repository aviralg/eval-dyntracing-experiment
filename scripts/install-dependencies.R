
install_r_dependencies <- function() {
    dependencies <- c("gdata", "optparse", "tidyverse",
                      "stringi", "ggthemes", "scales",
                      "crayon", "magrittr", "lubridate",
                      "broom", "stringr", "hashmap",
                      "gridExtra", "kableExtra", "png",
                      "ggplot2", "knitr", "bookdown",
                      "RSQLite", "dbplyr", "DT", "tidyr",
                      "dplyr", "ggsci", "rvest", "httr",
                      "progress", "htmltidy", "devtools",
                      "roxygen2", "fs")

    dependencies <- setdiff(dependencies, installed.packages())
    if (length(dependencies) > 0) {
        install.packages(dependencies,
                         repos = "http://cran.us.r-project.org",
                         INSTALL_opts = c("--with-keep.source",
                                          "--example",
                                          "--install-tests"))
    }
}


main <- function() {
    install_r_dependencies()
}

main()
