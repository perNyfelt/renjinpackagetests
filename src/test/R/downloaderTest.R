# Title     : TODO
# Objective : TODO
# Created by: per
# Created on: 1/3/19
library("hamcrest")
library("downloader")
library("utils")

url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)

# First we verify that utils download.file works
download.file(url, destfile=filename)
fileExists <- file.exists(filename)
assertTrue(fileExists)
assertThat(file.exists(filename), identicalTo(TRUE))
if (fileExists) file.remove(filename)

# Now check the same thing with downloader:download
download(url, destfile=filename)
fileExists <- file.exists(filename)
assertTrue(fileExists)
assertThat(file.exists(filename), identicalTo(TRUE))
if (fileExists) file.remove(filename)