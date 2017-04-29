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

# ----------------------
# Mathematical Functions
# ----------------------

# ------------------
# Datetime Functions
# ------------------

# -----------------------
# Miscellaneous Functions
# -----------------------

# ----------------------
# User Defined Functions
# ----------------------
