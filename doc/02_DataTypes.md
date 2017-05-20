# Python and R for SAS Developers

## Data Types

Base SAS has only two types of variables (character and numeric), however through the use of
SAS formats and numeric variable length, the use of these variables can support numerous
types including date and timestamps.

|                | SAS Dataset | SAS DS2     | Python        | R                |
| -------------- | ----------- | ----------- | ------------- | ---------------- |
| Boolean        | numeric     | binary      | boolean       | logical          |
| Floating Point | numeric     | real        | float         | numeric          |
| Integer        | numeric `*` | integer     | int           | integer          |
| String         | character   | char        | str / bytes   | character / raw  |
| Complex        |             |             | complex       | complex          |
| Datetime       | numeric `*` | timestamp   | datetime      | POSIXct / POSIXt |
| Date           | numeric `*` | date        | date          | Date             |
| Time           | numeric `*` | time        | time          |                  |

`*` A SAS `FORMAT` can be applied to variables to meet similar specifications to the other languages.

Example programs are available for each language [02_datatypes.py](../src/02_datatypes.py) and [02_datatypes.r](../src/02_datatypes.r).


## Arrays

Base SAS supports ARRAYS, yet Python and R have both arrays and more complex vector types.


### Python

Python includes the following base data types.

| Data Type  | Description                           | Example                                |
| ---------- | ------------------------------------- | -------------------------------------- |
| Tuple      | Fixed size list                       | `x = (1, 2, 3, "a")`                   |
| List       | Mutable list                          | `x = [1, 2, 3, "a"]`                   |
| Dictionary | Key/Value pairs                       | `x = {"answer": 42, "hello": "world"}` |
| Set        | Unordered collection of unique values | `x = set([1, 2, 3, "a"])`              |

Python also includes list comprehensions, which enable efficient operations on lists:

```python
    x = [1, 2, 3, 4]
    # Double the value for each entry in the list.
    print([a*2 for a in x]) # Output is [2, 4, 6, 8]
    # Double the value for each entry in the list where the value <= 2.
    print([a*2 for a in x if a<=2]) # Output is [2, 4]
```

The [numpy](http://www.numpy.org/) library includes additional array data types and also functions to perform complex operations.

```python
    x = [1, 2, 3, 4]
    # Try to use multiplication on the list.
    print(x*2) # Output is [1, 2, 3, 4, 1, 2, 3, 4]
    # Use numpy for multiplication.
    import numpy as np
    print(np.asarray(x)*2) # Output is array([2, 4, 6, 8])
```


### R

Array like functionality can be created in R using the `c` function.


```r
    x <- c(1, 2, 3, 4)
    # Double the value for each entry in the list.
    print(x*2) # Output is 2 4 6 8
```


---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 01. Introduction](01_Introduction.md) | [Table of Contents](00_TOC.md) | [03. Program Flow &gt;&gt;](03_ProgramFlow.md) |
