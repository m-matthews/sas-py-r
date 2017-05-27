# Python and R for SAS Developers

## Reading and Writing Database Tables

Reading a large database table is always an expensive operation.  Whenever possible, the use of in-database
processing should be performed to subset and pre-summarise the data before extraction.  This will minimise
the amount of data moved from the database to the platform where the processing is performed.  If a step is
possible to be performed entirely within the database (eg: native SQL) then this may be preferable, potentially
with the selected programming language creating the SQL dynamically.

Writing large amounts of data to a database may work with the default connection/drivers, however databases often
have 'bulkload' facilities which can perform these operations more quickly (often by bypassing the commit / rollback
requirements of row-by-row inserts).

Both reading and writing performance may be improved by reviewing default buffer and cache sizes.

## Supported Databases

Python and R have an extensive list of libraries to support most database vendors.  This documentation covers PostgreSQL and SQLite.

## PostgreSQL

The following examples use the Python [SQLAlchemy](https://www.sqlalchemy.org/) and R RPostgreSQL libraries for performing an SQL `SELECT` into Python's Pandas DataFrame and R's data.table structures.

Full example programs are available for each language in the files [10_databases.py](../src/10_databases.py) and [10_databases.r](../src/10_databases.r).

Python:

```python
from sqlalchemy import create_engine

# Create the connection to the database.
engine = create_engine('postgresql://pguser:pgpass@localhost:5432/postgres')

# Create a pandas dataframe from a query.
table = pd.read_sql_query('SELECT * FROM public.test_table', con=engine)
```

R:

```r
library(RPostgreSQL)

# Create the connection to the database.
con <- dbConnect(dbDriver("PostgreSQL"), host="localhost", port=5432, dbname="postgres",
                 user="pguser", password="pgpass")

# Create a data.table from a query.
table <- as.data.table(dbGetQuery(con, "SELECT * FROM public.test_table"))

# Disconnect from the database.
dbDisconnect(con)
```


---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 09. External Files](09_ExternalFiles.md) | [Table of Contents](00_TOC.md) | [11. Internet &gt;&gt;](11_Internet.md) |
