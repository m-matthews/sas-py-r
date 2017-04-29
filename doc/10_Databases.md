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

...

---

| Previous       |                | Next           |
|:-------------- |:--------------:| --------------:|
| [&lt;&lt; 09. External Files](09_ExternalFiles.md) | [Table of Contents](00_TOC.md) | [11. Internet &gt;&gt;](11_Internet.md) |
