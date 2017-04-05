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

`*` A `FORMAT` can be used to create variables meeting similar specifications to the other languages.

## Arrays
SAS, Python and R

...


<table width="100%">
  <tr>
    <td width="33%" align="left"><a href="01_Introduction.md">&lt;&lt;01. Introduction</a></td>
    <td width="34%" align="center"><a href="00_TOC.md">Table of Contents</a></td>
    <td width="33%" align="right"><a href="03_ProgramFlow.md">03. Program Flow &gt;&gt;</a></td>
  </tr>
</table>