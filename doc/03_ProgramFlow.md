# Python and R for SAS Developers

## Program Flow

Traditional [SAS](https://www.sas.com/) programs are comprised of two types of steps, the DATA Step and the PROC Step, with the SAS Macro Language available to enable conditional and loop based control around segments of code.

Note that Python has a very strict indenting process which defines the blocks of code that SAS would traditionally surround with a `DO` / `END` block.

Full example programs are available for each language in the files [03_programflow.py](../src/03_programflow.py) and [03_programflow.r](../src/03_programflow.r).

## Conditional Execution

The following examples show conditional code execution.

Python:

```python
if answer==42:
    x = x+1
    print("Correct")
elif answer<42:
    x = x-1
    print("Too small")
else:
    x = x-1
    print("Too big")

if word in ("Hello", "Goodbye"):
    print("Found")
```

R:

```r
if (answer==42) {
  x <- x+1
  print("Correct")
} else if (answer<42) {
  x <- x-1
  print("Too small")
} else {
  x <- x-1
  print("Too big")
}

if (word %in% c("Hello", "Goodbye")) {
  print("Found")
}
```

## Loops

The following examples show looping options.

Python:

```python
for i in range(10):
    print(i)  # Output is 0, 1, 2, ... 8, 9

for i in range(3, 9, 2):
    print(i)  # Output is 3, 5, 7

for w in ("Hello", "World"):
    print(w)

# Multiple variables in the constant list.
for i, w in ((21, "Hello"), (42, "World")):
    print(i, w)  # Output is 21 Hello, 42 World

# Enumerate gives an ascending id to each iteration starting at 0.
for i, w in enumerate(("Hello", "World")):
    print(i, w)  # Output is 0 Hello, 1 World

import os
for file in sorted(os.listdir("../doc")):
    print(file)
```

R:

```r
for (i in seq(10)) {
  print(i)  # Output is 1, 2, 3, ... 9, 10
}

for (i in seq(3, 7, 2)) {
  print(i)  # Output is 3, 5, 7
}

for (w in c("Hello", "World")) {
  print(w)
}

for (file in list.files("../doc")) {
  print(file)
}
```

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 02. Data Types](02_DataTypes.md) | [Table of Contents](00_TOC.md) | [04. Subsetting and Combining Data &gt;&gt;](04_SubsetCombine.md) |
