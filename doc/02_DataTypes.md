# Python and R for SAS Developers

## Data Types

Base SAS has only two types of variables (character and numeric), however through the use of
SAS formats and numeric variable length, the use of these variables can support numerous
types including date and timestamps.

|                | SAS Dataset | SAS DS2     | Python        | R               |
| -------------- | ----------- | ----------- | ------------- | --------------- |
| Boolean        | numeric     | binary      | boolean       | logical         |
| Floating Point | numeric     | real        | float         | numeric         |
| Integer        | numeric `*` | integer     | int           | integer         |
| String         | character   | char        | str / bytes   | character / raw |
| Complex        |             |             | complex       | complex         |
| Datetime       | numeric `*` | timestamp   | datetime      |                 |
| Date           | numeric `*` | date        | date          |                 |
| Time           | numeric `*` | time        | time          |                 |

`*` A `FORMAT` can be applied to variables to meet similar specifications to the other languages.

## Arrays
SAS, Python and R

...

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 01. Introduction](01_Introduction.md) | [Table of Contents](00_TOC.md) | [03. Program Flow &gt;&gt;](03_ProgramFlow.md) |
