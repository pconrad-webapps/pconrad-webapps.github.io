---
topic: "Postgres: MacOS"
desc: "Troubleshooting for MacOS Postgres Issues"
indent: true
tags:
- database SQL MacOS
---


When upgrading PostgreSQL on Mac, you may run into this error:

`http://postgresapp.com/documentation/troubleshooting.html`

The website <http://postgresapp.com/documentation/troubleshooting.html> has some information about this error that is helpful, 
but in my experience, insufficient to solve the problem.  Here's the missing piece.

The error happened to me after I had updated my instance of the Postgres App (from <http://postgresapp.com>) to the latest version.  It
so happens that upgrading doesn't change some configuration file.    As a result, the app was trying to start up a server using version 9.4 of the software,
but at this point, I only had the binaries for versions 9.5 and 9.6.

The solution, which I stumbled across, is this.  In the app, you have screen that looks like this:


![postgres.app.png](50_postgres.app.png)

![postgres.app.create.new.server.png](50_postgres.app.create.new.server.png)

![postgres.click.plus.png](50_postgres.click.plus.png)