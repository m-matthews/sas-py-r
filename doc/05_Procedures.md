# Python and R for SAS Developers

## Procedures

SAS Software includes pre-written procedures to perform functions, usually on complete datasets.  These pre-written functions include data manipulationm, statistical, graphical and utility functionality.

Following is a list of frequently used SAS procedures, and comparable code that could be used in Python and R.

### PROC APPEND

PROC APPEND is used to concatenate two SAS datasets together.  This can also be done with a DATA Step and multiple datasets on a SET statement.

Python:

    # Use concat() for a list of dataframes to append, or append() to add one new.
    dfnew = pd.concat([df1, df2, ... dfn])
    dfnew = df1.append(df2)

### PROC FCMP

### PROC FREQ

### PROC G*
SAS/GRAPH procedures are discussed in section [07. Graphics]([07_Graphics.md]).

### PROC MEANS

### PROC SORT

### PROC SUMMARY

### PROC TRANSPOSE

...

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 04. Functions](04_Functions.md) | [Table of Contents](00_TOC.md) | [06. Statistics &gt;&gt;](06_Statistics.md) |
