# Python and R for SAS Developers

## Procedures

SAS Software includes pre-written procedures to perform functions, usually on complete datasets.  These pre-written functions include data manipulationm, statistical, graphical and utility functionality.

Following is a list of frequently used SAS procedures, and comparable code that could be used in Python and R.

Full example programs are available for each language in the files [06_procedures.sas](../src/06_procedures.sas), [06_procedures.py](../src/06_procedures.py) and [06_procedures.r](../src/06_procedures.r).

### PROC APPEND

PROC APPEND is used to concatenate two SAS datasets together.  This can also be done with a DATA Step and multiple datasets on a SET statement.

Python:

```python
    # Use concat() for a list of dataframes to append, or append() to add one new.
    dfnew = pd.concat([df1, df2, ... dfn])
    dfnew = df1.append(df2)
```

R:

```r
    dtnew <- rbind(dt1, dt2)
```

### PROC FCMP

### PROC FREQ


Python:

```python
    df.groupby(['classvar'])['classvar'].count().to_frame()
```

R:

```r
    dt[,.N,classvar]
```

### PROC G*
SAS/GRAPH procedures are discussed in section [07. Graphics]([07_Graphics.md]).

### PROC SORT

PROC SORT is used to sort SAS Datasets.  Python and R have methods for sorting data, however it is worth considering how the other languages process data.  Often the sorting process required with SAS is not required in Python or R.

Python:

```python
    df_sorted = dfpolicies.sort_values(by=['make', 'age'], ascending=[0, 1])
```

R:

```r
    dtsorted <- dtpolicies[order(make, age)]
```

### PROC SUMMARY / MEANS

Python:

```python
    df_summary1 = dfpolicies.groupby(['make'])['age'].mean().to_frame()
```

R:

```r
    dtsummary1 <- dtpolicies[,mean(age),make]
```

### PROC TRANSPOSE

The TRANSPOSE procedure is used to pivot tables.

SAS:

```sas
    proc transpose data=work.pol_state_make
                   out=work.transposed(drop=_name_ _label_);
      by state;
      id make;
      var count;
   run;
```

Python:

```python

```

R:

```r
dtpol_state_make <- dtpolicies[,mean(age),list(state,make)]
dttransposed <- dcast.data.table(melt(dtpol_state_make, id.vars = c("state", "make")), state ~ make)
```

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 05. Functions](05_Functions.md) | [Table of Contents](00_TOC.md) | [07. Statistics &gt;&gt;](07_Statistics.md) |
