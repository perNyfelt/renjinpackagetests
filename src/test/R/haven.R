library(hamcrest)

library(haven)
sasData <- read_sas("weighthight.sas7bdat")
assertTrue(exists("sasData"))

# cleanup
if (exists("sasData")) {
	rm(data)
}