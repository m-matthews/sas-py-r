%let POLRATE = 0.0001;
%let CANRATE = 0.10;
%let MAKES = "Toyota" "Mazda" "Holden" "Hyundai" "Mitsubishi"
             "Ford" "Nissan" "Volkswagen" "Subaru" "Honda";
%let AGE_MIN = 18;
%let AGE_MAX = 99;

proc format;
  invalue CLMFREQ '18'-'21' = 0.15
                  '22'-'25' = 0.13
                  '26'-'35' = 0.11
                  '36'-'99' = 0.09;
run;

* 2016 Australian Bureau of Statistics population estimates. *;
data work.population;
  input state $3. pop;
  cards;
NSW 7757800
VIC 6100900
QLD 4860400
WA  2632200
SA  1710800
TAS 519800
ACT 398300
NT  245700
;
run;

data work.policies(keep=state policy age make pol_from pol_to cancel_date)
     work.claims(keep=policy claim accident_date);
  array makes(%sysfunc(countw(&MAKES))) $ 10 _temporary_ (&MAKES);

  set work.population;

  * Create policies based on rate per state population.          *;
  do i = 1 to floor(pop*&POLRATE);
    * Generate unique policy number.                             *;
    p+1;
    policy = 'POL'!!put(p,z9.);
    * Generate policy dates.                                     *;
    format pol_from pol_to ddmmyy10.;
    pol_from = today() - floor(ranuni(0)*365);
    pol_to = intnx('YEAR', pol_from, 1, 'S') - 1;

    * Generate random age.                                       *;
    age = &AGE_MIN + round(ranuni(0) * (&AGE_MAX-&AGE_MIN),1);
    * Generate random vehicle make.                              *;
    make = makes(ceil(ranuni(0) * dim(makes)));

    * Determine if a claim has occured.                          *;
    if ranuni(0) < input(put(age,z2.), CLMFREQ.) then do;
      c+1;
      claim = 'CLM'!!put(c,z9.);
      format accident_date ddmmyy10.;
      accident_date = pol_from + floor(ranuni(0) * (pol_to - pol_from));
      output work.claims;
    end;

    * Determine if the policy is cancelled.                      *;
    format cancel_date ddmmyy10.;
    if ranuni(0) < &CANRATE then do;
      cancel_date = coalesce(accident_date,pol_from) +
                    floor(ranuni(0) * (pol_to - coalesce(accident_date,pol_from)));
    end;
    else cancel_date=.;

    output work.policies;
  end;
run;

proc export data=work.policies
            outfile='..\data\policies.csv'
            dbms=csv
            replace;
run;

proc export data=work.claims
            outfile='..\data\claims.csv'
            dbms=csv
            replace;
run;
