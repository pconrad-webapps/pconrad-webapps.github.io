---
topic: OAuth
desc: "The way we implement 'login with Facebook', 'login with Google', etc."
tags:
- oauth
---

# TODO: Add documentation on OAuth here

# Documenting OAuth

When writing documentation for OAuth, you may need to generate random "fake" numbers for the Client Id and Client Secret.  That is, you 
may want to show a screenshot of the screen in the Github OAuth Applications screen that shows the Client Id and Client Secret, but you'll want
to replace the actual numbers in the screenshot with fake ones.

Here's some quick and dirty Python to generate plausible numbers.

```python
>>> import random
>>> "%x" % random.randint(0,(1 << 40*4) -1)
'7f3572b1b91d4ec5297fab54b1ab51b5dc8a997d'
>>> "%x" % random.randint(0,(1 << 20*4) -1)
'99fe329dc31f75e9b92b'
>>> 
```

Explanation: 
* We `import random` so that we can generate random numbers
* For Github, the client id is 20 random hex digits, and the client secret is 40 random hex digits.
* The `40*4` is the number of bits we need to get 40 hex digits (i.e. 160), given that there are 4 bits per hex digit
* The `(1 << 40*4)` shifts 1 by `40*4` bits to the left (160 bits), and is thus equivalent to $$ 2^{160} $$.  
* `random.randint(0,(1 << 40*4) -1)` therefore gives us a random integer between 0 and $$ 2^{160}-1$$.  
* The code `"%x" % int_expr` gives us the value of an integer expression `int_expr` in hex

