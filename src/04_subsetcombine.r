library(data.table)

setwd("~/sas-py-r/src")

# Import data produced with 'random.py'.
policies <- data.table(read.csv("../data/policies.csv"));
claims <- data.table(read.csv("../data/claims.csv"));

# -----------------------
# Subsetting rows (WHERE)
# -----------------------

polunder25 <- policies[age<25]
pol25plus <- policies[age>=25]

# -------------------------
# Subsetting columns (KEEP)
# -------------------------

polstate <- policies[, .(policy, state)]
polstate_rename <- policies[, .(policy_number=policy, state)]

# ----------------------------------
# Appending data (SET / PROC APPEND)
# ----------------------------------

combined <- rbind(polunder25, pol25plus)

# --------------------
# Merging data (MERGE)
# --------------------

merged <- merge(policies, claims, by="policy")
merged_left <- merge(policies, claims, by="policy", all.x=TRUE)
