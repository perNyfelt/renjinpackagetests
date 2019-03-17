library('hamcrest')
library('xlsx')
excelFile <- "mtcars.xlsx"
stopifnot(file.exists(excelFile))
# xlsx is not honoring working dir properly, must use absolute path
excelFile <- normalizePath(excelFile)

workbook <- loadWorkbook(excelFile)
excelDf <- readColumns(getSheets(workbook)[[1]], startColumn = 2, endColumn = 12, startRow = 2, endRow = 12, header = TRUE)

expectedDf <- mtcars[1:10,]

assertThat(nrow(expectedDf), identicalTo(nrow(excelDf)))
assertThat(ncol(expectedDf), identicalTo(ncol(excelDf)))

for (col in 1:ncol(expectedDf)) {
    for(row in 1:nrow(expectedDf)) {
        assertThat(expectedDf[row, col], identicalTo(excelDf[row, col]))
    }
}