library('hamcrest')
library('xlsx')
excelFile <- "mtcars.xlsx"
stopifnot(file.exists(excelFile))
# xlsx is not honoring working dir properly, must use absolute path
excelFile <- normalizePath(excelFile)

excelDf <- read.xlsx(excelFile, 1, colIndex=c(2:12), startRow = 2, endRow = 12, header = TRUE)
expectedDf <- mtcars[1:10,]

assertThat(nrow(expectedDf), identicalTo(nrow(excelDf)))
assertThat(ncol(expectedDf), identicalTo(ncol(excelDf)))

for (col in 1:ncol(expectedDf)) {
    for(row in 1:nrow(expectedDf)) {
        assertThat(expectedDf[row, col], identicalTo(excelDf[row, col]))
    }
}