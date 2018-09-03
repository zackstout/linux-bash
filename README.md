# Linux and Bash Scripts
Learning the main commands and techniques of Linux and how to write bash scripts.

## Notes:
- To create an alias, use `vim ~/.bashrc` then append e.g. `alias gpom='git push origin master'`. (And then `:wq` to save, and `source ~/.bashrc` or restart the terminal.)
- To get information about...:
  - `uname` to get info about current kernel,
  - `ifconfig` to get IP info,
  - `df` for disk space,
  - `service [name] [cmd]` for services,
  - `netstat` for info about open ports/sockets,
  - `top` for computational/processing info.
- Can use `ctrl + k` (kill to end), `ctrl + u` (kill up to), `ctrl + w` (kill word) and `ctrl + y` (yank, i.e. paste) to manipulate text in the terminal's shell.
- Enter a shell session with `bash`, and exit with `ctrl + d`.
- Huh, you can use `alt` plus buttons to make funky symbols.
- Use `history` to see your history; can be useful to pipe it into `less`.

## Next steps:
- `grep`, `aux`, `sed`, `awk`, the intricacies of `cat` and `sort`.
- Learn the flags: they are specific to each command, so use `man` liberally.

## Scripts with npm:
- Use `pre` and `post` tags to run a script before/after another process is run.
- `-D` is shorthand for `--save-dev`
- `&&` chains commands, only running each command if its predecessor succeeded.
- Example command with output tag: `node-sass --output-style compressed -o dist/css src/scss`
- Example script with only-if-not-exist tag: `"imagemin": "imagemin src/images dist/images -p"`
- Problem with npm scripting is that they are not platform independent; this is a large part of Grunt/Gulp/Brunch's value.

## Shout outs:
I learned a lot from the following materials:
- Blogs:
  - https://css-tricks.com/why-npm-scripts/
  - https://medium.freecodecamp.org/introduction-to-npm-scripts-1dbb2ae01633

- Youtube:
  - https://www.youtube.com/watch?v=oxuRxtrO2Ag
  - https://www.youtube.com/watch?v=pEN4WnFNMx0
