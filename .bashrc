alias paste='termux-clipboard-get'
alias copy='termux-clipboard-set'
alias gitd='gitdirdown -u'
alias tc='termux-chroot'
alias format='prettier --write'
alias formatc='prettier --check'
alias home='./~'
alias playlist='youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0  --external-downloader aria2c --external-downloader-args "-c -j 5 -x 5 -s 5 -k 1M"'
mkcd ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
## ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lh='ls -alFh'

## apt-get aliases
alias ai='apt-get install'
alias ar='apt-get remove'
alias aar='apt-get autoremove'
alias au='apt-get update'
alias aup='apt-get upgrade'
alias nstop='nginx -s stop'

bind -r '\C-s'
stty -ixon

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=$HOME/npm/bin:$PATH
