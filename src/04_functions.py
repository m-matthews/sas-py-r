#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import math

# ----------------
# String Functions
# ----------------
wordarray = ("Hello", "World")
words = "Hello World"

print("CAT:", "".join(wordarray))
print("CATX:", ",".join(wordarray))
print("CHAR:", words[0:1])
print("COMPBL:", " ".join("Hello World  with   lots    of     space".split(" ")))
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

# -----------------------
# Miscellaneous Functions
# -----------------------

# ----------------------
# User Defined Functions
# ----------------------
