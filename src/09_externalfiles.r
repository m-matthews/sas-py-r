library(data.table)
library(jsonlite)
library(readxl)
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

# ----------
# XSLX Files
# ----------
characters <- data.table(read_excel("../data/sample.xlsx"))

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
lines <- readLines("../data/sample.txt")
for (line in lines) {
  if (length(line) == 0) {
    continue
  } else if (substr(line,0,1) != '-') {
    character <- line
  } else {
    line <- strsplit(line, ",")[[1]]
    actor <- line[1]
    actor <- substr(actor, 3, nchar(actor))
    methods <- line[2:length(line)]
    print(paste(character, "played by", actor, "in", paste(methods, collapse=" &")))
  }
}

