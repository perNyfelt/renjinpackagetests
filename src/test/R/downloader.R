library("hamcrest")
library("org.renjin.cran:downloader")

test.download <- function() {
    url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
    filename <- basename(url)
    download(url, destfile=filename)
    fileExists <- file.exists(filename)
    assertTrue(fileExists)
    if (fileExists) file.remove(filename)
}