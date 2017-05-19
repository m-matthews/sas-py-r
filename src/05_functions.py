#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import math
from datetime import date
from datetime import datetime
from dateutil.relativedelta import relativedelta

# ----------------
# String Functions
# ----------------
wordarray = ("Hello", "World")
words = "Hello World"

print("CAT:", "".join(wordarray))
print("CATX:", ",".join(wordarray))
print("CHAR:", words[0:1])
print("COMPBL:", " ".join("Hello World  with   lots    of     space".split()))
print("COMPRESS:", words.replace(" ", ""))
print("FIND:", words.find("World"))
print("INDEX:", words.find("World"))
print("INPUT:", int("42"))
print("LEFT:", "  Hello World  ".lstrip())
print("LENGTH:", len(words))
print("LOWCASE:", words.lower())
print("PUT:", str(42.0))
print("QUOTE:", '"{}"'.format(words))
print("REPEAT:", "z"*42)
print("SCAN:", words.split(" ")[1])
print("STRIP:", "  Hello World  ".strip())
print("TRANSLATE:", words.replace("l", "?"))
print("TRANWRD:", words.replace("World", "Earth"))
print("TRIM:", "  Hello World  ".rstrip())
print("UPCASE:", words.upper())

# ----------------------
# Mathematical Functions
# ----------------------

# ----------------------
# Mathematical Constants
# ----------------------
print("E:", math.e)
print("PI:", math.pi)

# ------------------
# Datetime Functions
# ------------------
d = date.today()
print("DATE: ", d)
dt = datetime.now();
print("DATETIME: ", dt)
t = datetime.time(datetime.now());
print("TIME: ", t)

print("DATEPART: ", datetime.date(dt))
print("DAY: ", d.day)
print("HOUR: ", t.hour)
print("INPUT: ", datetime.strptime('2017-02-28', '%Y-%m-%d'))
d1 = date(2016, 2, 12)
d2 = date(2017, 2, 6)
print("INTCK: ", relativedelta(d2, d1).months)
print("INTNX: ", d1 + relativedelta(months = 12))
print("MINUTE: ", t.minute)
print("MONTH: ", d.month)
print("PUT: ", str(d), "or", d.strftime('%d/%m/%Y'))
print("QTR: ", d.month//3+1)
print("SECOND: ", t.second)
print("TIMEPART: ", datetime.time(dt))
print("TODAY: ", date.today())
print("WEEK: ", d.isocalendar()[1])
print("WEEKDAY: ", d.weekday())
print("YEAR: ", d.year)
print("YRDIF: ", relativedelta(d2, d1).years)

# -----------------------
# Miscellaneous Functions
# -----------------------

# ----------------------
# User Defined Functions
# ----------------------
