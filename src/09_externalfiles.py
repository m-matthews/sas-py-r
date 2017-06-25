#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd
import json
from xml.etree import ElementTree
    
# ---------
# CSV Files
# ---------
policies = pd.read_csv("../data/policies.csv")

# ----------
# JSON Files
# ----------
with open("../data/sample.json", 'r') as f:
    jsondata = json.load(f)
print("JSON:", jsondata)

# ----------
# XLSX Files
# ----------
characters = pd.read_excel("../data/sample.xlsx")

# ---------
# XML Files
# ---------
tree = ElementTree.parse("../data/sample.xml")
for child in tree.getroot():
    for subchild in child.iter():
        if subchild.tag in ("name", "answer"):
            print("XML:", subchild.tag, "=", subchild.text)

# ------------------
# Unstructured Files
# ------------------
with open("../data/sample.txt", 'r') as f:
    for line in f.readlines():
        if len(line)==0:
            continue
        elif line[0]!='-':
            character = line.rstrip()
        else:
            line = line[2:].rstrip().split(',')
            actor = line[0]
            methods = [m.strip() for m in line[1:]]
            print(character, "played by", actor, "in", " & ".join(methods))

