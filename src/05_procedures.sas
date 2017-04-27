* Import data produced with 'random.py'. *;
dfpolicies = pd.read_csv("../data/policies.csv");
dfclaims = pd.read_csv("../data/claims.csv");

* Split data into under 25 and others using WHERE clauses. *;
data work.pol_empty
     work.pol_under25
     work.pol_25plus;
  set work.policies;
  if age<25 then output work.pol_under25;
  else output work.pol_25plus;
run;

* ----------- *;
* PROC APPEND *;
* ----------- *;

proc append base=work.pol_empty data=work.pol_under25;
run;
proc append base=work.pol_empty data=work.pol_25plus;
run;

* --------- *;
* PROC FCMP *;
* --------- *;

* Create a function that converts an age into a range of 0-1 for 18-99 year olds. *;
proc fcmp outlib=work.funcs.test;
  function age_norm(age);
    return((min(99,max(18,age))-18)/(99-18));
  endsub;
run;

options cmplib=work.funcs;

data work.test;
  do age=1 to 105;
    norm=age_norm(age);
    output;
  end;
run;

* --------- *;
* PROC FREQ *;
* --------- *;

proc freq data=work.policies;
  table make / nopct out=work.freq1;
run;

* Count of rows by Make. *;
proc freq data=work.policies;
  table make / nopct out=work.freq2;
run;

* Count of non-missing data by Make. *;
df_freq2 = dfpolicies.groupby(['make'])['make', 'cancel_date'].count()

# -------------------- *;
# PROC MEANS / SUMMARY *;
# -------------------- *;

* Average Age by Make. *;
proc means data=work.policies missing nway mean;
  class make;
  var age;
run;

* --------- *;
* PROC SORT *;
* --------- *;

proc sort data=work.policies;
  by state age;
run;

* -------------- *;
* PROC TRANSPOSE *;
* -------------- *;

proc freq data=work.policies noprint;
  table state*make / out=work.pol_state_make;
run;

proc transpose data=work.pol_state_make
               out=work.transposed(drop=_name_ _label_);
  by state;
  id make;
  var count;
run;
