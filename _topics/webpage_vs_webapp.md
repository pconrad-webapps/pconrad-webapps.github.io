---
topic: "Web Pages vs. Web Apps"
desc: "Static web pages (HTML/CSS) vs. Dynamic Pages (client/server side code)"
---


Static Web Page vs. Web App
---------------------------

First, let's understand the difference between:

-   a static web page
-   a web app

The short version is that a static web page is simply a "file" on the server containing HTML code. Each time a request comes to a server for that file, it will return the contents of that file as the response. It is straightforward and simple. Static web pages are retrieved with GET requests.

A web app, by contrast, is some custom code that runs on the server that <em>computes</em> the web page that gets returned. Typically, requests made to a web app, contain some <em>parameters</em> that are used to compute the result.

The request to a web app may also be of several different types, with GET and POST being the most common types of requests.

-   Technically, GET and POST are just two of a long list of requests types called <b>HTTP Methods</b>
-   The full list of them is defined in [Section 9 of the HTTP 1.1 standard, RFC2616](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html), and includes in addition to GET and POST, these types: OPTIONS, HEAD, DELETE, PUT, TRACE, CONNECT
-   The ones other than GET and POST, though, are rarely used by folks that are just getting started with web app programming.

That's why many of the books, web sites, and other resources you read will only mention GET and POST, and emphasize when to use one vs. the other. We'll do the same—do keep in mind though, that as your understanding of web applications progresses and you move into the topic of [RESTful APIs](RESTful_APIs "wikilink"), you'll need to move beyond just GET and POST.

### Static Web Pages

A **static web page** is what you get when you make a .html file, and put it in your public\_html directory on CSIL. As an example, you might:

-   put the HTML code below into `sample.html`
-   store it under the directory /cs/student/yourname/public\_html
-   Do these chmod commands so that the Apache webserver process on CSIL has access to it:
    -   `chmod` `711` `$HOME`
    -   `chmod` `-R` `755` `$HOME/public_html`
-   Access the page at <http://www.cs.ucsb.edu/~yourname/sample.html>

<!-- -->

    &lt;!DOCTYPE html&gt;
    &lt;html&gt;
     &lt;head&gt;
       &lt;title&gt;Sample web page&lt;/title&gt;
     &lt;/head&gt;
     &lt;body&gt;
       &lt;p&gt;Hello, world.&lt;/p&gt;
     &lt;/body&gt;
    &lt;/html&gt;

### GET request for a static page

When you put the URL <http://www.cs.ucsb.edu/~yourname/sample.html> into your browser and hit enter, the browser sends an HTTP message to the server called a"GET" request, and the server responds with the contents of the requested file. It's up to your browser to make sense of the HTML that is returned, and display it properly.

More specifically:

-   Your browser divides the URL into two parts: <http://www.cs.ucsb.edu> (the host) and ~yourname/sample.html (the requested resource on that host).
-   The browser opens an HTTP Connection to the host, www.cs.ucsb.edu, which is running the Apache webserver.
-   The Apache webserver on www.cs.ucsb.edu is configured so that when it gets a request for a resource formatted like ~yourname/sample.html, it looks under the home directory of user yourname for a directory called public\_html, then for a file named sample.html, and returns the contents of that file in the HTTP <em>response</em> message.

In summary, we have:

-   URL in browser get divided into HOST and RESOURCE
-   Browser opens HTTP connection to HOST and sends "GET" requestfor RESOURCE
-   Server finds the file that corresponds to RESOURCE, and responds with HTTP response, containing file contents.

### GET requests made to a web app

By contrast, a <b>web app</b> is some code that the web server runs in response to a GET request to <em>calculate</em> the response that will be sent back.

Perhaps the most familiar and commonly used "web app" is Google Search. Consider this URL:

    https://www.google.com/search?q=pupplies

### GET parameters

Let's break this URL [`https://www.google.com/search?q=pupplies`](https://www.google.com/search?q=pupplies) down into its pieces:

-   The HOST in this URL is www.google.com, and the RESOURCE is `search?q=puppies`
-   The part that comes after the question mark (`?`) contains <em>parameter values</em>. In general, its a list of key/value pairs.
-   In this particular URL, there is only one key/value pair. The key is `q` and the value is `puppies`

In response the Google web server runs a computation that:

-   does a search on the term `puppies`
-   collects results in some data structure
-   converts that data structure into the HTML for a formatted web page of those results
-   sends back that computed web page

### Where do GET parameters come from?

Typically, though, a user doesn't interact with Google by typing in a query such as that one. It would be more typical to go to <http://google.com>, or a Google Search bar, or app on their phone, then type `puppies` into the search box and press return.

In the case of the Google.com home page at <http://google.com>, the HTML for that page is coded so that whatever you type into the search box produces a URL that has `q=puppies` in it. In general, any web page or app that interacts with a web app via GET requests will have code to

-   gather input from the user (through text boxes, check boxes, radio buttons, etc.)
-   put that input into the appropriate parameters to the GET request
-   send that along with the GET request to the server.

### To review: What does a web app do?

A web app:

-   receives a HTTP GET request message or any of several other kinds of request that we'll discuss in a moment), along with its parameters,
-   <em>computes</em> the response that goes back (in HTML, or whatever other format may be needed) based on the requested resource and its parameters
-   sends that response back to the requester in an HTTP response message

### What are we trying to accomplish again in this lab?

-   In this lab, we will <em>create a basic "Hello, World" type web app in Java"</em>
-   To test that, we need to run that on a server somewhere.
-   Configuring a web server for Java is challenging. But, fortunately, we don't have to.
-   Heroku.com offers "platform as a service" cloud computing for Java web applications.
    -   We'll use the "free plan" that they offer for folks just getting started with learning Heroku.
    -   This puts your application "on the web", for real, so that anyone in the world can access it 24/7

### POST requests made to a web app

(Learn More: "Get vs. Post" <http://blog.teamtreehouse.com/the-definitive-guide-to-get-vs-post> )
