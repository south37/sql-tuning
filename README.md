SQL Tuning Sokusyu-Kai
======================

This is the repo for keynote "SQL Tuning Sokusyu-Kai"

- Event: http://wantedly.connpass.com/event/23794/
- Slide: http://www.slideshare.net/naominami908/railssql


SET UP
---------

You'll need to have Rails installed.

```sh
bin/rake db:create
pg_restore -j 4 --verbose --no-acl --no-owner -d sql-tuning-dev db.dump
```

This will do:

- Create database
- Insert data for sample query shown in slide
