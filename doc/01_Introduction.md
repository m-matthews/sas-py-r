# Python and R for SAS Developers

## Introduction

This repository discusses [Python](https://www.python.org/) and [R](https://www.r-project.org/) programming from a [SAS](https://www.sas.com/) developer perspective.

It is not a comprehensive coverage of any of the languages, but can assist in
understanding the corresponding capabilities and functionality.

|              | SAS           | Python           | R           |
| ------------ | ------------- | ---------------- | ----------- |
| IDE          | Display Manager <br/> Enterprise Guide | Anaconda <br/> Spyder | R Studio |
| Extension    | *.sas         | *.py             | *.r         |
| License      | Proprietary   | Open Source      | Open Source |
| Developed In | C / C++ / SAS | C / C++ / Python | C / C++ / R |
| Processing   | Disk          | Memory           | Memory      |
| Row Limits   | ~9.2 x 10<sup>18</sup>  | Memory           | Memory      |

Processing with SAS occurs on disk with SAS datasets (RAM disks or newer technologies such as
SAS HPA can use memory).  Python and R processing is usually performed with data in memory and
can therefore be faster, however may be limited due to memory availability.

SAS has the concept of products to provide additional functionality.
Python and R have additional libraries of functions that can be used to give similar functionality.
There will often be multiple libraries that can provide similar functionality.

|                 | SAS                          | Python             | R                  |
| --------------- | ---------------------------- | ------------------ | ------------------ |
| Database Access | SAS/ACCESS to &lt;database&gt;.          | Database specific  | Database specific  |
| Graphics        | SAS/GRAPH                    | Many               | ggplot2            |
| Matricies       | SAS/IML                      | Core functionality | Core functionality |
| Statistics      | SAS/STAT                     | Many               | Many               |
| Web Services    | SAS/Integration Technologies | Many (eg: Flask)   | Many (eg: Shiny)   |

<table width="100%">
  <tr>
    <td width="33%" align="left">&nbsp;</td>
    <td width="34%" align="center"><a href="00_TOC.md">Table of Contents</a></td>
    <td width="33%" align="right"><a href="02_DataTypes.md">02. Data Types &gt;&gt;</a></td>
  </tr>
</table>