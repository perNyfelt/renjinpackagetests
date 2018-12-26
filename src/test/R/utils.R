# Title     : TODO
# Objective : TODO
# Created by: per
# Created on: 12/26/18
library("hamcrest")
library("utils")

test.download.file <- function() {
    url <- "http://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
    filename <- basename(url)
    download.file(url, destfile = filename)
    assertTrue(file.exists(filename))
    if (file.exists(filename)) {
        file.remove(filename)
    }
}
