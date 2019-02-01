library('hamcrest')

library('foreign')

savFile <- "WeightHeight.sav"
df = read.spss(savFile, to.data.frame=TRUE)

assertTrue(exists("df"))
#str(df)