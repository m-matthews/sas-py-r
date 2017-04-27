library(data.table)
library(psych)

setwd("~/sas-py-r/src")

# Import data produced with 'random.py'.
dtpolicies <- data.table(read.csv("../data/policies.csv"));
dtclaims <- data.table(read.csv("../data/claims.csv"));

# Split data into under 25 and others using WHERE clauses.
dtunder25 <- dtpolicies[age<25]
dt25plus <- dtpolicies[age>=25]

# -----------
# PROC APPEND
# -----------

dtnew <- rbind(dtunder25, dt25plus)

# ---------
# PROC FCMP
# ---------

age_norm <- function(age) {
  return((min(99,max(18,age))-18)/(99-18))
}

dttest <- data.table( age=seq(1,105) )
dttest[, norm:= age_norm(age), by=1:nrow(dttest)]

# ---------
# PROC FREQ
# ---------

# Count of rows by Make.
dtpolicies[,.N,make]

# Count of non-missing data by Make.

# ---------
# PROC SORT
# ---------

# Note: many of the reasons for sorting in SAS are not necessary in R.
dtpolicies <- dtpolicies[order(state, age)]

# --------------------
# PROC SUMMARY / MEANS
# --------------------

dtpolicies[,mean(age),make]
describeBy(dtpolicies, group='make')

# --------------
# PROC TRANSPOSE
# --------------

dtpol_state_make <- dtpolicies[,mean(age),list(state,make)]
dttransposed <- dcast.data.table(melt(dtpol_state_make, id.vars = c("state", "make")), state ~ make)
