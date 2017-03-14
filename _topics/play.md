---
topic: Play
desc: "Java and Scala web application framework"
tags:
- java
---

See: <https://www.playframework.com>


# Getting started with Play on Mac

The recommended first step is to install a tool called `sbt` (Scala Build Tool); it isn't strictly necessary, but it does have certain advantages.

On Mac, you can use:

```
brew install sbt
```


Then:

<https://www.playframework.com/documentation/2.5.x/Installing>

You may like to fork this github repo: <https://github.com/playframework/play-java>   , then clone the fork, cd into the directory and run `sbt`

The tutorial there also recommends installing something called "Activator", from here: https://www.lightbend.com/activator/download

* That link downloads a file called: https://downloads.typesafe.com/typesafe-activator/1.3.12/typesafe-activator-1.3.12.zip
* which unzips to a folder called: `activator-dist-1.3.12`
* I was then able to run it by doing `~/Downloads/Activator/activator-dist-1.3.12/bin/activator ui` from inside the github repo that I forked from <https://github.com/playframework/play-java>



