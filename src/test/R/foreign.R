library('hamcrest')

library('foreign')

savFile <- "WeightHeight.sav"
# THis will break the test run so commented out, FIXME!
#spssDf = read.spss(savFile, to.data.frame=TRUE)

assertTrue(exists("spssDf"))
#str(df)