# Python and R for SAS Developers

## Subsetting and Combining Data

Python and R have a number of different libraries and data structures capable of storing data in a tabular form.

This documentation uses Python's [Pandas DataFrame](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html) and R's [data.table](https://cran.r-project.org/web/packages/data.table/index.html).

These libraries can be included in your code by using the following statements:

Python:

```python
import pandas as pd
```

R:

```r
library(data.table)
```

Full example programs are available for each language in the files [04_subsetcombine.sas](../src/04_subsetcombine.sas), [04_subsetcombine.py](../src/04_subsetcombine.py) and [04_subsetcombine.r](../src/04_subsetcombine.r).

### Subsetting rows (WHERE)


### Subsetting columns (KEEP)


### Appending data (SET / PROC APPEND)


### Merging data (MERGE)




### References - Pandas DataFrame

* [http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html)

### References - R data.table

* [https://github.com/Rdatatable/data.table/wiki/Getting-started](https://github.com/Rdatatable/data.table/wiki/Getting-started)

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 03. Program Flow](04_ProgramFlow.md) | [Table of Contents](00_TOC.md) | [05. Functions &gt;&gt;](54_Functions.md) |
