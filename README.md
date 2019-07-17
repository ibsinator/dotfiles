dotfiles
========

Personal configuration files for terminal applications on macOS and Debian/Ubuntu.

Fancy $PS1
----
__timestamp user:path $__ in cyan and grey
```
PS1='\[\033[38;5;6m\]\A \h\[\033[00m\]:\[\033[38;5;8m\]\w\[\033[00m\] $ '
```
__timestamp user@hostname:path #__ with red background for root
```
PS1='\[\033[1;37m\]\[\033[41m\]\A \h:\w # \[\033[00m\] '
```

.vimrc
------
Status bar in .vimrc influenced by [meskarunes vimrc](https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641)
