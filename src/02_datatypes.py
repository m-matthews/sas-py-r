#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import datetime

# ----------
# Data Types
# ----------
bvar = True
nvar = 42.0
ivar = 42
svar = "Hello World"
dtvar = datetime.datetime(2017, 2, 28, 12, 0, 0)
dvar = datetime.date(2017, 2, 28)
tvar = datetime.time(12, 0, 0)

print("Boolean:", bvar, type(bvar))
print("Floating Point:", nvar, type(nvar))
print("Integer:", ivar, type(ivar))
print("String:", svar, type(svar))
print("Datetime:", dtvar, type(dtvar))
print("Date:", dvar, type(dvar))
print("Time:", tvar, type(tvar))

# ------
# Arrays
# ------
x = [1, 2, 3, 4]
# Try to use multiplication on the list.
print(x*2)
# Use numpy for multiplication.
print(np.asarray(x)*2)

# List comprehension: Double the value for each entry in the list.
print([a*2 for a in x])
# List comprehension: Double the value for each entry in the list where the value <= 2.
print([a*2 for a in x if a<=2])
