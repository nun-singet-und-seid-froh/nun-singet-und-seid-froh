# conventions for entering a piece
The conventions for entering a piece are lead by the principle of code-readability. We want our lilypond-code to be easily read by human beings. This is important not only for proof-reading, but can also be relevant in the future, if want to use the musical information stored in our lilypond files, e.g. for any kind of remixing, rearranging or other uses we now can only imagine.

# use a template
For creating a score you should generally use a template. If there is no template for the kind of piece you want to typeset, create one. That said, we admit that indeed there *are* exceptions. But they are definitly *very rare*. 

For creating a new template read the [conventions for creating a new template](https://github.com/nun-singet-und-seid-froh/nun-singet-und-seid-froh/blob/master/conventions/conventions%20for%20writing%20templates.md). If creating a template is too complicated, open an issue at GitHub and we will create the template for you. If you think that your piece is the one-out-of-thousand exception, open an issue at GitHub as well, so we can discuss this before you start working.

# separating articulation and tune
Articulation and tune information shall be separated in different variables. The templates reflect this with the variables sopArt and sopVoice.

# bar numbering and bar checks
Every bar is supposed to take one separate line of source code. Within the code bars should be numbered (with a commentary) at least every 10th bar, to make orientation easy.

Every bar should be finished by a pipe ("|") - which tells LilyPond to check whether and to produce a warning if that's not the case.

#variable naming
If you need to use variables additionally to the predefined variables of the template you use, name those variables in a way which makes it easy to recognize what the variables are ment to be used for. If you think you are forced to define new variables, always wonder if it's not a new template that you actually need to create.
