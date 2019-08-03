# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git)

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
export PATH=$HOME/npm/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/star/bin:$PATH
alias paste='termux-clipboard-get'
alias copy='termux-clipboard-set'
alias gitx='gitfolder -u'
alias tc='termux-chroot'
alias ta='termux-chroot'
alias pro='cd Projects'
alias pftp='python /data/data/com.termux/files/home/.pftp.py &>/dev/null &'
alias pretty='prettier --write'
alias prettyc='prettier --check'
alias playlist='youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0  --external-downloader aria2c --external-downloader-args "-c -j 5 -x 5 -s 5 -k 1M"'

## ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lh='ls -alFh'
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
clone (){

        if [ $# -eq 0 ]; then
            echo "Please enter repo name or full url:";
            read repo;
            clone $repo;
        elif [[ $1 == --help ]] || [[ $1 == --h ]] || [[ $1 == --? ]]; then
            echo "This will clone a git repo.";
            echo "";
            echo "Option 1: You can just provide the name, eg:";
            echo "$ clone arif";
            echo "This will do: git clone https://github.com/arif25169/arif.git";
            echo "";
            echo "Option 2: Provide the full URL";
            echo "$ clone https://github.com/webpack/webpack.git";
            echo "This will do: git clone https://github.com/webpack/webpack.git";
        else
            if [[ $1 == https://* ]] ; then
                URL=$1;
            elif [[ $1 == 's' ]] || [[ $1 == '-s' ]] || [[ $1 == 'ssh' ]]; then
                URL='git@github.com:arif25169/'$2'.git';
            else
                URL='https://github.com/arif25169/'$1'.git';
            fi

            echo git clone "$URL";
            git clone "$URL";
        fi
    }
myfunction() {
    #do things with parameters like $1 such as
    mv "$1" "$1.bak"
echo "hi! $1"
    cp "$2" "$1"
echo "hi! $2 "
}
downh() {
    curl "http://$1" --output "$2"
    echo "Downloading $2 from  http://$1 "
}
down() {
    curl "$1" --output "$2"
    echo "Downloading $2 from  http://$1 "                        }

edit() {
    dot="$(cd "$(dirname "$0")"; pwd)"
    vim "$dot/$1"
}


delr() { 
  dot="$(cd "$(dirname "$0")"; pwd)"
  find "$dot/$1" -type d -name "$2" -exec rm -rf '{}' + 
}
   
   
## apt-get aliases
alias ai='apt-get install'
alias ar='apt-get remove'
alias aar='apt-get autoremove'
alias au='apt-get update'
alias aup='apt-get upgrade'
alias nstop='nginx -s stop'
