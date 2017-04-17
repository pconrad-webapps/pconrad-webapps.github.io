---
topic: End-to-End Testing
desc: "Testing webapps end-to-end, with Selenium, for example"
---

End-to-end testing refers to testing that attempts to simulate an actual human user interacting with your web application.

It is sometimes called end-to-end testing, because it tests the entire interaction with your web applications, from initial login, through
a series of transactions, all the way to the goal that the user has.  You might be simulating an entire user story, or sequence of stories.

It is often done using a technology called "Selenium", which allows a programmer to automate a series of interactions with a web browser.

Sometimes that's an actual web browser such as Firefox, and other times its a so-called "headless browser" where there is no "real" screen and rendering of the HTML to
graphical visual elements, but just a simulation of that.

You can interact with Selenium from a number of programming language: Ruby, Python, Java, and JavaScript, just to name a few.

This page is a place to document useful information about doing end-to-end testing for web applications.

# Rails

* https://robots.thoughtbot.com/rspec-integration-tests-with-capybara
