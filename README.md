# Linux and Bash Scripts
Learning the main commands and techniques of Linux and how to write bash scripts.

There are two main goals here. Learning all the built-in functionality, such as `wc` for counting lines, saves me time: I don't have to reinvent the wheel to get that functionality in the future. But learning the basic pieces will alter the way that I conceptualize future problems, and allow me to imagine more appropriate solutions (if you only have a hammer, everything's a nail, etc.).

## Aliasing:
- To create an alias, use `vim ~/.bashrc` then append e.g. `alias gpom='git push origin master'`. (And then `:wq` to save, and `source ~/.bashrc` or restart the terminal.)
- If you want to create an alias that takes in a command line argument (for instance a command that takes in a commit message and pushes it up to Github), instead create a function in your `.bashrc` file, and call that instead. You don't need to `alias` anything.
  - Oh, but you have to be sure to handle the fact that spaces in the shell will be interpreted as separations between arguments...
- Wait, we won't have to `source` in `~/.bashrc` every time, right...?
- Ooooh I think we may want to save our changes to `~/.bash_profile` rather than `~/.bashrc`. That should fix it.

## Bash:
- Remember that you (usually? sometimes?) need to run `chmod 755 [file]` to add execution permission.
  - Also remember to preface calls to `.sh` files with `./`.
- To get information about...:
  - `uname` to get info about current kernel,
  - `ifconfig` to get IP info,
  - `df` for disk space,
  - `service [name] [cmd]` for services,
  - `netstat` for info about open ports/sockets,
  - `top` for computational/processing info.
- Can use `ctrl + k` (kill to end), `ctrl + u` (kill up to), `ctrl + w` (kill word) and `ctrl + y` (yank, i.e. paste) to manipulate text in the terminal's shell.
- Use `ctrl + a` and `ctrl + e` to go to beginning and end of line.
- Enter a shell session with `bash`, and exit with `ctrl + d`.
- Huh, you can use `alt` plus buttons to make funky symbols.
- Use `history` to see your history; can be useful to pipe it into `less`.
- `test` is quite useful, and controls what happens when you evaluate expressions e.g. in conditionals.
  - `-n` checks for non zero length
  - `-e` checks if file exists
- Can use `$USER` and `$HOME` to access useful info inside scripts.
- Use double parentheses or `expr` to evaluate arithmetic expressions.

## Next steps:
- `grep`, `aux`, `sed`, `awk`, the intricacies of `cat` and `sort`.
  - Can use our Shakespeare text to play around with these commands.
- Learn the flags: they are specific to each command, so use `man` liberally.
- Write a script that finds all git repos that have new stuff to commit, and push them all to master.
- Write a script that tells you when it makes sense to quit a game (when your low odds outvalue possible time..?).

## Scripting with npm:
- Use `pre` and `post` tags to run a script before/after another process is run.
- `-D` is shorthand for `--save-dev`
- `&&` chains commands, only running each command if its predecessor succeeded.
- Example command with output tag: `node-sass --output-style compressed -o dist/css src/scss`
- Example script with only-if-not-exist tag: `"imagemin": "imagemin src/images dist/images -p"`
- Problem with npm scripts is that they are not platform-independent; this is a large part of Grunt/Gulp/Brunch's appeal.

## Shout outs:
I learned a lot from the following materials:
- Blogs:
  - https://css-tricks.com/why-npm-scripts/
  - https://medium.freecodecamp.org/introduction-to-npm-scripts-1dbb2ae01633
  - https://www.panix.com/~elflord/unix/bash-tute.html
  - http://programmingexamples.wikidot.com/bash-scripting

- Youtube:
  - https://www.youtube.com/watch?v=oxuRxtrO2Ag
  - https://www.youtube.com/watch?v=pEN4WnFNMx0

- [Bash Snippets](https://github.com/alexanderepstein/Bash-Snippets), from which I downloaded `cheat` and `weather`.
