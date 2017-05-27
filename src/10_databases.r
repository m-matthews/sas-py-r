library(data.table)
library(RPostgreSQL)

setwd("~/sas-py-r/src")

# ------------------------
# POSTGRESQL - RPostgreSQL
# ------------------------

# Create the connection to the database.
con <- dbConnect(dbDriver("PostgreSQL"), host="localhost", port=5432, dbname="postgres",
                 user="pguser", password="pgpass")

# Create a data.table from a query.
table <- as.data.table(dbGetQuery(con, "SELECT * FROM public.test_table"))
head(table)

# Disconnect from the database.
dbDisconnect(con)
