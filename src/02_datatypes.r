library(data.table)
library(psych)

setwd("~/sas-py-r/src")

# ----------
# Data Types
# ----------

bvar = TRUE
nvar = 42.0
ivar = as.integer(42)
svar = "Hello World"
dtvar = as.POSIXct("2017-02-28 12:00:00 PM", format = "%Y-%m-%d %I:%M:%S %p")
dvar = as.Date("2017-02-28")

print(paste("Boolean:", bvar, class(bvar)))
print(paste("Floating Point:", nvar, class(nvar)))
print(paste("Integer:", ivar, class(ivar)))
print(paste("String:", svar, class(svar)))
print(paste("Datetime:", dtvar, class(dtvar)))
print(paste("Date:", dvar, class(dvar)))

# ------
# Arrays
# ------
x <- c(1, 2, 3, 4)
print(x*2) # Output is 2 4 6 8