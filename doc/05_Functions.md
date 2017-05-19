# Python and R for SAS Developers

## Functions

The following lists of functions are provided in order by SAS Function name, as this document is designed with that perspective.

Full example programs are available for each language in the files [05_functions.sas](../src/05_functions.sas), [05_functions.py](../src/05_functions.py) and [05_functions.r](../src/05_functions.r).

### String Functions

| SAS Function   | Python                    | R                           | Description                                  |
| -------------- | ------------------------- | --------------------------- | -------------------------------------------- |
| CAT            | `"".join(vars)`           | `paste(vars, collapse='')`  | Add strings together.                        |
| CATX           | `",".join(vars)`          | `paste(vars, collapse=',')` | Add strings with delimiters.                 |
| CHAR           | `var[pos:1]`              | `substr(val,start,stop)`    | Single character from a string.              |
| COMPBL         | `" ".join(var.split())`   | `gsub("\\s+", " ", var)`    | Remove multiple spaces from a string.        |
| COMPRESS       | `translate()`             | `gsub(" ", "", var)`        | Remove characters from a string.             |
| FIND           | `var.find()`              | `regexpr(pattern, var)[1]`  | Find a substring within a string.            |
| INDEX          | `var.find()`              | `regexpr(pattern, var)[1]`  | Find a substring within a string.            |
| INPUT          | `int(var)` / `float(var)` | `as.integer` / `as.numeric` | Convert argument to numeric.                 |
| LEFT           | `var.lstrip()`            | `trimws(val, 'left')`       | Remove leading whitespace.                   |
| LENGTH         | `len(var)`                | `nchar(var)`                | Length of the string.                        |
| LOWCASE        | `var.lower()`             | `tolower()`                 | Lower case version of a string.              |
| MISSING        | `var is None or var==''`  | `var == ''`                 | Is a string missing / empty.                 |
| PUT            | `str(val)`                | `as.character(...)`         | Convert argument to string.                  |
| QUOTE          | `'"{}"'.format(var)`      | `paste('"', var, '"')`      | Quote a string.                              |
| REPEAT         | `'c'*n`                   | `paste(rep('c', n), collapse='')` | Repeat a char/string to build a new string. |
| REVERSE        | `var[::-1]`               | `paste(rev(strsplit(val, NULL)[[1]]), collapse='')` | Reverse the string.  |
| SCAN           | `var.split(delim)`        | `strsplit(val,delim)`       | Scan for a word (others produce word lists). |
| STRIP          | `var.strip()`             | `trimws(val, 'both')`       | Remove leading and trailing whitespace.      |
| SUBSTR         | `var[start:len]`          | `substr(val,start,stop)`    | Substring.                                   |
| TRANSLATE      | `var.replace()`           | `gsub()`                    | Replace text in a string.                    |
| TRANWRD        | `var.replace()`           | `gsub()`                    | Replace words in a string.                   |
| TRIM           | `var.rstrip()`            | `trimws(val, 'right')`      | Remove trailing whitespace.                  |
| UPCASE         | `var.upper()`             | `toupper()`                 | Upper case value of string.                  |

Note that SAS Data Step character variables have a fixed length, and are normally padded with spaces to fill a given string.  This differs from other languages.

### Mathematical Functions

| SAS Function   | Python                    | R                           | Description                                  |
| -------------- | ------------------------- | --------------------------- | -------------------------------------------- |
| ABS            | `abs(val)`                | `abs(val)`                  | Absolute value.                              |
| CEIL           | `math.ceil(val)`          | `ceiling(val)`              | Smallest int >= input.                       |
| COS            | `math.cos(rad)`           | `cos(rad)`                  | The cosine of the supplied angle.            |
| EXP            | `math.exp(val)`           | `exp(val)`                  | Natural exponential.                         |
| FLOOR          | `math.floor(val)`         | `floor(val)`                | Largest int <= input.                        |
| INT            | `int(val)`                | `as.integer(val)`           | Integer value of input.                      |
| LOG            | `math.log(val)`           | `log(val)`                  | Natural logarithm.                           |
| LOG10          | `math.log10(val)`         | `log10(val)`                | Base 10 logarithm.                           |
| MAX            | `max(vals)`               | `max(vals)`                 | Maximum value of inputs.                     |
| MEAN           | `statistics.mean(vals)`   | `mean(vals)`                | Average value of inputs.                     |
| MIN            | `min(vals)`               | `min(vals)`                 | Minimum value of inputs.                     |
| MISSING        | `var in None or math.isnan(var)` | `is.nan(var)`        | Is the value mising / not a number.          |
| MOD            | `val1 % val2`             | `val1 %% val2`              | Modulo.                                      |
| N              |                           |                             | Number of non-missing values in a list.      |
| NMISS          |                           |                             | Number of missing values in a list.          |
| RANGE          | `max(vals)-min(vals)`     | `range(vals)`               | Range of values.                             |
| RANUNI         | `random.random()`         | `runif()`                   | Random number.                               |
| ROUND          | `round(val, digits)`      | `round(val, digits)`        | Round a number.                              |
| SIN            | `math.sin(rad)`           | `sin(rad)`                  | The sine of the supplied angle.              |
| SQRT           | `math.sqrt(val)`          | `sqrt(val)`                 | The square root of the value.                |
| STD            | `statistics.stdev(vals)`  | `sd(vals)`                  | Standard Deviation.                          |
| SUM            | `sum(vals)`               | `sum(vals)`                 | The sum of the values.                       |
| TAN            | `math.tan(rad)`           | `tan(rad)`                  | The tangent of the supplied angle.           |

Note that Python has additional libraries for mathematical functions depending on the data type (eg: numpy).

### Mathematical Constants

| SAS Function   | Python                    | R                           | Description                                  |
| -------------- | ------------------------- | --------------------------- | -------------------------------------------- |
| CONSTANT('E')  | `math.e`                  | `exp(1)`                    | Constant e = 2.718281...                     |
| CONSTANT('PI') | `math.pi`                 | `pi`                        | Constant pi = 3.141592...                    |
|                | `math.inf`                | `Inf`                       | Infinity.                                    |
| MISSING        | `math.nan`                | `NaN`                       | Not a Number.                                |

### Datetime Functions

SAS uses numerics to store date types, and has formats to include DATE, DATETIME and TIME formats.

Python includes [date, time, datetime and timedelta](https://docs.python.org/3/library/datetime.html) data types.  The examples in the following table will be using the appropriate data type to produce the same result as SAS.


| SAS Function   | Python                    | R (lubridate)               | Description                                  |
| -------------- | ------------------------- | --------------------------- | -------------------------------------------- |
| DATE           | `date.today()`            | `Sys.Date()`                | Current date.                                |
| DATEPART       | `datetime.date()`         | `date(val)`                 | Date component of datetime.                  |
| DATETIME       | `datetime.now()`          | `Sys.time()`                | Current datetime.                            |
| DAY            | `date(time).day`          | `day(val)`                  | Day of Month.                                |
| HOUR           | `(date)time.hour`         | `hour(val)`                 | Hour of (date)time.                          |
| INPUT          | `datetime.strptime()`     | `as.Date(val)`              | Convert string to Date.                      |
| INTCK          | `relativedelta()`         | `difftime()`                | Count of interval differences between dates. |
| INTNX          | `relativedelta()`         |                             | Increment a date by a count of intervals.    |
| MINUTE         | `(date)time.minute`       | `minute(val)`               | Minute of (date)time.                        |
| MONTH          | `date(time).month`        | `month(val)`                | Month of a given date.                       |
| PUT            | `date(time).strftime()`   | `format(val, "%d%b%Y")`     | Convert to a string.                         |
| QTR            | `date(time).month//3+1`   | `quarters(val)`             | Quarter of the year.                         |
| SECOND         | `(date)time.second`       | `second(val)`               | Second of (date)time.                        |
| TIME           | `datetime.time(datetime.now())` |                       | Current time.                                |
| TIMEPART       | `datetime.time()`         |                             | Time component of datetime.                  |
| TODAY          | `date.today()`            | `Sys.Date()`                | Current date.                                |
| WEEK           | `isocalendar()[1]`        | `week(val)`                 | Week of the year.                            |
| WEEKDAY        | `date(time).weekday()`    | `weekdays(val)`             | Day of week (different basis by language).   |
| YEAR           | `date(time).year`         | `year(val)`                 | Year of the date.                            |
| YRDIF          | `relativedelta()`         |                             | Years between two dates.                     |

* Python functions marked `date(time)` indicate they work with both `date` and `datetime` data types.
* Python functions marked `(date)time` indicate they work with both `datetime` and `time` data types.
* R examples above require the `library(lubridate)`.
* R supports dates in the `seq` function which can produce useful sequences, such as the following examples:
  * `seq(as.Date('2017-06-01'),by='days',length=30)`
  * `seq(as.Date('2017-01-01'),to=as.Date('2017-01-01'),by='2 weeks')`


### Miscellaneous Functions

| SAS Function   | Python                    | R                           | Description                                  |
| -------------- | ------------------------- | --------------------------- | -------------------------------------------- |
| SLEEP          | `time.sleep(secs)`        | `Sys.sleep(secs)`           | Pause program execution.                     |
| SYSGET         | `os.environ(var)`         | `Sys.getenv()`              | Fetch value from environment variable.       |
| SYSPROD        | `pip.get_installed_distributions()` | `installed.packages` | List installed products / modules.        |
| SYSTEM         | `subprocess.run(cmd)`     | `shell(cmd)`                | Execute a system command.                    |
| HTMLDECODE     | `html.unescape(str)`      |                             | Remove escape sequence from escaped HTML.    |
| HTMLENCODE     | `html.escape(str)`        |                             | Escape HTML characters.                      |
| URLDECODE      | `urllib.parse.unquote()`  |                             | Remove escape sequence from escaped URL.     |
| URLENCODE      | `urllib.parse.quote()`    |                             | Escape URL characters.                       |

### User Defined Functions

Traditional SAS programming has involved the use of SAS Macros to simulate user defined functions.  Newer releases of SAS Software include PROC FCMP which enables the creation of functions.

Python and R both include the creation of functions and classes.

...

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 04. Subsetting and Combining Data](04_SubsetCombine.md) | [Table of Contents](00_TOC.md) | [06. Procedures &gt;&gt;](06_Procedures.md) |
