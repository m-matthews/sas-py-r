#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests

# -------------
# READ URL DATA
# -------------
r = requests.get("https://api.github.com/users/m-matthews")

print("\nEncoding:", r.encoding)

# Read as a text stream.
print("\nText:", r.text[:20], "...")

# Read and convert JSON data.
j = r.json()
print("\nName:", j["name"], "\nLocation:", j["location"])
