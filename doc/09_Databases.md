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


<table width="100%">
  <tr>
    <td width="33%" align="left"><a href="08_ExternalFiles.md">&lt;&lt;08. External Files</a></td>
    <td width="34%" align="center"><a href="00_TOC.md">Table of Contents</a></td>
    <td width="33%" align="right"><a href="10_Internet.md">10. Internet&gt;&gt;</a>></td>
  </tr>
</table>