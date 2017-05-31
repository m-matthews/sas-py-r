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
