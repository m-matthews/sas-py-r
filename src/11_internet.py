#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests

# -------------
# READ URL DATA
# -------------
r = requests.get("https://api.github.com/users/m-matthews")

print("\nEncoding:", r.encoding)

print("\nText:", r.text[:20], "...")

j = r.json()
print("\nName:", j["name"], "\nLocation:", j["location"])
