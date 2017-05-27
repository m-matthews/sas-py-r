* ---------------- *;
* String Functions *;
* ---------------- *;

data _null_;
  length result $ 32;
  words = "Hello World";
  array wordarray {2} $ _temporary_ ("Hello", "World");

  result = cat(of wordarray{*});
  put "CAT: " result;
  result = catx(",", of wordarray{*});
  put "CATX: " result;
  result = char(words,1);
  put "CHAR: " result;
  result = compbl("Hello World  with   lots    of     space");
  put "COMPBL: " result;
  resultn = find(words,"World");
  put "FIND: " resultn;
  result = ifc(1<2, "Correct", "Incorrect");
  put "IFC: " result;
  resultn = index(words,"World");
  put "INDEX: " resultn;
  resultn = input("42", 9.);
  put "INPUT: " resultn;
  result = left("  Hello World  ");
  put "LEFT: " result $char.;
  resultn = length(words);
  put "LENGTH: " resultn;
  result = lowcase(words);
  put "LOWCASE: " result;
  result = put(42.0, 2.0);
  put "PUT: " result;
  result = quote(words);
  put "QUOTE: " result;
  result = repeat("z", 42);
  put "REPEAT: " result;
  result = scan(words, 2);
  put "SCAN: " result;
  result = strip("  Hello World  ");
  put "STRIP: " result $char.;
  result = translate(words, "?", "l");
  put "TRANSLATE: " result;
  result = tranwrd(words, "World", "Earth");
  put "TRANWRD: " result;
  result = trim("  Hello World  ");
  put "TRIM: " result $char.;
  result = upcase(words);
  put "UPCASE: " result;
run;

/* - log output -
CAT: Hello   World
CATX: Hello,World
CHAR: H
COMPBL: Hello World with lots of space
FIND: 7
IFC: Correct
INDEX: 7
INPUT: 42
LEFT: Hello World
LENGTH: 11
LOWCASE: hello world
PUT: 42
QUOTE: "Hello World"
REPEAT: zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
SCAN: World
STRIP: Hello World
TRANSLATE: He??o Wor?d
TRANWRD: Hello Earth
TRIM:   Hello World
UPCASE: HELLO WORLD
*/

* ---------------------- *;
* Mathematical Functions *;
* ---------------------- *;
data _null_;
  result = abs(-42);
  put "ABS: " result;
  result = ceil(24.96);
  put "CEIL: " result;
  result = cos(0); * In Radians *;
  put "COS: " result;
  result = exp(2);
  put "EXP: " result;
  result = floor(24.96);
  put "FLOOR: " result;
  result = int(24.96);
  put "INT: " result;
  result = log(2);
  put "LOG: " result;
  result = log10(2);
  put "LOG10: " result;
  result = max(1,2,3,4,5);
  put "MAX: " result;
  result = mean(1,2,3,4,5);
  put "MEAN: " result;
  result = min(1,2,3,4,5);
  put "MIN: " result;
  result = missing(.);
  put "MISSING: " result;
  result = mod(42,5);
  put "MOD: " result;
  result = n(1,.,3,.,5);
  put "N: " result;
  result = nmiss(1,.,3,.,5);
  put "NMISS: " result;
  result = range(1,2,3,4,5);
  put "RANGE: " result;
  result = ranuni(0);
  put "RANUNI: " result;
  result = round(24.96,1);
  put "ROUND: " result;
  result = sin(0); * In Radians *;
  put "SIN: " result;
  result = sqrt(1764);
  put "SQRT: " result;
  result = std(1,2,3,4,5);
  put "STD: " result;
  result = sum(1,2,3,4,5);
  put "SUM: " result;
  result = tan(0); * In Radians *;
  put "TAN: " result;
run;

/* - log output -
ABS: 42
CEIL: 25
COS: 1
EXP: 7.3890560989
FLOOR: 24
INT: 24
LOG: 0.6931471806
LOG10: 0.3010299957
MAX: 5
MEAN: 3
MIN: 1
MISSING: 1
MOD: 2
N: 3
NMISS: 2
RANGE: 4
RANUNI: 0.0979971225
ROUND: 25
SIN: 0
SQRT: 42
STD: 1.5811388301
SUM: 15
TAN: 0
*/

* ---------------------- *;
* Mathematical Constants *;
* ---------------------- *;
data _null_;
  e = constant("E");
  put "E: " e;
  pi = constant("PI");
  put "PI: " pi;
run;

/* - log output -
E: 2.7182818285
PI: 3.1415926536
*/

* ------------------ *;
* Datetime Functions *;
* ------------------ *;

data _null_;
  length d dt t 8;
  format d date9. dt datetime13. t time8.;

  d = date();
  put "DATE: " d;
  dt = datetime();
  put "DATETIME: " dt;
  t = time();
  put "TIME: " t;

  result = datepart(dt);
  put "DATEPART: " result date9.;
  result = day(d);
  put "DAY: " result;
  result = hour(t);
  put "HOUR: " result;
  result = input('2017-02-28',yymmdd10.);
  put "INPUT: " result date9.;
  result = intck('MONTHS','12FEB2016'd,'6FEB2017'd);
  put "INTCK: " result;
  result = intnx('MONTH','12FEB2016'd,12);
  put "INTNX: " result date9.;
  result = minute(t);
  put "MINUTE: " result;
  result = month(d);
  put "MONTH: " result;
  resultc = put(d, yymmdds10.);
  put "PUT: " resultc;
  result = qtr(d);
  put "QTR: " result;
  result = second(t);
  put "SECOND: " result;
  result = timepart(dt);
  put "TIMEPART: " result time8.;
  result = today();
  put "TODAY: " result date9.;
  result = week(d);
  put "WEEK: " result;
  result = weekday(d);
  put "WEEKDAY: " result;
  result = year(d);
  put "YEAR: " result;
  result = yrdif('12FEB2016'd,'6FEB2017'd);
  put "YRDIF: " result;
run;

/* - log output -
DATE: 11MAY2017
DATETIME: 11MAY17:07:32
TIME: 7:32:25
DATEPART: 11MAY2017
DAY: 11
HOUR: 7
INPUT: 28FEB2017
INTCK: 12
INTNX: 01FEB2017
MINUTE: 32
MONTH: 5
PUT: 2017/05/11
QTR: 2
SECOND: 24.835999966
TIMEPART:  7:32:25
TODAY: 11MAY2017
WEEK: 19
WEEKDAY: 5
YEAR: 2017
YRDIF: 0.9835616438
*/

* ----------------------- *;
* Miscellaneous Functions *;
* ----------------------- *;

* ---------------------- *;
* User Defined Functions *;
* ---------------------- *;

