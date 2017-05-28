library(lubridate)

setwd("~/sas-py-r/src")

# ----------------
# String Functions
# ----------------
wordarray <- c("Hello", "World")
words <- "Hello World"

print(paste("CAT:", paste(wordarray, collapse='') ))
print(paste("CATX:", paste(wordarray, collapse=',') ))
print(paste("CHAR:", substr(words, 0, 1) ))
print(paste("COMPBL:", gsub("\\s+", " ", "Hello World  with   lots    of     space") ))
print(paste("COMPRESS:", gsub(" ", "", words) ))
print(paste("FIND:", regexpr("World", words) ))
print(paste("IFC:", ifelse(1<2, "Correct", "Incorrect") ))
print(paste("INDEX:", regexpr("World", words) ))
print(paste("INPUT:", as.integer("42") ))
print(paste("LEFT:", trimws("  Hello World  ", "left") ))
print(paste("LENGTH:", nchar(words) ))
print(paste("LOWCASE:", tolower(words) ))
print(paste("PUT:", as.character(42) ))
print(paste("QUOTE:", paste('"', words, '"') ))
print(paste("REPEAT:", paste(rep('z', 42), collapse='') ))
print(paste("SCAN:", strsplit(words, " ")[[1]][2] ))
print(paste("STRIP:", trimws("  Hello World  ", "both") ))
print(paste("TRANSLATE:", gsub("l", "?", words) ))
print(paste("TRANWRD:", gsub("World", "Earth", words) ))
print(paste("TRIM:", trimws("  Hello World  ", "right") ))
print(paste("UPCASE:", toupper(words) ))

# ----------------------
# Mathematical Functions
# ----------------------

# ----------------------
# Mathematical Constants
# ----------------------
print(paste("E:", exp(1) ))
print(paste("PI:", pi ))

# ------------------
# Datetime Functions
# ------------------
d <- Sys.Date()
print(paste("DATE:", d ))
dt <- Sys.time()
print(paste("DATETIME:", dt ))
t <- dt - floor_date(dt, unit='days')
print(paste("TIME:", format(t) ))

print(paste("DATEPART:", date(dt) ))
print(paste("DAY:", day(d) ))
print(paste("HOUR:", hour(dt) ))
print(paste("INPUT:", as.Date("2017-02-28") ))
d1 <- ymd("2016-02-12")
d2 <- ymd("2017-02-06")
print(paste("INTCK:", (d1 %--% d2) %/% months(1) ))
print(paste("INTNX:", dt + years(1) ))
print(paste("MINUTE:", minute(dt) ))
print(paste("MONTH:", month(d) ))
print(paste("PUT:", format(d, "%d%b%Y") ))
print(paste("QTR:", quarters(d) ))
print(paste("SECOND:", second(dt) ))
print(paste("TIMEPART:", dt - floor_date(dt, unit='days') ))
print(paste("TODAY:", Sys.Date() ))
print(paste("WEEK:", week(d) ))
print(paste("WEEKDAY:", weekdays(d) ))
print(paste("YEAR:", year(d) ))
print(paste("YRDIF:", (d1 %--% d2) %/% years(1) ))

# -----------------------
# Miscellaneous Functions
# -----------------------

# ----------------------
# User Defined Functions
# ----------------------
mysum <- function(val1, val2) {
  return(val1 + val2)
}

print(paste("MYSUM: ", mysum(18, 24)))
