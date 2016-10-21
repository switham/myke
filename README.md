# myke
The basics of the `make` utility in 373 lines of Python.

I need to
* back-translate the `index.html` file into Github-flavored Markdown,
* get `grip` working to translate the markdown back into html
* put the BSD license all over it.
  
I'll just steal the text from the web page as a first step:

---

> *"It began with an elaborate idea of a dependency analyzer, boiled down to something much simpler, and turned into `Make` that weekend."*<br>--Stuart Feldman

See, my laptop currently has only one small functioning partition, so I can't install the whole developer tools suite onto it. I was working on some Java code on the laptop. The project includes a Makefile, but I had to compile by hand on the laptop.

I noticed the basic Mac OS X install includes gcc, javac, jar, and java, but not `make` (nor ant nor SCons). That's when it occurred to me:

"Gee, I don't do anything really...complicated with `make`..."

So I spent nine hours on Saturday writing the gist of `make` in Python. At that point `myke` did all the basic stuff I use `make` for in my own work. Sunday I spent another nine hours futzing. The flip side of diminishing returns is that the first 2% of a project gives you an inflated opinion of yourself. Yeah, I'm a meta-maker now.

I've since found that although `gnumake` is compiled from about 70 times as many source lines and bytes as `myke`, its compiled binary is only about 300K bytes, and it does run when copied to my laptop (no missing or incompatible libraries). So `myke` has been a diversion from what I was doing on Friday.

I modeled `myke` on `make`'s behavior, rather than documentation or any opinions of my own. It was nice having so few design questions or decisions to make. One mystery is the difference between "nothing to be done for 'all'," and "target 'all' is up-to-date." The latter seems to happen when there were rules to run, but `make` didn't echo any of them to the terminal. You can trigger this by creating a rule with a line beginning with a tab but otherwise blank. `myke` doesn't go for that.

I liked working on a program called "`myke`." For instance there are "raise MykeException" statements, and comments like "myke counts on it."

`myke` is crazy like a fox, but not quite the character.

`myke` uses McGuffin-based parsing.

`myke` was inside of `make`, looking for a way out.

`myke` searches for significant whitespace.
