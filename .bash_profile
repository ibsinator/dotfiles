source ~/.bashrc

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"

# Add ~/bin to path
PATH="${PATH}:/Users/catrine/bin"

# Add apt-vim to path
PATH="${PATH}:/Users/catrine/.vimpkg/bin"
export PATH


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
