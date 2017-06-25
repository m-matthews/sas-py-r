# Python and R for SAS Developers

## Reading and Writing External Files

SAS Software has many functions to be able to read and write to external file structures.  Due to its origins on MVS mainframes, it has the ability to read data from that environment, through to many other file structures from the various environments it supports.

Python and R also have libraries to be able to read a wide variety of file formats.

Full example programs are available for each language in the files [09_externalfiles.py](../src/09_externalfiles.py) and [09_externalfiles.r](../src/09_externalfiles.r).


### CSV

Python:

```python
policies = pd.read_csv("../data/policies.csv")
```

R:

```r
policies <- data.table(read.csv("../data/policies.csv"))
```


### JSON

Python:

```python
import json

with open("../data/sample.json", 'r') as f:
    jsondata = json.load(f)
```

R:

```r
library(jsonlite)

jsondata <- fromJSON("../data/sample.json")
```


### XLSX (Microsoft Excel)

Python:

```python
characters = pd.read_excel("../data/sample.xlsx")
```

R:

```r
library(readxl)

characters <- data.table(read_excel("../data/sample.xlsx"))
```


### XML

Python:

```python
from xml.etree import ElementTree

tree = ElementTree.parse("../data/sample.xml")
for child in tree.getroot():
    for subchild in child.iter():
        if subchild.tag in ("name", "answer"):
            print("XML:", subchild.tag, "=", subchild.text)
```

R:

```r
library(xml2)

xmldata <- read_xml("../data/sample.xml")
xmlcharacters <- xml_text(xml_find_all(xmldata, "//character//name"))
xmlanswer <- as.integer(xml_text(xml_find_all(xmldata, "//answer")))
```


### Unstructured

The following example reads a [text file](../data/sample.txt) with a custom structure in both Python and R.

Python:

```python
with open("../data/sample.txt", 'r') as f:
    for line in f.readlines():
        if len(line)==0:
            continue
        elif line[0]!='-':
            character = line.rstrip()
        else:
            line = line[2:].rstrip().split(',')
            actor = line[0]
            methods = [m.strip() for m in line[1:]]
            print(character, "played by", actor, "in", " & ".join(methods))
```

R:

```r
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
```


---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 08. Graphics](08_Graphics.md) | [Table of Contents](00_TOC.md) | [10. Database Tables &gt;&gt;](10_Databases.md) |
