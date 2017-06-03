# Python and R for SAS Developers

## Introduction

This repository discusses [Python](https://www.python.org/) and [R](https://www.r-project.org/) programming from a [SAS](https://www.sas.com/) developer perspective.

The majority of content and code in this repository compare traditional SAS development code using Data Step and Proc Steps, rather than the newer DS2 and Integration Technologies (which can be accessed via any language eg: Java).

It should be noted that this is not a comprehensive coverage of any of the languages, but can assist in
understanding the corresponding capabilities and functionality.


## Comparison

The following table provides comparisons between the different languages.  Note that the SAS examples are considering the more traditional use of SAS with Data Steps and Proc Steps.

|              | SAS           | Python           | R           |
| ------------ | ------------- | ---------------- | ----------- |
| Introduced   | 1976          | 1991             | 1993        |
| IDE          | Display Manager <br/> Enterprise Guide | Spyder | R Studio |
| Extension    | *.sas         | *.py             | *.r         |
| License      | Proprietary   | Open Source      | Open Source |
| Developed In | C / C++ / SAS | C / C++ / Python | C / C++ / R |
| Processing   | Disk          | Memory           | Memory      |
| Row Limits   | ~9.2 x 10<sup>18</sup>  | Memory           | Memory      |

SAS, Python and R also work with the [Jupyter Notebook](https://jupyter.org/) collaboration tool.

- [Python Jupyter Notebook Example](../src/01_introduction_python.ipynb)
- [R Jupyter Notebook Example](../src/01_introduction_r.ipynb)

Processing with SAS occurs on disk with SAS datasets (unless using the `memlib` option, RAM disks or newer technologies such as
SAS HPA can use memory).  Python and R processing is usually performed with data in memory and
can therefore be faster, however may be limited due to memory availability.

SAS has the concept of products to provide additional functionality.
Python and R have additional libraries of functions that can be used to give similar functionality.  Some libraries are installed as part of the initial installation, others must be separately installed, and the version of each library must be considered.
There will often be multiple libraries that can provide similar functionality.

|                 | SAS                          | Python             | R                  |
| --------------- | ---------------------------- | ------------------ | ------------------ |
| Database Access | SAS/ACCESS to &lt;database&gt;.          | Database specific  | Database specific  |
| Graphics        | SAS/GRAPH                    | Many               | ggplot2            |
| Matricies       | SAS/IML                      | Core functionality | Core functionality |
| Statistics      | SAS/STAT                     | Many               | Many               |
| Web Services    | SAS/Integration Technologies | Many (eg: Flask)   | Many (eg: Shiny)   |

Both Python and R can read SAS datasets:

- Python using [Pandas read_sas](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_sas.html)
- R using [haven read_sas](https://cran.r-project.org/web/packages/haven/haven.pdf)


## SAS

Programs can be executed from within the SAS Display Manager, Enterprise Guide or alternatively from the command line:

    ~/sas-py-r/src $ sas -sysin test.sas
    Hello World!
    The answer is 42

Note that the above sample is included in this repository's [Source](../src) folder.


## Python

The [Python](https://www.python.org/) language is becoming more popular amongst analysts and data scientists.  Programs can be executed from with an IDE (Integrated Development Environment) such as Spyder, or alternatively from the command line:

    ~/sas-py-r/src $ python test.py
    Hello World!
    The answer is 42

Note that the above sample is included in this repository's [Source](../src) folder.


### Python Installation

Python can be installed via many methods; one popular method is with [Anaconda](https://www.continuum.io/downloads).


## R

Programs can be executed from with an IDE (Integrated Development Environment) such as RStudio, or alternatively from the command line:

    ~/sas-py-r/src $ r test.r
    [1] "Hello World!"
    [1] "The answer is 42"

Note that the above sample is included in this repository's [Source](../src) folder.


### R Installation

R can be installed via many methods; one popular method is to install it with [RStudio](https://www.rstudio.com/products/rstudio/download/)


## Help

All IDEs include help functionality, and [Google](https://google.com) search and [stackoverflow](https://stackoverflow.com/) provide feedback where someone has usually asked your question already.

The language consoles for Python and R also have additional help functionality.

Python:

```python
help(min)
```

R:

```
help("min")
example("min")
```

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; README](../README.md) | [Table of Contents](00_TOC.md) | [02. Data Types &gt;&gt;](02_DataTypes.md) |
