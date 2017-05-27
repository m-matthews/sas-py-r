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

The following example programs subset the `policies` data into new tables `polunder25` (rows where age &lt; 25) and `pol25plus` (rows where age &gt;= 25).

Python:

```python
polunder25 = policies[policies["age"]<25]
pol25plus = policies[policies["age"]>=25]
```

R:

```r
polunder25 <- policies[age<25]
pol25plus <- policies[age>=25]
```

### Subsetting columns (KEEP)

The following example programs subset the `policies` data keeping all rows, however subsetting the number of columns to include only `policy` and `state`.  The second example in each case renames the column `policy` to `policy_number`.

Python:

```python
polstate = policies.loc[:,("policy","state")]
polstate_rename = policies.loc[:,("policy","state")].rename(columns={"policy": "policy_number"})
```

R:

```r
polstate <- policies[, .(policy, state)]
polstate_rename <- policies[, .(policy_number=policy, state)]
```

### Appending data (SET / PROC APPEND)

Appending two tables is performed in the following examples, where the two subsets of the original `policies` table are re-joined to create a table with the same contents as the original (although the table row order will be different).

Python:

```python
combined = pd.concat([polunder25, pol25plus])
```

R:

```r
combined <- rbind(polunder25, pol25plus)
```

### Merging data (MERGE)

There are many methods of merging data.  The following two examples include an inner join and a left join.  Reading the documentation on the `merge` options will include details on how to produce other join styles.

Python:

```python
merged = policies.merge(claims)
merged_left = policies.merge(claims, how="left")
```

R:

```r
merged <- merge(policies, claims, by="policy")
merged_left <- merge(policies, claims, by="policy", all.x=TRUE)
```

### References - Pandas DataFrame

* [http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.html)

### References - R data.table

* [https://github.com/Rdatatable/data.table/wiki/Getting-started](https://github.com/Rdatatable/data.table/wiki/Getting-started)

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 03. Program Flow](03_ProgramFlow.md) | [Table of Contents](00_TOC.md) | [05. Functions &gt;&gt;](05_Functions.md) |
