#!/usr/bin/env python3
# -*- coding: utf-8 -*-

answer = 42
word = "Hello"

# ---------------------
# Conditional Execution
# ---------------------
if answer==42:
    print("Correct")
elif answer<42:
    print("Too small")
else:
    print("Too big")

if word in ("Hello", "Goodbye"):
    print("Found")

# -------
# Looping
# -------
for i in range(10):
    print(i)

for i in range(3, 8, 2):
    print(i)

for w in ("Hello", "World"):
    print(w)

for i, w in ((21, "Hello"), (42, "World")):
    print(i, w)

for i, w in enumerate(("Hello", "World")):
    print(i, w)
