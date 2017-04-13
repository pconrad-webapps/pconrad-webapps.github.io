---
topic: Documentation
desc: Tools for generating API documentation (similar to javadoc)
---

Good API documentation is an indispensible tool for any API or library.

The process of keeping that documentation in sync with the code is aided greatly by having an automated tool (in fact, it could be argued that
in the absence of such a tool, it is unlikely to happen.)

The *javadoc* tool for java [(wikipedia article)](https://en.wikipedia.org/wiki/Javadoc) is one of the tools that is most familiar.  For Java code, the javadoc tool 
can automatically generates documentation, by default, in the form of a website,
for the public methods and properties of each class in a code base.   It can do this even in the absence of any particular effort on the part
of the code authors to document the code, but the usefulness of the generated documentation can be greatly enhanced by the addition of
specially formatted comments at the top of each compilation unit (interface, class, method) that provide additional context, detail, and examples of the use of the
object or method.

Similar tools exist for other programming languages.  This page is a place to compile a list of those, along with pointers in information
and useful tips.

# JavaScript

This [Stack Overflow question](http://stackoverflow.com/questions/6096649/documenting-node-js-projects) asks about tools for documenting
node.js project.

A few documentation tools for JavaScript:

* [groc](http://nevir.github.io/groc/).   Note that there is no currently ongoing maintenance of this project.
