---
topic: "Postgres: MacOS"
desc: "Troubleshooting for MacOS Postgres Issues"
indent: true
tags:
- database SQL MacOS
---

# Postgres via Homebrew

* `brew reinstall postgresql`
* `brew services start postgres`
* Get rid of all databases (dangerous): `rm -rf /usr/local/var/postgres`
* Reinitialize all databases: `initdb /usr/local/var/postgres -E utf8
* `psql`

# Upgrading PostgresQL on Mac

When upgrading PostgreSQL on Mac, you may run into this error:

`The binaries for this PostgreSQL server were not found`

The website <http://postgresapp.com/documentation/troubleshooting.html> has some information about this error that is helpful, 
but in my experience, insufficient to solve the problem.  Here's the missing piece.

The solution, which I stumbled across, is this.  In the app, you have screen that looks like this.  There is a magic button at the bottom that would easily go unnoticed, that opens a side panel.

![postgres.app.png](50_postgres.app.png)

On the side panel, you'll see that you can add and delete servers.  The problem `The binaries for this PostgreSQL server were not found` occured for me because the server that my Postgres app was trying to open was pointing to version 9.4 of the binaries, which no longer existed on my system after I upgraded.    You can see which versions you *do* have on your system by looking under `/Applications/Postgres.app/Contents/Versions/` (that's the part the website gets right.)

```
Phills-MacBook-Pro:pconrad-webapps.github.io pconrad$ ls /Applications/Postgres.app/Contents/Versions/
9.5	9.6	latest
Phills-MacBook-Pro:pconrad-webapps.github.io pconrad$ 
```

It appears that I have 9.5 and 9.6.  So I created a new server for version 9.6, like this:

![postgres.click.plus.png](50_postgres.click.plus.png)

![postgres.app.create.new.server.png](50_postgres.app.create.new.server.png)
