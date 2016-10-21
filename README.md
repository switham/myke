# myke
The basics of the `make` utility in 373 lines of Python.

I need to
* Integrate the `grip`-generated html into the way the page on my website is generated.
* Tell `myke` to use regular expressions rather than McGuffins.
* put the BSD license all over it.
  
I'll just steal the text from the web page as a first step:

---

> *"It began with an elaborate idea of a dependency analyzer, boiled down to something much simpler, and turned into `Make` that weekend."*<br>--Stuart Feldman

See, I was trying to do some development on a machine without enough space to install the whole developer tool suite.  I had everything I needed except `make`.  That's when it occurred to me:

> "Gee, I don't do anything really... *complicated* with `make`..."

Disclaimer: some friends in a lab where I once worked wrote a `make`-equivalent for a non-Unix system, and I learned from them how simple it is: `make` is basically a depth-first tree-traversal (with a cache).

So I spent nine hours on Saturday writing the gist of `make` in Python. At that point `myke` did all the basic stuff I use `make` for in my own work. Sunday I spent another nine hours futzing. The flip side of diminishing returns is that the first 2% of a project gives you an inflated opinion of yourself. Yeah, I'm a meta-maker now.

I've since found that although `gnumake` is compiled from about 70 times as many source lines and bytes as `myke`, its compiled binary is only about 300K bytes, and I could have just copied it to my laptop (no missing or incompatible libraries). So `myke` was a diversion from what I was doing that Friday.

I modeled `myke` on `make`'s behavior, rather than documentation or any opinions of my own. It was nice having so few design questions or decisions to make. One mystery is the difference between "nothing to be done for 'all'," and "target 'all' is up-to-date." The latter seems to happen when there were rules to run, but `make` didn't echo any of them to the terminal. You can trigger this by creating a rule with a line beginning with a tab but otherwise blank. `myke` doesn't go for that.

I liked working on a program called "`myke`." For instance there are "raise MykeException" statements, and comments like "myke counts on it."

`myke` is crazy like a fox, but not quite the character.

`myke` uses McGuffin-based parsing.

`myke` was inside of `make`, looking for a way out.

`myke` searches for significant whitespace.
