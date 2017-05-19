#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd

# Import data produced with 'random.py'.
dfpolicies = pd.read_csv("../data/policies.csv")
dfclaims = pd.read_csv("../data/claims.csv")

# Split data into under 25 and others using WHERE clauses.
df_under25 = dfpolicies[dfpolicies['age']<25]
df_25plus = dfpolicies[dfpolicies['age']>=25]

# -----------
# PROC APPEND
# -----------

# Method 1 - pd.concat accepts a list of dataframes.
df_appended1 = pd.concat([df_under25, df_25plus])

# Method 2 - pd.append adds a dataframe to an existing dataframe.
df_appended2 = dfpolicies[dfpolicies['age']<25]
df_appended2 = df_under25.append(df_25plus)

# ---------
# PROC FCMP
# ---------

def mysum(val1, val2):
    return val1 + val2

print(mysum(18, 24))

# ---------
# PROC FREQ
# ---------

# Count of rows by Make.
df_freq1 = dfpolicies.groupby(['make'])['make'].count().to_frame()
df_freq1['cumulative'] = df_freq1.cumsum()

# Count of non-missing data by Make.
df_freq2 = dfpolicies.groupby(['make'])['make', 'cancel_date'].count()

# ---------
# PROC SORT
# ---------
df_sorted = dfpolicies.sort_values(by=['make', 'age'], ascending=[0, 1])

# --------------------
# PROC SUMMARY / MEANS
# --------------------

# Average Age by Make.
df_summary1 = dfpolicies.groupby(['make'])['age'].mean().to_frame()

# --------------
# PROC TRANSPOSE
# --------------


