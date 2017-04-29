#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd

# Import data produced with 'random.py'.
policies = pd.read_csv("../data/policies.csv")
claims = pd.read_csv("../data/claims.csv")

# -----------------------
# Subsetting rows (WHERE)
# -----------------------

polunder25 = policies[policies["age"]<25]
pol25plus = policies[policies["age"]>=25]

# -------------------------
# Subsetting columns (KEEP)
# -------------------------

polstate = policies.loc[:,("policy","state")]
polstate_rename = policies.loc[:,("policy","state")].rename(columns={"policy": "policy_number"})

# ----------------------------------
# Appending data (SET / PROC APPEND)
# ----------------------------------

# Method 1 - pd.concat accepts a list of dataframes.
combined1 = pd.concat([polunder25, pol25plus])

# Method 2 - pd.append adds a dataframe to an existing dataframe.
combined2 = policies[policies["age"]<25]
combined2 = combined2.append(pol25plus)

# --------------------
# Merging data (MERGE)
# --------------------

merged = policies.merge(claims)
merged_left = policies.merge(claims, how="left")
