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
