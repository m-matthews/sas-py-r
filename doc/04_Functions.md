# Python and R for SAS Developers

## Functions

The following lists of functions are provided in order by SAS Function name, as this document is designed with that perspective.

### String Functions

| SAS Function   | Python                | R                      | Description                                  |
| -------------- | --------------------- | ---------------------- | -------------------------------------------- |
| CAT            | "".join(vars)         |                        | Add strings together.                        |
| CATX           | ",".join(vars)        |                        | Add strings with delimiters.                 |
| CHAR           |                       |                        |                                              |
| COMPBL         |                       |                        |                                              |
| COMPRESS       |                       |                        |                                              |
| FIND           |                       |                        |                                              |
| INDEX          |                       |                        |                                              |
| INPUT          | int(var) / float(var) |                        | Convert argument to numeric.                 |
| LENGTH         | len(var)              |                        |                                              |
| LOWCASE        | var.lower()           |                        |                                              |
| MISSING        |                       |                        |                                              |
| PUT            | str(val)              |                        | Convert argument to string.                  |
| QUOTE          |                       |                        |                                              |
| REPEAT         |                       |                        |                                              |
| REVERSE        |                       |                        | Reverse the string.                          |
| SCAN           | var.split()           |                        |                                              |
| STRIP          |                       |                        |                                              |
| TRANSLATE      |                       |                        |                                              |
| TRANWRD        |                       |                        |                                              |
| TRIM           |                       |                        |                                              |
| UPCASE         | var.upper()           |                        | Upper case value of string.                  |

### Mathematical Functions

| SAS Function   | Python                | R                      | Description                                  |
| -------------- | --------------------- | ---------------------- | -------------------------------------------- |
| ABS            |                       |                        | Absolute value.                              |
| CEIL           |                       |                        | Smallest int >= input.                       |
| COS            |                       |                        |                                              |
| FLOOR          |                       |                        | Largest int <= input.                        |
| INT            |                       |                        | Integer value of input.                      |
| LOG            |                       |                        |                                              |
| LOG10          |                       |                        |                                              |
| MAX            |                       |                        | Maximum value of inputs.                     |
| MEAN           |                       |                        | Average value of inputs.                     |
| MIN            |                       |                        | Minimum value of inputs.                     |
| MISSING        |                       |                        |                                              |
| MOD            |                       |                        |                                              |
| N              |                       |                        |                                              |
| NMISS          |                       |                        |                                              |
| RANGE          |                       |                        |                                              |
| RANUNI         |                       |                        |                                              |
| ROUND          |                       |                        |                                              |
| SIGN           |                       |                        |                                              |
| SIN            |                       |                        |                                              |
| SQRT           |                       |                        |                                              |
| STD            |                       |                        |                                              |
| SUM            |                       |                        |                                              |
| TAN            |                       |                        |                                              |

### Datetime Functions

| SAS Function   | Python                | R                      | Description                                  |
| -------------- | --------------------- | ---------------------- | -------------------------------------------- |
| DATE           |                       |                        | Current date.                                |
| DATEPART       |                       |                        | Date component of datetime.                  |
| DATETIME       | datetime.now()        |                        | Current datetime.                            |
| DAY            |                       |                        |                                              |
| HOUR           |                       |                        |                                              |
| INTCK          |                       |                        | Count of interval differences between dates. |
| INTNX          |                       |                        | Increment a date by a count of intervals.    |
| MINUTE         |                       |                        |                                              |
| MONTH          |                       |                        |                                              |
| QTR            |                       |                        |                                              |
| SECOND         |                       |                        |                                              |
| TIME           |                       |                        | Current time.                                |
| TIMEPART       |                       |                        | Time component of datetime.                  |
| TODAY          |                       |                        | Current date.                                |
| WEEK           |                       |                        |                                              |
| WEEKDAY        |                       |                        |                                              |
| YEAR           |                       |                        |                                              |
| YRDIF          |                       |                        |                                              |

### Miscellaneous Functions

| SAS Function   | Python                | R                      | Description                                  |
| -------------- | --------------------- | ---------------------- | -------------------------------------------- |
| SLEEP          |                       |                        |                                              |
| SYSGET         |                       |                        |                                              |
| SYSPROD        |                       |                        |                                              |
| SYSTEM         |                       |                        |                                              |
| HTMLDECODE     |                       |                        |                                              |
| HTMLENCODE     |                       |                        |                                              |
| URLDECODE      |                       |                        |                                              |
| URLENCODE      |                       |                        |                                              |


<table width="100%">
  <tr>
    <td width="33%" align="left"><a href="02_DataTypes.md">&lt;&lt;02. Data Types</a></td>
    <td width="34%" align="center"><a href="00_TOC.md">Table of Contents</a></td>
    <td width="33%" align="right"></td>
  </tr>
</table>