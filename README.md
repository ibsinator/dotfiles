# dotfiles

Personal configuration files for terminal applications on macOS and Debian/Ubuntu.

## Installation

1. Clone the repository and run the installation script:

    ```bash
    git clone git@github.com:ibsinator/dotfiles.git
    cd dotfiles
    ./install.sh
    ```

2. Reload tmux: ```Prefix```  ```r```

### Optional settings for iTerm2

Import the color scheme _EyeCandy_ in iTerm2:

1. Go to __iTerm2 -> Preferences__, or press ```Cmd``` ```,```
2. Click __Profiles__ and choose the profile to modify
3. Click __Colors__
4. Go to the drop down menu __Color Presets...__ and click __Import...__
5. Locate the color files on the computer and click __Open__. 
   You may need to show hidden files: ```Cmd``` ```Shift``` ```.```
6. Go to the drop down menu __Color Presets...__ and choose the desired color profile

Activate _italic_ font in iTerm2:

1. Click __Profiles__ and choose the profile to modify
2. Click __Terminal__
3. Write the following in the box for __Report terminal type__:
   ```bash
   xterm-256color-italic
   ```

## Additional information

### Fancy $PS1

__timestamp user:path $__ in cyan and grey

```bash
PS1='\[\033[38;5;6m\]\A \h\[\033[00m\]:\[\033[38;5;8m\]\w\[\033[00m\] $ '
```

__timestamp user@hostname:path #__ with red background for root

```bash
PS1='\[\033[1;37m\]\[\033[41m\]\A \h:\w # \[\033[00m\] '
```

### .vimrc

Status bar in .vimrc influenced by [meskarunes vimrc](https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641)
