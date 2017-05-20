library(jsonlite)

# -------------
# READ URL DATA
# -------------

# Read as a text stream.
r <- readLines("https://api.github.com/users/m-matthews")
head(r)

# Read and convert JSON data.
r = fromJSON("https://api.github.com/users/m-matthews")
print(paste("Name:", r["name"], "Location:", r["location"]))
