library(data.table)
library(jsonlite)
library(xml2)

setwd("~/sas-py-r/src")

# ---------
# CSV Files
# ---------
policies <- data.table(read.csv("../data/policies.csv"))

# ----------
# JSON Files
# ----------
jsondata <- fromJSON("../data/sample.json")
print(paste("JSON:", jsondata))

# ---------
# XML Files
# ---------
xmldata <- read_xml("../data/sample.xml")
xmlcharacters <- xml_text(xml_find_all(xmldata, "//character//name"))
xmlanswer <- as.integer(xml_text(xml_find_all(xmldata, "//answer")))
print(paste("XML: (characters)", xmlcharacters))

# ------------------
# Unstructured Files
# ------------------
