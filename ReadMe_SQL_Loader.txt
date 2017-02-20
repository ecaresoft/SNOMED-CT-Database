Using the SQL Loader
==================

Install MySQL using the following options

Installer page
https://dev.mysql.com/downloads/windows/installer/5.7.html

Use the MSI installer (ignore fact that it refers to 32-bit … that is only the installer it installed 36 and 64 bit as appropriate.

Direct Download link (as at 2015-12-01)
https://dev.mysql.com/downloads/file/?id=459961

Ensure you select the options for default Developer.

Follow install process and in particular ensure you accept options to install additional components to support MySQL Workbench

—
Ensure you have downloaded RF2 release and unzipped.

When complete …

In MySQL Workbench open the script: rf2_import_full_template.sql


In the script file:

a) Replace $PATH$ throughout script with the path where your SnomedCT_RF2Release_INT_20150731 folder is located.
 - Note that even in Windows you use forward slashes for this. 
 - The example in dma_versions folder shows the script that I ran on my Windows environment.

b) Replace $YYYYMMDD$ throughout script with  20150731

Save as an appropriate name for your use.

Run the script.

It will appear to hang for 10-20 minutes before completing (assuming it is working). It will show warnings because it will not find existing tables to delete but these will not stop it. If you get any errors then it will stop and most likely cause will be folder path errors.

===

Then repeat for rf2_import_tc_template.sql but in this case

$PATH$ should be the folder where the following file is located: xder_TransitiveClosure_Snapshot_INT_20150731.txt 

====

VIEWS
======

The database created is called: snomedct

You will find a variety of optimised views are created in the database. 

These have the following prefixes:

sva - Snapshot view for latest date
soa - Snapshot view for latest date - optimised (usually but not always faster than sva)

svx - Snapshot view for specified* date
sox - Snapshot view for specified* date - optimised (usually but not always faster than sva)

* The specified date (and language) is set in the table called: config
Only one of the many rows in the table should have the value: active=1 and that is the row that will be used to determine the active configuration Language and ShapshotTime for the views.

In addition to the table based views there are some useful combined views:

These names follow the relevant prefix noted about

_fsn - view of descriptions that are fully specified names (preferred in config language)

_pref - the preferred synonyms (preferred in config language)

_syn - all acceptable synonyms (in config language)

Relationships shown with fsn or preferred term

_rel_child_(fsn|pref)
_rel_parent_(fsn|pref)
_rel_def_(fns|pref)








