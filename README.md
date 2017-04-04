Import PATSTAT into MySQL
=========================

European Patent Office (EPO) database PATSTAT is a snapshot of the EPO master documentation database (DOCDB) with worldwide coverage, containing approximately 20 tables including bibliographic data, citations and family links.

PATSTAT is shipped as a bunch of zipped, csv files spread across multiple DVDs. Unfortunately, existing scripts and documentation only help users loading raw data into MSSQL databases.

This utility wants to make it easy for everyone to build a *PATSTAT MySQL* database from raw csv data. To achieve high-performances, database tables are compressed.

This version on branch patstat_2016b has full compatibility with version Autumn 2016, also known as 2016b.

Currently, the master branch has full compatibility with version Spring 2016, also known as 2016a.

~~The utility is also capable of loading the standardized EEE-PPAT person table with harmonized assignee names and assignee sector allocations (https://www.ecoom.be/en/EEE-PPAT). This table has been officially included in version 2015a.~~ This is untested, as I do not have this database.

Prerequisites
-------------
Every zipped table file `tlsXXX_partYY.zip` found in PATSTAT DVDs should be copied into a single folder. TLS221_INPADOC_PRS DVD zipped table may be copied there as well.


Usage
------

Run `load_patstat.sh` without parameters to display a brief help. Mandatory parameters are mysql_user and password, as well as MySQL database host and name. Optionally, a `-v` may be passed to obtain a verbose output. For testing purposes one may want to pass the modifier `-t` to only loads small portions of zipped csv files. Output and error logs are written to `output_log_YYYY-MM-DD` and `error_log_YYYY-MM-DD` in the current workind directory. One may specify a different directory using the modifier `-o`.

```
$ ./load_patstat.sh
Usage: [-v] [-t] -u mysql_user -p mysql_pass -h mysql_host -d mysql_dbname -z patstat_zips_dir
  -v: be verbose
  -t: load small chunks of data for testing purposes
  -z: directory containing patstat zipped files shipped in DVDs (defaults to ./data)
  -o: output and error logs directory (defaults to ./)

```

Examples
--------
Load a **test** PASTSTAT database and the standardized person table into a MySQL database on `localhost` named `patstat_2016b` -- note the `-t` modifier. Zipped table files have been placed into the default folder `./data`.

```
$ ./load_patstat.sh -u <USER> -p <PASSWORD> -h localhost -d patstat_2016b -t

```

Load a **full** PATSTAT database and the standardized person table into a `localhost` MySQL database `patstat_2016b`. Again, zipped table files have been placed into the default folder `./data`.

```
$ ./load_patstat.sh -u <USER> -p <PASSWORD> -h localhost -d patstat_2016b

```

Example specifying non-default directories for zip files (default `./data`), for
temporary directory for unzipping (default `/dev/shm`), and for mysql data
(default `/var/lib/mysql`). Consider using non-default directories if space on
`/` is limited.

```
$ ./load_patstat.sh -u <USER> -p <PASSWORD> -h localhost -d patstat_2016b -z /path/to/zipfiles -e /path/to/temp_dir -m /path/to/mysql_data_dir -v
```

Troubleshooting
---------------
This utility must have write privileges into MySQL data folder. This is necessary to compress database tables and to work with table indices. Make sure the user that executes `load_patstat.sh` has such privileges.

The ```mysql_user``` should have RELOAD privileges.
