---
topic: "Google Calendar"
desc: "Tips for embedding and working with Google Calendar"
---

# Embedding a Google Calendar in a website

To embed a Google Calendar in a website, right click on the settings tab of the Google Calendar to access the source code of an iframe element 
you can use to embed the calendar.

If you want the calendar to start on a day other than the current date, you'll need [this hack](http://www.daynw.com/changing-the-default-month-or-day-for-an-embedded-google-calendar).

The short version is to append `&dates=20160901%2F20160901` or possibly, `&amp;dates=20160901%2F20160901` to the `src` attribute of the `iframe` element. 

The `%2F` is the url-encoded version of the `/` character.
