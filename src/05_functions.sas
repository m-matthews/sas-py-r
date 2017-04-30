* ---------------- *;
* String Functions *;
* ---------------- *;

data _null_;
  words = "Hello World";
  array wordarray {2} $ _temporary_ ("Hello", "World");

  result = cat(wordarray);
  put "CAT:" result;
  result = catx(wordarray,",");
  put "CATX:" result;
  result = char(words,1);
  put "CHAR:" result;
  result = compbl("Hello World  with   lots    of     space");
  put "COMPBL:" result;
  result = find(words,"World");
  put "FIND:" result;
  result = index(words,"World");
  put "INDEX:" result;
  resultn = input("42", 9.);
  put "INPUT:" resultn;
  result = left("  Hello World  ");
  put "LEFT:" result $char.;
  resultn = length(words);
  put "LENGTH:" resultn;
  result = lowcase(words);
  put "LOWCASE:" result;
  result = put(42.0, 2.0);
  put "PUT:" result;
  result = quote(words);
  put "QUOTE:" result;
  result = repeat("z", 42);
  put "REPEAT:" result;
  result = scan(words, 2);
  put "SCAN:" result;
  result = strip("  Hello World  ");
  put "STRIP:" result $char.;
  result = translate(words, "?", "l");
  put "TRANSLATE:" result;
  result = tranwrd(words, "Earth", "World");
  put "TRANWRD:" result;
  result = trim("  Hello World  ");
  put "TRIM:" result $char.;
  result = upcase(words);
  put "UPCASE:" result;
run;

* ---------------------- *;
* Mathematical Functions *;
* ---------------------- *;

* ---------------------- *;
* Mathematical Constants *;
* ---------------------- *;
data _null_;
  e = constant("E");
  put "E:" e;
  pi = constant("PI");
  put "PI:" pi;
run;

* ------------------ *;
* Datetime Functions *;
* ------------------ *;

* ----------------------- *;
* Miscellaneous Functions *;
* ----------------------- *;

* ---------------------- *;
* User Defined Functions *;
* ---------------------- *;

