library(data.table)
library(lubridate)

POLRATE <- 0.0001
CANRATE <- 0.10
MAKES <- c("Toyota", "Mazda", "Holden", "Hyundai", "Mitsubishi",
           "Ford", "Nissan", "Volkswagen", "Subaru", "Honda")
AGE_MIN <- 18
AGE_MAX <- 99
CLMFREQ <- c(c(18, 21, 0.15),
             c(22, 25, 0.13),
             c(26, 35, 0.11),
             c(36, 99, 0.09))
# 2016 Australian Bureau of Statistics population estimates.
POPULATION <- list(NSW = 7757800,
                   VIC = 6100900,
                   QLD = 4860400,
                   WA  = 2632200,
                   SA  = 1710800,
                   TAS = 519800,
                   ACT = 398300,
                   NT  = 245700)

n=1e6
DT = data.table( a=sample(1:1000,n,replace=TRUE),
                 b=sample(1:1000,n,replace=TRUE),
                 c=rnorm(n),
                 d=sample(c("foo","bar","baz","qux","quux"),n,replace=TRUE),
                 e=rnorm(n),
                 f=sample(1:1000,n,replace=TRUE) )

# Helper function to convert an id into a policy number.
policyno <- function(p) {
  return(sprintf("POL%09d", p))
}

# Apply the policy rate to the population.
population <- lapply(POPULATION, function(x) ceiling(x*POLRATE))

# Expand the claim frequencies.
clmfreq <- lapply(CLMFREQ, function(x) rep(x[2], from=x[0], to=x[1])) TODO: Problems here ...
clmfreq <- sapply(CLMFREQ, function(x) print(x))                      TODO: Problems here ...

# --------------------------------------------
# Method 1 - Similar to SAS Data Step Looping.
# --------------------------------------------
p <- 0
c <- 0
for (state in names(population)) {
  for(i in 1:population[[state]]) {
    
  }
}
# p = 0
# c = 0
# poldict = {'state': [],
#   'policy': [],
#   'pol_from': [],
#   'pol_to': [],
#   'cancel_date': [],
#   'age': [],
#   'make': []}
# 
# clmdict = {'policy': [],
#   'claim': [],
#   'accident_date': []
# }
# 
# for state, pop in POPULATION.items():
#   for i in range(math.ceil(pop*POLRATE)):
#   policy = "POL" + str(p+1).zfill(9)
# pol_from = date.today() + relativedelta(days=-math.floor(random.random()*365))
# pol_to = pol_from + relativedelta(years=1, days=-1)
# age = int(AGE_MIN + round(random.random() * (AGE_MAX-AGE_MIN),0))
# make = MAKES[math.floor(random.random()*len(MAKES))]
# clmfreq = [rate for (age_from, age_to, rate) in CLMFREQ if age>=age_from and age<=age_to][0]
# accident_date = pol_from + relativedelta(days=-math.floor(random.random()*(pol_to-pol_from).days)) if random.random()<clmfreq else None
# pol_from2 = pol_from if accident_date is None else accident_date
# cancel_date = pol_from2 + relativedelta(days=-math.floor(random.random()*(pol_to-pol_from2).days)) if random.random()<CANRATE else None
# 
# poldict['state'].append(state)
# poldict['policy'].append(policy)
# poldict['pol_from'].append(pol_from)
# poldict['pol_to'].append(pol_to)
# poldict['cancel_date'].append(cancel_date)
# poldict['age'].append(age)
# poldict['make'].append(make)
# 
# if accident_date is not None:
#   clmdict['policy'].append(policy)
# clmdict['claim'].append("CLM" + str(c+1).zfill(9))
# clmdict['accident_date'].append(accident_date)
# 
# dfpolicies = pd.DataFrame.from_dict(poldict).set_index('policy')
# dfclaims = pd.DataFrame.from_dict(clmdict).set_index('claim')

# --------------------------------------------------------------------------------------
# Method 2 - Create vectors for each variable and add at end.  This is more directly
#            using R's features and more efficient in comparison to the ??? .append()s ???
#            in Method 1.
# --------------------------------------------------------------------------------------
policyno <- function(p) {
  return(sprintf("POL%09d", p))
}

states <- unlist(lapply(names(population), function(x) rep(x,population[[x]])))
policies <- unlist(Map(policyno,1:Reduce('+',population)))
pol_froms <- sapply(runif(length(policies)), function(x) today() - days(floor(x*365)))
pol_tos <- sapply(pol_froms, function(x) x + 365)
ages <- sapply(runif(length(policies)), function(x) as.integer(AGE_MIN + x*(AGE_MAX-AGE_MIN)))



dtpolicies <- data.table('state' = states,
                         'policy' = policies,
                         'pol_from' = pol_froms,
                         'pol_to' = pol_tos,
                         'age' = ages)

# clmfreqs = [rate for age in ages for (age_from, age_to, rate) in CLMFREQ if age>=age_from and age<=age_to]
# accident_dates = [fromdate + relativedelta(days=-math.floor(random.random()*(todate-fromdate).days)) if random.random()<clmfreq else None
#                   for (fromdate, todate, clmfreq) in zip(pol_froms, pol_tos, clmfreqs)]
# cancel_dates = [(fromdate if accdate is None else accdate) + relativedelta(days=-math.floor(random.random()*(todate-(fromdate if accdate is None else accdate)).days)) if random.random()<CANRATE else None
#                 for (fromdate, todate, accdate) in zip(pol_froms, pol_tos, accident_dates)]
# 
# poldict = {'state': states,
#   'policy': policies,
#   'pol_from': pol_froms,
#   'pol_to': pol_tos,
#   'cancel_date': cancel_dates,
#   'age': ages,
#   'make': [MAKES[math.floor(random.random()*len(MAKES))] for i in range(len(states))]
# }
# 
# clmdict = {'policy': [pol for pol, acc in zip(policies, accident_dates) if acc is not None],
#   'claim': ["CLM" + str(i+1).zfill(9) for i in range(len([acc for acc in accident_dates if acc is not None]))],
#   'accident_date': [acc for acc in accident_dates if acc is not None]
# }
# 
# dfpolicies = pd.DataFrame.from_dict(poldict).set_index('policy')
# dfclaims = pd.DataFrame.from_dict(clmdict).set_index('claim')
# 
# dfpolicies.to_csv('../data/policies.csv')
# dfclaims.to_csv('../data/claims.csv')