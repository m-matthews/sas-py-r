# Python and R for SAS Developers

## Functions

The following lists of functions are provided in order by SAS Function name, as this document is designed with that perspective.

### String Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| CAT            | "".join(vars)          |                        | Add strings together.                        |
| CATX           | ",".join(vars)         |                        | Add strings with delimiters.                 |
| CHAR           | var[pos:1]             |                        | Single character from a string.              |
| COMPBL         | " ".join(split(var))   |                        |                                              |
| COMPRESS       | translate()            |                        |                                              |
| FIND           | var.find()             |                        | Find a substring within a string.            |
| INDEX          | var.find()             |                        |                                              |
| INPUT          | int(var) / float(var)  |                        | Convert argument to numeric.                 |
| LEFT           | var.lstrip()           |                        | Remove leading whitespace.                   |
| LENGTH         | len(var)               |                        | Length of the string.                        |
| LOWCASE        | var.lower()            |                        |                                              |
| MISSING        | var is None            |                        |                                              |
| PUT            | str(val)               |                        | Convert argument to string.                  |
| QUOTE          | '"{}"'.format(var)     |                        | Quote a string.                              |
| REPEAT         | 'char'*len             |                        | Repeat a char/string to build a new string.  |
| REVERSE        | var[::-1]              |                        | Reverse the string.                          |
| SCAN           | var.split()            |                        |                                              |
| STRIP          | var.strip()            |                        | Remove leading and trailing whitespace.      |
| SUBSTR         | var[start:len]         |                        |                                              |
| TRANSLATE      | translate()            |                        |                                              |
| TRANWRD        | var.replace()          |                        | Replace words in a string.                   |
| TRIM           | var.rstrip()           |                        | Remove trailing whitespace.                  |
| UPCASE         | var.upper()            |                        | Upper case value of string.                  |

Note that SAS Data Step character variables have a fixed length, and are normally padded with spaces to fill a given string.  This differs from other languages.

### Mathematical Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| ABS            | abs(val)               |                        | Absolute value.                              |
| CEIL           | math.ceil(val)         |                        | Smallest int >= input.                       |
| COS            | math.cos(rad)          |                        | The cosine of the supplied angle.            |
| EXP            | math.exp(val)          |                        |                                              |
| FLOOR          | math.floor(val)        |                        | Largest int <= input.                        |
| INT            | int(val)               |                        | Integer value of input.                      |
| LOG            | math.log(val)          |                        |                                              |
| LOG10          | math.log10(val)        |                        |                                              |
| MAX            | max(vals)              |                        | Maximum value of inputs.                     |
| MEAN           | statistics.mean(vals)  |                        | Average value of inputs.                     |
| MIN            | min(vals)              |                        | Minimum value of inputs.                     |
| MISSING        |                        |                        |                                              |
| MOD            | val1 % val2            |                        | Modulo.                                      |
| N              |                        |                        |                                              |
| NMISS          |                        |                        |                                              |
| RANGE          | max(vals)-min(vals)    |                        | Range of values.                             |
| RANUNI         | random.random()        |                        | Random number.                               |
| ROUND          |                        |                        |                                              |
| SIN            | math.sin(rad)          |                        | The sine of the supplied angle.              |
| SQRT           | math.sqrt(val)         |                        | The square root of the value.                |
| STD            | statistics.stdev(vals) |                        | Standard Deviation.                          |
| SUM            | sum(vals)              |                        | The sum of the values.                       |
| TAN            | math.tan(rad)          |                        | The tangent of the supplied angle.           |

Note that Python has additional libraries for mathematical functions depending on the data type (eg: numpy).

### Mathematical Constants

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| CONSTANT('PI') | math.pi                | pi                     | Constant pi = 3.141592...                    |
| CONSTANT('E')  | math.e                 | exp(1)                 | Constant e = 2.718281...                     |
|                | math.inf               |                        | Infinity.                                    |
| MISSING        | math.nan               |                        | Not a Number.                                |

### Datetime Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| DATE           |                        |                        | Current date.                                |
| DATEPART       |                        |                        | Date component of datetime.                  |
| DATETIME       | datetime.now()         |                        | Current datetime.                            |
| DAY            |                        |                        |                                              |
| HOUR           |                        |                        |                                              |
| INTCK          |                        |                        | Count of interval differences between dates. |
| INTNX          |                        |                        | Increment a date by a count of intervals.    |
| MINUTE         |                        |                        |                                              |
| MONTH          |                        |                        |                                              |
| QTR            |                        |                        |                                              |
| SECOND         |                        |                        |                                              |
| TIME           |                        |                        | Current time.                                |
| TIMEPART       |                        |                        | Time component of datetime.                  |
| TODAY          |                        |                        | Current date.                                |
| WEEK           |                        |                        |                                              |
| WEEKDAY        |                        |                        |                                              |
| YEAR           |                        |                        |                                              |
| YRDIF          |                        |                        |                                              |

### Miscellaneous Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| SLEEP          | time.sleep(secs)       |                        | Pause program execution.                     |
| SYSGET         | os.environ(var)        |                        | Fetch value from environment variable.       |
| SYSPROD        | pip.get_installed_distributions() | installed.packages | List installed products / modules     |
| SYSTEM         | subprocess.run(cmd)    |                        | Execute a system command.                    |
| HTMLDECODE     | html.unescape(str)     |                        | Remove escape sequence from escaped HTML.    |
| HTMLENCODE     | html.escape(str)       |                        | Escape HTML characters.                      |
| URLDECODE      | urllib.parse.unquote() |                        | Remove escape sequence from escaped URL.     |
| URLENCODE      | urllib.parse.quote()   |                        | Escape URL characters.                       |


<table width="100%">
  <tr>
    <td width="33%" align="left"><a href="02_DataTypes.md">&lt;&lt;02. Data Types</a></td>
    <td width="34%" align="center"><a href="00_TOC.md">Table of Contents</a></td>
    <td width="33%" align="right"<a href="07_ExternalFiles.md">07. External Files&gt;&gt;</a>></td>
  </tr>
</table>