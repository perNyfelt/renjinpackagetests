library(hamcrest)

library(sas7bdat)
sasData<- read.sas7bdat("weighthight.sas7bdat", debug=FALSE)
assertTrue(exists("sasData"))
# cleanup
if (exists("sasData")) rm(data)
