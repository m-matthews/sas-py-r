#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import pandas as pd
import psycopg2
from sqlalchemy import create_engine

# ----------------------------------
# POSTGRESQL - SQLALCHEMY and PANDAS
# ----------------------------------

# Create the connection to the database.
engine = create_engine('postgresql://pguser:pgpass@localhost:5432/postgres')

# Create a pandas dataframe from a query.
table = pd.read_sql_query('SELECT * FROM public.test_table', con=engine)
print(table)

# ---------------------
# POSTGRESQL - PSYCOPG2
# ---------------------
try:
    conn = psycopg2.connect("host='localhost' dbname='postgres' user='pguser' password='pgpass'")
except:
    print("Unable to connect to database")

cur = conn.cursor()

cur.execute("CREATE TABLE IF NOT EXISTS public.test_table (myid integer, mystring text)")
cur.execute("INSERT INTO public.test_table(myid, mystring) VALUES (42, 'Hello World')")
conn.commit()

cur.execute("SELECT myid, mystring FROM public.test_table")
rows = cur.fetchall()

print("public.test_table:")
for i, row in enumerate(rows):
    print("{}: {}, '{}'.".format(i, row[0], row[1]))

cur.close()
conn.close()
