# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(artisan composer git gh gpg-agent npm ssh-agent)

zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pa="php artisan"
alias pamrs="php artisan migrate:refresh --seed"
alias pam="php artisan make:"
alias cdc="cd ~/code"
alias cdcv="cd ~/code/valet"

if [ -e "/Applications/Google Chrome.app" ]; then
    function chrome {
        if [ $# -eq 1 ]; then
            echo "$PWD/$1"
            if [ -d "$PWD/$1" ]; then
                /usr/bin/open -a "/Applications/Google Chrome.app" "http://$1.test"
            else
                echo 'Sorry, that directory does not appear to exist.'
            fi
        else
            /usr/bin/open -a "/Applications/Google Chrome.app" "http://$(basename $PWD).test"
        fi
    }
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

test -d "/opt/homebrew/bin" && export PATH="/opt/homebrew/bin:$PATH"
test -d "/opt/homebrew/bin" && eval "$(/opt/homebrew/bin/brew shellenv)"

# Composer plugin is detecting and updating the path
#test -d "${HOME}/.composer/vendor/bin" && export PATH="$PATH:${HOME}/.composer/vendor/bin"
#test -d "${HOME}/.config/composer/vendor/bin" && export PATH="$PATH:${HOME}/.config/composer/vendor/bin"

ARTISAN_OPEN_ON_MAKE_EDITOR=code

# Keypad
# 0 . Enter
#bindkey -s "^[Op" "0"
#bindkey -s "^[On" "."
#bindkey -s "^[OM" "^M"
# 1 2 3
#bindkey -s "^[Oq" "1"
#bindkey -s "^[Or" "2"
#bindkey -s "^[Os" "3"
# 4 5 6
#bindkey -s "^[Ot" "4"
#bindkey -s "^[Ou" "5"
#bindkey -s "^[Ov" "6"
# 7 8 9
#bindkey -s "^[Ow" "7"
#bindkey -s "^[Ox" "8"
#bindkey -s "^[Oy" "9"
# + - * /
#bindkey -s "^[Ol" "+"
#bindkey -s "^[OS" "-"
#bindkey -s "^[OR" "*"
#bindkey -s "^[OQ" "/"

#bindkey "\033[1~" beginning-of-line
#bindkey "\033[4~" end-of-line

