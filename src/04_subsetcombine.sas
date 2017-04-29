* Import data produced with 'random.py'. *;
proc import datafile="../data/policies.csv" out=work.policies
            dbms=csv replace;
run;
proc import datafile="../data/claims.csv" out=work.claims
            dbms=csv replace;
run;

* ----------------------- *;
* Subsetting rows (WHERE) *;
* ----------------------- *;

* Method 1 - with a single read OUTPUT to two data sets. *;

data work.polunder25
     work.pol25plus;
  set work.policies;
  if age<25 then output work.polunder25;
  else output work.pol25plus;
run;

* Method 2 - use WHERE clauses. *;

data work.polunder25;
  set work.policies;
  where age<25;
run;

data work.pol25plus;
  set work.policies;
  where age>=25;
run;

* ------------------------- *;
* Subsetting columns (KEEP) *;
* ------------------------- *;

data work.polstate;
  set work.policies(keep=policy state);
run;

* ---------------------------------- *;
* Appending data (SET / PROC APPEND) *;
* ---------------------------------- *;

* Method 1 - use a DATA STEP SET statement. *;

data work.combined;
  set work.polunder25 work.pol25plus;
run;

* Method 2 - use PROC APPEND. *;

data work.combined;
  set work.policies(obs=0);
run;

proc append base=work.combined data=work.polunder25;
run;

proc append base=work.combined data=work.pol25plus;
run;

* -------------------- *;
* Merging data (MERGE) *;
* -------------------- *;

data work.merged;
  merge work.policies(in=pol) work.claims(in=clm);
  by policy;
  if pol and clm;
run;

data work.merged_left;
  merge work.policies(in=pol) work.claims(in=clm);
  by policy;
  if pol;
run;

