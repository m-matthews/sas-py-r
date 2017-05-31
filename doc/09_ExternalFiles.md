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
with open("../data/sample.json", 'r') as f:
    jsondata = json.load(f)
```

R:

```r
jsondata <- fromJSON("../data/sample.json")
```


### XML

Python:

```python
tree = ElementTree.parse("../data/sample.xml")
for child in tree.getroot():
    for subchild in child.iter():
        if subchild.tag in ("name", "answer"):
            print("XML:", subchild.tag, "=", subchild.text)
```

R:

```r
xmldata <- read_xml("../data/sample.xml")
xmlcharacters <- xml_text(xml_find_all(xmldata, "//character//name"))
xmlanswer <- as.integer(xml_text(xml_find_all(xmldata, "//answer")))
```


### Unstructured

Python:

```python
```

R:

```r
```


---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 08. Graphics](08_Graphics.md) | [Table of Contents](00_TOC.md) | [10. Database Tables &gt;&gt;](10_Databases.md) |
