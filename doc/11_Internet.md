# Python and R for SAS Developers

## Internet Access

Python and R include a number of libraries for internet access.  The following examples use [requests](http://docs.python-requests.org/en/master/) and [urllib](https://docs.python.org/3/library/urllib.html) for Python and [jsonlite](???) for R.

Example programs are available for each language in the files [11_internet.py](../src/11_internet.py) and [11_internet.r](../src/11_internet.r).

Python:

```python
import requests

r = requests.get("https://api.github.com/users/m-matthews")

print("\nEncoding:", r.encoding)

# Read as a text stream.
print("\nText:", r.text[:20], "...")

# Read and convert JSON data.
j = r.json()
print("\nName:", j["name"], "\nLocation:", j["location"])
```

R:

```r
library(jsonlite)

# Read as a text stream.
r <- readLines("https://api.github.com/users/m-matthews")
head(r)

# Read and convert JSON data.
r = fromJSON("https://api.github.com/users/m-matthews")
print(paste("Name:", r["name"], "Location:", r["location"]))
```

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 10. Databases](10_Databases.md) | [Table of Contents](00_TOC.md) |  |
