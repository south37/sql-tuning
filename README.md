## HOW TO SETUP

```
bin/rake db:create
pg_restore -j 4 --verbose --no-acl --no-owner -d sql-tuning-dev db.dump
```
