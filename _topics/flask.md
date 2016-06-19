---
topic: Flask
desc: Making Python-based web apps with Flask
tags:
- python
---

# Introduction

Flask is a framework for creating webapps in Python.  There are other frameworks for Python, Django being one of the most popular.  The advantage of Flask is that it is easy for beginners; the "Hello, World" webapp is a single file (see [below](#Hello_World_in_Flask).

# Hello World in Flask

These five lines of code (with one blank line) set up a webserver on your local machine at the web address <http://localhost:5000>.  Each time you request the default page for the site, i.e. `/`, you get back the message `Hello, World`:

```Python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
```

To try this code:
* Try running it either in IDLE, or by saving it in `hello.py` and running `python hello.py` at command line.
    * If you get an error message on the `from flask import flask` line,  you may need to do `pip install -U flask` first before you can run this code.   Other than that, it should just work.  
* Once its running, it sets up a web server running on localhost (i.e. the machine where you run the code) at port 5000.  
* To access that server, point your browser to <http://localhost:5000> in your browser.  
* You should see `Hello, World!' in the browser.  
* Try changing the message to `Hello, Friends` or `Hello, Gauchos` or `Hello, Tritons` so you can see that you have control over the webapp.

# Deployment

The following is true of webapps written in [Python](/topics/python) using Flask:

* They can be deployed in the cloud on [Heroku](/topics/heroku)
* Continous integration is available through [Travis-CI](/topics/travis-ci/)

# Tutorial information about Flask

Some tutorial information is available at these links.   Eventually I'd like to migrate some of this into this website directly:

* Flask tutorial created for UCSD CSE SPIS 2015: <https://sites.google.com/a/eng.ucsd.edu/spis/home/AcademicProgram/foundations/final-projects/web-apps>
