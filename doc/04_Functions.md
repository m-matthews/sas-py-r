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
| INPUT          | int(var) / float(var)  | as.integer / as.numeric | Convert argument to numeric.                |
| LEFT           | var.lstrip()           | trimws(val, 'left')    | Remove leading whitespace.                   |
| LENGTH         | len(var)               | nchar(var)             | Length of the string.                        |
| LOWCASE        | var.lower()            | tolower()              |                                              |
| MISSING        | var is None            |                        |                                              |
| PUT            | str(val)               | as.character(...)      | Convert argument to string.                  |
| QUOTE          | '"{}"'.format(var)     |                        | Quote a string.                              |
| REPEAT         | 'char'*len             |                        | Repeat a char/string to build a new string.  |
| REVERSE        | var[::-1]              |                        | Reverse the string.                          |
| SCAN           | var.split(delim)       | strsplit(val,delim)    | Scan for a word (others produce word lists). |
| STRIP          | var.strip()            |                        | Remove leading and trailing whitespace.      |
| SUBSTR         | var[start:len]         | substr(val,start,stop) | Substring.                                   |
| TRANSLATE      | translate()            | gsub()                 | Replace text in a string.                    |
| TRANWRD        | var.replace()          | gsub()                 | Replace words in a string.                   |
| TRIM           | var.rstrip()           | trimws(val, 'right')   | Remove trailing whitespace.                  |
| UPCASE         | var.upper()            | toupper()              | Upper case value of string.                  |

Note that SAS Data Step character variables have a fixed length, and are normally padded with spaces to fill a given string.  This differs from other languages.

### Mathematical Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| ABS            | abs(val)               | abs(val)               | Absolute value.                              |
| CEIL           | math.ceil(val)         | ceiling(val)           | Smallest int >= input.                       |
| COS            | math.cos(rad)          | cos(rad)               | The cosine of the supplied angle.            |
| EXP            | math.exp(val)          | exp(val)               |                                              |
| FLOOR          | math.floor(val)        | floor(val)             | Largest int <= input.                        |
| INT            | int(val)               | as.integer(val)        | Integer value of input.                      |
| LOG            | math.log(val)          | log(val)               |                                              |
| LOG10          | math.log10(val)        | log10(val)             |                                              |
| MAX            | max(vals)              | max(vals)              | Maximum value of inputs.                     |
| MEAN           | statistics.mean(vals)  | mean(vals)             | Average value of inputs.                     |
| MIN            | min(vals)              | min(vals)              | Minimum value of inputs.                     |
| MISSING        |                        |                        |                                              |
| MOD            | val1 % val2            | val1 %% val2           | Modulo.                                      |
| N              |                        |                        |                                              |
| NMISS          |                        |                        |                                              |
| RANGE          | max(vals)-min(vals)    | range(vals)            | Range of values.                             |
| RANUNI         | random.random()        | runif()                | Random number.                               |
| ROUND          | round(val, digits)     | round(val, digits)     | Round a number.                              |
| SIN            | math.sin(rad)          | sin(rad)               | The sine of the supplied angle.              |
| SQRT           | math.sqrt(val)         | sqrt(val)              | The square root of the value.                |
| STD            | statistics.stdev(vals) | sd(vals)               | Standard Deviation.                          |
| SUM            | sum(vals)              | sum(vals)              | The sum of the values.                       |
| TAN            | math.tan(rad)          | tan(rad)               | The tangent of the supplied angle.           |

Note that Python has additional libraries for mathematical functions depending on the data type (eg: numpy).

### Mathematical Constants

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| CONSTANT('PI') | math.pi                | pi                     | Constant pi = 3.141592...                    |
| CONSTANT('E')  | math.e                 | exp(1)                 | Constant e = 2.718281...                     |
|                | math.inf               | Inf                    | Infinity.                                    |
| MISSING        | math.nan               | NaN                    | Not a Number.                                |

### Datetime Functions

| SAS Function   | Python                 | R                      | Description                                  |
| -------------- | ---------------------- | ---------------------- | -------------------------------------------- |
| DATE           |                        | Sys.Date()             | Current date.                                |
| DATEPART       |                        |                        | Date component of datetime.                  |
| DATETIME       | datetime.now()         | date()                 | Current datetime.                            |
| DAY            |                        |                        |                                              |
| HOUR           |                        |                        |                                              |
| INPUT          |                        | as.Date(val)           | Convert string to Date.                      |
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
| SLEEP          | time.sleep(secs)       | Sys.sleep(secs)        | Pause program execution.                     |
| SYSGET         | os.environ(var)        | Sys.getenv()           | Fetch value from environment variable.       |
| SYSPROD        | pip.get_installed_distributions() | installed.packages | List installed products / modules     |
| SYSTEM         | subprocess.run(cmd)    | shell(cmd)             | Execute a system command.                    |
| HTMLDECODE     | html.unescape(str)     |                        | Remove escape sequence from escaped HTML.    |
| HTMLENCODE     | html.escape(str)       |                        | Escape HTML characters.                      |
| URLDECODE      | urllib.parse.unquote() |                        | Remove escape sequence from escaped URL.     |
| URLENCODE      | urllib.parse.quote()   |                        | Escape URL characters.                       |

### User Defined Functions

Traditional SAS programming has involved the use of SAS Macros to simulate user defined functions.  Newer releases of SAS Software include PROC FCMP which enables the creation of functions.

Python and R both include the creation of functions and classes.

...

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 03. Program Flow](03_ProgramFlow.md) | [Table of Contents](00_TOC.md) | [05. Procedures &gt;&gt;](05_Procedures.md) |
